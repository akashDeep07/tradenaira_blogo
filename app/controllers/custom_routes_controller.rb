class CustomRoutesController < ApplicationController

	# 1
	# //tradenaira.com/
	def root
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 2
	# //tradenaira.com/signin
	def signin
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 3
	# //tradenaira.com/signup
	def signup
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 4
	# //tradenaira.com/markets/usdngn
	def markets_usdngn
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 5
	# //tradenaira.com/money/quick_exchange
	def money_quick_exchange
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 6
	# //tradenaira.com/pages/faq
	def pages_faq
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 7
	# //tradenaira.com/money/escrow
	def money_escrow
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 8
	# //tradenaira.com/professional/services
	def professional_services
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 9
	# //tradenaira.com/pages/about
	def pages_about
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 10
	# //tradenaira.com/news
	def news
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 11
	# //tradenaira.com/pages/send-money-to-nigeria
	def pages_send_money_to_nigeria
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 12
	# //tradenaira.com/markets/eurngn
	def markets_eurngn
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 13
	# //tradenaira.com/pages/fee
	def pages_fee
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 14
	# //tradenaira.com/professional/services/provide-iso-certification-consultancy
	def professional_services_provide_iso_certification_consultancy
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 15
	# //tradenaira.com/markets/gbpngn
	def markets_gbpngn
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 16
	# //tradenaira.com/professional/categories/legal-administrative-services
	def professional_categories_legal_administrative_services
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 17
	# //tradenaira.com/lists/top-10-richest-people-in-ghana-2019
	def lists_top_10_richest_people_in_ghana_2019
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 18
	# //tradenaira.com/professional/categories/20
	def professional_categories_20
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 19
	# //tradenaira.com/lists/top-10-most-influential-people-in-nigeria-2019
	def lists_top_10_most_influential_people_in_nigeria_2019
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 20
	# //tradenaira.com/professional/categories/licenses-permits
	def professional_categories_licenses_permits
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 21
	# //tradenaira.com/professional/categories/freight-forwarding
	def professional_categories_freight_forwarding
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 22
	# //tradenaira.com/markets/ghsngn
	def markets_ghsngn
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 23
	# //tradenaira.com/professional/services/write-a-book-that-sells-and-also-amplifies-your-personal-and-corporate-brand
	def professional_services_write_a_book_that_sells_and_also_amplifies_your_personal_and_corporate_brand
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 24
	# //tradenaira.com/markets/btcngn
	def markets_btcngn
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 25
	# //tradenaira.com/professional/services/manage-your-project
	def professional_services_manage_your_project
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 26
	# //tradenaira.com/professional/services/post-your-business-on-the-top-nigerian-business-directory
	def professional_services_post_your_business_on_the_top_nigerian_business_directory
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 27
	# //tradenaira.com/pages/request-money
	def pages_request_money
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 28
	# //tradenaira.com/lists/top-10-richest-men-in-nigeria-2019
	def lists_top_10_richest_men_in_nigeria_2019
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 29
	# //tradenaira.com/markets/gbpzar
	def markets_gbpzar
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 30
	# //tradenaira.com/lists/large-american-companies-that-use-prison-labour
	def lists_large_american_companies_that_use_prison_labour
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 31
	# //tradenaira.com/markets/zarghs
	def markets_zarghs
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 32
	# //tradenaira.com/markets/usdzar
	def markets_usdzar
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 33
	# //tradenaira.com/professional/categories/clearing-agents
	def professional_categories_clearing_agents
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 34
	# //tradenaira.com/markets/btczar
	def markets_btczar
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 35
	# //tradenaira.com/markets/usdkes
	def markets_usdkes
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 36
	# //tradenaira.com/markets/btcghs
	def markets_btcghs
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 37
	# //tradenaira.com/markets/zarngn
	def markets_zarngn
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 38
	# //tradenaira.com/markets/usdghs
	def markets_usdghs
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 39
	# //tradenaira.com/markets/gbpghs
	def markets_gbpghs
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 40
	# //tradenaira.com/markets/gbpkes
	def markets_gbpkes
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 41
	# //tradenaira.com/markets/zarkes
	def markets_zarkes
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 42
	# //tradenaira.com/markets/eurkes
	def markets_eurkes
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 43
	# //tradenaira.com/news/bank-atm-rates
	def news_bank_atm_rates
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 44
	# //tradenaira.com/money/commission
	def money_commission
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	# 45
	# //tradenaira.com/advertise
	def advertise
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

end