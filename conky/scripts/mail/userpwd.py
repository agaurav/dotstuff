#!/usr/bin/python

def get_mail_password():
	encoded_pwd = 'bHhiMm1zbkBhcmNoMTMk'
	return encoded_pwd.decode('base64')

def get_mail_user():
	encoded_usr = 'YXNoaXNoQGFyY2hzYWJlci5jb20k'
	return encoded_usr.decode('base64')

def get_user_name():
	encoded_name = 'YXNoaXNoCg=='
	return encoded_name.decode('base64')
