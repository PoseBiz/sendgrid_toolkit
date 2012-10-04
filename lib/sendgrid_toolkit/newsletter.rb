module SendgridToolkit

  class Newsletter < AbstractSendgridClient
    def list(options = {})
      api_req(:get, 'newsletter/list').to_a
    end

    class List < AbstractSendgridClient
      def get(options={})
        api_req(:get, 'newsletter/lists/get',options).to_a
      end

      def add(options={})
        api_req(:post, 'newsletter/lists/add',options)
      end

      def edit(options={})
        api_req(:post, 'newsletter/lists/edit',options)
      end

      def delete(options={})
        api_req(:post, 'newsletter/lists/delete',options)
      end
    end
  end

end
