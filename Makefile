OTOGE_SONG=''

otoge:
	@bundle exec burn & afplay ${OTOGE_SONG} &
play:
	@telnet localhost 60000
	@make stop
stop:
	@pkill -f 'burn'
	@pkill -f 'afplay'

