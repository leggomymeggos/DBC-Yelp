require 'rails_helper'

RSpec.describe PlacesController do
	let(:valid_params) {{name: "Blackwood", 
						category_id: 2, 
						user_id: 3, 
						address: "307 Lake Street",
						phone: "(312) 621-9663",
						website: "http://blackwoodbbq.com",
						description: "9.5/10 it's okay."}}
	let(:blackwood) {Place.new(valid_params)}
	let(:update_params) {{name: "Blackerwood", 
						category_id: 2, 
						user_id: 3, 
						address: "307 Lake Street",
						phone: "(312) 621-9663",
						website: "http://blackwoodbbq.com",
						description: "9.5/10 it's okay."}}
	let(:invalid_params) {{name: "Blackwood", 
						  category_id: 2, 
						  user_id: 3, 
						  address: "",
						  phone: "(312) 621-9663",
						  website: "http://blackwoodbbq.com",
						  description: "9.5/10 it's okay."}}


	describe "PUT #update" do

		before(:each) do 
			blackwood.save
		end

		it "should update the place in the DB" do
			put "update", place: update_params, id: blackwood.id
			expect(assigns(:place).name).to eq("Blackerwood")
		end

		it "NOT-MVP should return JSON with the new params if an AJAX call is made" do
			pending
		end

		it "should redirect to the place's page if JS is disabled" do
			put "update", place: update_params, id: blackwood.id
			expect(subject).to redirect_to(place_path(blackwood))
		end

	end

	describe "GET #edit" do

		before(:each) do 
			blackwood.save
		end

		it "should redirect to an edit form" do
			blackwood.save
			get :edit, id: blackwood.id
			expect(subject).to redirect_to(edit_place_path(blackwood))
		end

	end

	describe "GET #new" do

		it "should render a form to create a new place" do
			get :new
			expect(subject).to render_template(:"places/form")
		end
	end

	describe "POST #create" do

		it "should save a place to the DB" do
			pending
		end

		it "should return some JSON on an AJAX call" do
			pending
		end

		it "should re-render the form with some error(s) if the params aren't valid" do
		end

		it "should return an error in JSON if the AJAX post has invalid params" do
			pending
		end

	end



end
