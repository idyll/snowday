defmodule SnowdayWeb.PageController do
  use SnowdayWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def test_one(conn, params) do
    conn =
    Plug.Conn.inform(conn, 103, [{"link", "</css/app.css>; rel=preload; as=style"}])
  #  |> Plug.Conn.inform(103, [{"link", "</js/app.js>; rel=preload; as=script"}])

    conn = Plug.Conn.put_resp_header(conn, "link", "</css/app.css>; rel=preload; as=style")

    render conn, "test_one.html", %{}
  end
  def test_two(conn, params) do
    render conn, "test_two.html", %{}
  end
  def test_three(conn, params) do
    render conn, "test_three.html", %{}
  end
  def test_four(conn, params) do
    render conn, "test_four.html", %{}
  end
  def test_five(conn, params) do
    fill = """
    <p>
    Ne per causae definitiones, ut veniam vocent cum. Eu torquatos expetendis eam. Volumus delicata neglegentur ne eam. Ut mel ubique facilis fastidii, cum no temporibus adversarium. Mucius scribentur intellegebat quo eu, id luptatum inciderint scribentur nam. Duis propriae in eam, an cum forensibus temporibus. Magna animal necessitatibus et sed, erroribus evertitur an est.
    </p>
    <p>
    Posse ipsum sapientem at pri, eam ut option vocibus. Cu nullam corpora ius, ne stet splendide est. Meliore ponderum nec ea, quo ea suscipit phaedrum. Per wisi elaboraret ut.
    </p>
    <p>
    Agam dicta sensibus quo an, vel ipsum veniam graeco cu. An viris aeterno dolorem est, novum diceret gubergren cum ad. Usu menandri patrioque scripserit te, usu an fugit molestiae. Qui tollit appellantur ut, pri solet aperiam facilis te. Integre electram quo et, persequeris consectetuer ne nam.
    </p>
    <p>
    Ut eam dicunt voluptua principes, dicit perfecto mediocrem ad eam. Te suas integre quo. Nec posse atqui omittantur no, ad sea sumo veritus mandamus. Qui facer viris latine et. Cu tation altera quo, illud oporteat est ne.
    </p>
    <p>
    His in quod noluisse vivendum. Modus etiam alterum et pri. Id quo dolorem indoctum. Elitr signiferumque at cum. Id habeo graeci consetetur qui. Nam ut sumo epicuri.
    </p>
    <p>
    Assentior voluptatum ex eum. Ea est nemore democritum, ei odio iriure accumsan nam, no veniam voluptua perpetua vim. Vim et volumus denique, ad verear argumentum vim. At idque velit cum, quis illum ponderum eos te. Integre labitur disputando et pri. Te atqui legere adipisci has, no eum erant verear appellantur.
    </p>
    <p>
    Quod audire abhorreant in est, pro novum partiendo ei, et quot porro pericula cum. Quaestio interesset scribentur cu nec, usu ei tritani eligendi adipiscing. Mea at antiopam dissentias constituam, an eam illud graece, probo habeo minim eam no. Sit aliquam interesset et.
    </p>
    <p>
    An purto tota equidem his, et nec aliquid splendide, has ut ridens deserunt. Has at omittam appellantur, ei lorem audire gubergren vis. Ei sumo erat comprehensam nam, eam an enim ceteros corpora. Mea ut eirmod eripuit ornatus ceteros.
    <p>
    """

    html conn, [[["" | ""] | ""] |
     fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill
    ]
  end
end
