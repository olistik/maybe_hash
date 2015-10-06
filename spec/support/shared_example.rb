RSpec.shared_examples "a chain traverser" do
  let(:maybe_hash_params) { MaybeHash.new(params) }

  context "the query is supposed to be legit" do
    let (:chain) { maybe_hash_params.foo.bar }

    context "appending .value to the method chain" do
      it "returns the expected value" do
        expect(chain.value).to eq(42)
      end
    end
  end

  context "the query is NOT supposed to be legit" do
    let (:chain) { maybe_hash_params.foo.spam.bar }

    context "appending .value to the method chain" do
      it "returns nil" do
        expect(chain.value).to eq(nil)
      end
    end
  end
end
