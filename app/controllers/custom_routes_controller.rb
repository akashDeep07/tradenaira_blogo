class CustomRoutesController < ApplicationController

	# 2
	# //tradenaira.com/signin
	def signin
		@post = Blogo::Post.published.find_by_id 2
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 3
	# //tradenaira.com/signup
	def signup
		@post = Blogo::Post.published.find_by_id 3
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 4
	# //tradenaira.com/markets/usdngn
	def markets_usdngn
		@post = Blogo::Post.published.find_by_id 4
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 5
	# //tradenaira.com/money/quick_exchange
	def money_quick_exchange
		@post = Blogo::Post.published.find_by_id 5
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 6
	# //tradenaira.com/pages/faq
	def pages_faq
		@post = Blogo::Post.published.find_by_id 6
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 7
	# //tradenaira.com/money/escrow
	def money_escrow
		@post = Blogo::Post.published.find_by_id 7
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 8
	# //tradenaira.com/professional/services
	def professional_services
		@post = Blogo::Post.published.find_by_id 8
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 9
	# //tradenaira.com/pages/about
	def pages_about
		@post = Blogo::Post.published.find_by_id 9
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 10
	# //tradenaira.com/news
	def news
		@post = Blogo::Post.published.find_by_id 10
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 11
	# //tradenaira.com/pages/send-money-to-nigeria
	def pages_send_money_to_nigeria
		@post = Blogo::Post.published.find_by_id 11
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 12
	# //tradenaira.com/markets/eurngn
	def markets_eurngn
		@post = Blogo::Post.published.find_by_id 12
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 13
	# //tradenaira.com/pages/fee
	def pages_fee
		@post = Blogo::Post.published.find_by_id 13
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 14
	# //tradenaira.com/professional/services/provide-iso-certification-consultancy
	def professional_services_provide_iso_certification_consultancy
		@post = Blogo::Post.published.find_by_id 14
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 15
	# //tradenaira.com/markets/gbpngn
	def markets_gbpngn
		@post = Blogo::Post.published.find_by_id 15
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 16
	# //tradenaira.com/professional/categories/legal-administrative-services
	def professional_categories_legal_administrative_services
		@post = Blogo::Post.published.find_by_id 16
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 17
	# //tradenaira.com/lists/top-10-richest-people-in-ghana-2019
	def lists_top_10_richest_people_in_ghana_2019
		@post = Blogo::Post.published.find_by_id 17
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 18
	# //tradenaira.com/professional/categories/20
	def professional_categories_20
		@post = Blogo::Post.published.find_by_id 19
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 19
	# //tradenaira.com/lists/top-10-most-influential-people-in-nigeria-2019
	def lists_top_10_most_influential_people_in_nigeria_2019
		@post = Blogo::Post.published.find_by_id 20
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 20
	# //tradenaira.com/professional/categories/licenses-permits
	def professional_categories_licenses_permits
		@post = Blogo::Post.published.find_by_id 21
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 22
	# //tradenaira.com/markets/ghsngn
	def markets_ghsngn
		@post = Blogo::Post.published.find_by_id 24
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 23
	# //tradenaira.com/professional/services/write-a-book-that-sells-and-also-amplifies-your-personal-and-corporate-brand
	def professional_services_write_a_book_that_sells_and_also_amplifies_your_personal_and_corporate_brand
		@post = Blogo::Post.published.find_by_id 25
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 24
	# //tradenaira.com/markets/btcngn
	def markets_btcngn
		@post = Blogo::Post.published.find_by_id 26
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 25
	# //tradenaira.com/professional/services/manage-your-project
	def professional_services_manage_your_project
		@post = Blogo::Post.published.find_by_id 28
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 26
	# //tradenaira.com/professional/services/post-your-business-on-the-top-nigerian-business-directory
	def professional_services_post_your_business_on_the_top_nigerian_business_directory
		@post = Blogo::Post.published.find_by_id 29
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 27
	# //tradenaira.com/pages/request-money
	def pages_request_money
		@post = Blogo::Post.published.find_by_id 30
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 28
	# //tradenaira.com/lists/top-10-richest-men-in-nigeria-2019
	def lists_top_10_richest_men_in_nigeria_2019
		@post = Blogo::Post.published.find_by_id 31
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 29
	# //tradenaira.com/markets/gbpzar
	def markets_gbpzar
		@post = Blogo::Post.published.find_by_id 32
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 30
	# //tradenaira.com/lists/large-american-companies-that-use-prison-labour
	def lists_large_american_companies_that_use_prison_labour
		@post = Blogo::Post.published.find_by_id 33
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 31
	# //tradenaira.com/markets/zarghs
	def markets_zarghs
		@post = Blogo::Post.published.find_by_id 34
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 32
	# //tradenaira.com/markets/usdzar
	def markets_usdzar
		@post = Blogo::Post.published.find_by_id 35
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 33
	# //tradenaira.com/professional/categories/clearing-agents
	def professional_categories_clearing_agents
		@post = Blogo::Post.published.find_by_id 36
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 34
	# //tradenaira.com/markets/btczar
	def markets_btczar
		@post = Blogo::Post.published.find_by_id 37
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 35
	# //tradenaira.com/markets/usdkes
	def markets_usdkes
		@post = Blogo::Post.published.find_by_id 38
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 36
	# //tradenaira.com/markets/btcghs
	def markets_btcghs
		@post = Blogo::Post.published.find_by_id 40
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 37
	# //tradenaira.com/markets/zarngn
	def markets_zarngn
		@post = Blogo::Post.published.find_by_id 42
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 38
	# //tradenaira.com/markets/usdghs
	def markets_usdghs
		@post = Blogo::Post.published.find_by_id 43
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 39
	# //tradenaira.com/markets/gbpghs
	def markets_gbpghs
		@post = Blogo::Post.published.find_by_id 45
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 40
	# //tradenaira.com/markets/gbpkes
	def markets_gbpkes
		@post = Blogo::Post.published.find_by_id 46
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 41
	# //tradenaira.com/markets/zarkes
	def markets_zarkes
		@post = Blogo::Post.published.find_by_id 47
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	# 42
	# //tradenaira.com/markets/eurkes
	def markets_eurkes
		@post = Blogo::Post.published.find_by_id 48
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		set_meta
	end

	private

	def set_meta
		@meta_description = @post.meta_description if @post.meta_description.present?
		@meta_title = @post.meta_title.present? ? @post.meta_title : @post.title
	end

end