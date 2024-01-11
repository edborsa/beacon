defmodule Beacon.Playground do
  @moduledoc """
  to start: iex -S mix dev
  You have routes:
  - http://localhost:4001/dy/
  - http://localhost:4001/dy/home
  """

  @doc """
  sm	640px	@media (min-width: 640px) { ... }
  md	768px	@media (min-width: 768px) { ... }
  lg	1024px	@media (min-width: 1024px) { ... }
  xl	1280px	@media (min-width: 1280px) { ... }
  2xl	1536px	@media (min-width: 1536px) { ... }
  """
  def page_content() do
    """
    <main class="font-body text-gray-900">
      <section aria-labelledby="region01">
        <div class="xl:pb-0 relative flex flex-col pb-5">
          <div class="xl:absolute xl:top-10 xl:left-0 xl:w-full 2xl:top-20 px-4">
            <div class="flex flex-col max-w-4xl mx-auto text-center">
              <div class="sm:absolute sm:top-10 sm:left-0 sm:w-full xl:static xl:top-auto xl:left-auto flex flex-col">
                <BeaconWeb.Components.embed url="https://www.youtube.com/watch?v=giYbq4HmfGA" />
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    """
  end

  @doc """
    This is the "/dev/home"
    Sample call:
    Beacon.Playground.update_dev_home_page()
  """
  def update_dev_home_page() do
    Beacon.Content.list_pages("dev")
    |> Enum.find(fn x -> x.title == "dev home" end)
    |> Beacon.Content.update_page(%{template: page_content()})
    |> elem(1)
    |> Beacon.Content.publish_page()

    :ok
  end

  # page =  (Beacon.Content.list_pages("dy") |> List.first() |> Beacon.Repo.preload([:event_handlers]))
  # {:ok, page_module, _ast} = Beacon.Loader.PageModuleLoader.load_page!(page)
  # Beacon.Lifecycle.Template.render_template(page, page_module, %{}, __ENV__).static
  # Beacon.Template.LoadMetadata.render(page_module, %{})
end
