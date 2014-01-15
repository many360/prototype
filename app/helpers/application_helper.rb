module ApplicationHelper
	def runkeeper
		require 'run_keeper'
		runkeeper = RunKeeper.new 'e0d64f73d35d459ead977b329e7445da', '3cfc290e6f344210b8b91a73c4ffd27f'
  end


end