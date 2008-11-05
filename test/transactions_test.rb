require File.dirname(__FILE__) + "/test_helper"

class TransactionsTest < Test::Unit::TestCase
  context "A set of transations" do
    setup do
      @transactions = QuickenParser::Transactions.new
    end

    context "adding an object" do
      setup do
        @object = Object.new
        @transactions << @object
      end

      should "have that object in it's list" do
        assert @transactions.all? {|o| o == @object}
      end
    end

    should_be Enumerable
    should_respond_to :<<
    should_respond_to :each

    %w(timespan).each do |attr|
      should_respond_to attr
      should_respond_to "#{attr}="
    end
  end
end
