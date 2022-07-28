class TransactionController < ApplicationController
  skip_before_action :verify_authenticity_token
  #params.require([:amount,:g_number,:id])
  def addTransaction
    #params.require([:amount,:g_number,:id])
    records = TransactionServices::GetRowsByGroup.new(params[:g_number]).call
    totalMembers = records.size
    amountPerHead = params[:amount] / totalMembers
    payingMember = params[:id]

    records.each do |w|
      if w.id != payingMember

        recordAlreadyPresent = TransactionServices::DoesPairExist.new(w.id,payingMember).call
        if (recordAlreadyPresent == true)
          TransactionServices::UpdateTransaction.new(w.id,payingMember,amountPerHead).call
        else
          TransactionServices::AddTransaction.new(w.id,payingMember,amountPerHead).call
        end

      end
    end
    render json: "done this time"
  end
  def getTransactions
    render :json => TransactionServices::ShowAllTransactions.new.showAllTransactions
  end
end
