require 'spec_helper'

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

describe ParticipationsController do

  # This should return the minimal set of attributes required to create a valid
  # Participation. As you add validations to Participation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParticipationsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all participations as @participations" do
      participation = Participation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:participations).should eq([participation])
    end
  end

  describe "GET show" do
    it "assigns the requested participation as @participation" do
      participation = Participation.create! valid_attributes
      get :show, {:id => participation.to_param}, valid_session
      assigns(:participation).should eq(participation)
    end
  end

  describe "GET new" do
    it "assigns a new participation as @participation" do
      get :new, {}, valid_session
      assigns(:participation).should be_a_new(Participation)
    end
  end

  describe "GET edit" do
    it "assigns the requested participation as @participation" do
      participation = Participation.create! valid_attributes
      get :edit, {:id => participation.to_param}, valid_session
      assigns(:participation).should eq(participation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Participation" do
        expect {
          post :create, {:participation => valid_attributes}, valid_session
        }.to change(Participation, :count).by(1)
      end

      it "assigns a newly created participation as @participation" do
        post :create, {:participation => valid_attributes}, valid_session
        assigns(:participation).should be_a(Participation)
        assigns(:participation).should be_persisted
      end

      it "redirects to the created participation" do
        post :create, {:participation => valid_attributes}, valid_session
        response.should redirect_to(Participation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved participation as @participation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Participation.any_instance.stub(:save).and_return(false)
        post :create, {:participation => {}}, valid_session
        assigns(:participation).should be_a_new(Participation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Participation.any_instance.stub(:save).and_return(false)
        post :create, {:participation => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested participation" do
        participation = Participation.create! valid_attributes
        # Assuming there are no other participations in the database, this
        # specifies that the Participation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Participation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => participation.to_param, :participation => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested participation as @participation" do
        participation = Participation.create! valid_attributes
        put :update, {:id => participation.to_param, :participation => valid_attributes}, valid_session
        assigns(:participation).should eq(participation)
      end

      it "redirects to the participation" do
        participation = Participation.create! valid_attributes
        put :update, {:id => participation.to_param, :participation => valid_attributes}, valid_session
        response.should redirect_to(participation)
      end
    end

    describe "with invalid params" do
      it "assigns the participation as @participation" do
        participation = Participation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Participation.any_instance.stub(:save).and_return(false)
        put :update, {:id => participation.to_param, :participation => {}}, valid_session
        assigns(:participation).should eq(participation)
      end

      it "re-renders the 'edit' template" do
        participation = Participation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Participation.any_instance.stub(:save).and_return(false)
        put :update, {:id => participation.to_param, :participation => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested participation" do
      participation = Participation.create! valid_attributes
      expect {
        delete :destroy, {:id => participation.to_param}, valid_session
      }.to change(Participation, :count).by(-1)
    end

    it "redirects to the participations list" do
      participation = Participation.create! valid_attributes
      delete :destroy, {:id => participation.to_param}, valid_session
      response.should redirect_to(participations_url)
    end
  end

end
