#!/bin/bash
awk -F" " '{print $1, $2, $5, $6}' 0312_Dealer_schedule | grep -i $1 | grep $2 >> Dealers_working_during_losses



