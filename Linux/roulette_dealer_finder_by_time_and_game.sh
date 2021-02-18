#!/bin/bash
cat $3_Dealer_schedule | grep $1 | grep $2 
cat $3_Dealer_schedule | grep -i $4
