#!/bin/bash
awk -F" " '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep -i $1 | grep -i $2 >> Dealers_working_during_losses



