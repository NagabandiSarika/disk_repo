sh ./disk.sh & PIDIOS=$!
sh ./mail.sh & PIDMIX=$!
wait $PIDIOS
wait $PIDMIX
