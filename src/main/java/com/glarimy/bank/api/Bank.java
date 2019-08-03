package com.glarimy.bank.api;

import java.util.List;

import com.glarimy.bank.domain.Transaction;
import com.glarimy.bank.exceptions.AccountNotFoundException;
import com.glarimy.bank.exceptions.BankException;
import com.glarimy.bank.exceptions.InsufficientBalanceException;

public interface Bank {
	public Transaction doTransaction(int number, Transaction tx)
			throws InsufficientBalanceException, AccountNotFoundException, BankException;

	public List<Transaction> getTransactions(int number) throws AccountNotFoundException;
}
