defmodule Beacon.Playgroud do
  # Beacon.Content.list_pages("dy") |> List.first() |> Beacon.Content.update_page(%{template: Beacon.Playgroud.page_content() }) |> elem(1) |> Beacon.Content.publish_page()

  def page_content() do
    """
    <main class="font-body text-gray-900">
      <section aria-labelledby="region01">
        <div class="xl:pb-0 relative flex flex-col pb-5">
          <div class="xl:absolute xl:top-10 xl:left-0 xl:w-full 2xl:top-20 px-4">
            <div class="flex flex-col max-w-4xl mx-auto text-center">
              <div class="sm:absolute sm:top-10 sm:left-0 sm:w-full xl:static xl:top-auto xl:left-auto flex flex-col">
                <BeaconWeb.Components.reading_time />
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    """
  end

  # page =  (Beacon.Content.list_pages("dy") |> List.first() |> Beacon.Repo.preload([:event_handlers]))
  # {:ok, page_module, _ast} = Beacon.Loader.PageModuleLoader.load_page!(page)
  # Beacon.Lifecycle.Template.render_template(page, page_module, %{}, __ENV__).static
  # Beacon.Template.LoadMetadata.render(page_module, %{})
end
