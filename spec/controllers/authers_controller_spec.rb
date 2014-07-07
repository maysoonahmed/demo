require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AuthersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Auther. As you add validations to Auther, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AuthersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all authers as @authers" do
      auther = Auther.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:authers)).to eq([auther])
    end
  end

  describe "GET show" do
    it "assigns the requested auther as @auther" do
      auther = Auther.create! valid_attributes
      get :show, {:id => auther.to_param}, valid_session
      expect(assigns(:auther)).to eq(auther)
    end
  end

  describe "GET new" do
    it "assigns a new auther as @auther" do
      get :new, {}, valid_session
      expect(assigns(:auther)).to be_a_new(Auther)
    end
  end

  describe "GET edit" do
    it "assigns the requested auther as @auther" do
      auther = Auther.create! valid_attributes
      get :edit, {:id => auther.to_param}, valid_session
      expect(assigns(:auther)).to eq(auther)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Auther" do
        expect {
          post :create, {:auther => valid_attributes}, valid_session
        }.to change(Auther, :count).by(1)
      end

      it "assigns a newly created auther as @auther" do
        post :create, {:auther => valid_attributes}, valid_session
        expect(assigns(:auther)).to be_a(Auther)
        expect(assigns(:auther)).to be_persisted
      end

      it "redirects to the created auther" do
        post :create, {:auther => valid_attributes}, valid_session
        expect(response).to redirect_to(Auther.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved auther as @auther" do
        post :create, {:auther => invalid_attributes}, valid_session
        expect(assigns(:auther)).to be_a_new(Auther)
      end

      it "re-renders the 'new' template" do
        post :create, {:auther => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested auther" do
        auther = Auther.create! valid_attributes
        put :update, {:id => auther.to_param, :auther => new_attributes}, valid_session
        auther.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested auther as @auther" do
        auther = Auther.create! valid_attributes
        put :update, {:id => auther.to_param, :auther => valid_attributes}, valid_session
        expect(assigns(:auther)).to eq(auther)
      end

      it "redirects to the auther" do
        auther = Auther.create! valid_attributes
        put :update, {:id => auther.to_param, :auther => valid_attributes}, valid_session
        expect(response).to redirect_to(auther)
      end
    end

    describe "with invalid params" do
      it "assigns the auther as @auther" do
        auther = Auther.create! valid_attributes
        put :update, {:id => auther.to_param, :auther => invalid_attributes}, valid_session
        expect(assigns(:auther)).to eq(auther)
      end

      it "re-renders the 'edit' template" do
        auther = Auther.create! valid_attributes
        put :update, {:id => auther.to_param, :auther => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested auther" do
      auther = Auther.create! valid_attributes
      expect {
        delete :destroy, {:id => auther.to_param}, valid_session
      }.to change(Auther, :count).by(-1)
    end

    it "redirects to the authers list" do
      auther = Auther.create! valid_attributes
      delete :destroy, {:id => auther.to_param}, valid_session
      expect(response).to redirect_to(authers_url)
    end
  end

end
