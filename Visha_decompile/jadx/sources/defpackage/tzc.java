package defpackage;

import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.nio.charset.StandardCharsets;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public class tzc extends ig5 {
    public JsonObject h;

    public tzc(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    public static boolean I(JsonObject jsonObject) {
        return jsonObject.has("richItemRenderer");
    }

    public static JsonObject J(JsonObject jsonObject) {
        return jsonObject.getObject("richItemRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("videoRenderer");
    }

    public static void K(qy9 qy9Var, ona onaVar, JsonObject jsonObject) {
        qy9Var.d(new bzc(jsonObject, onaVar));
    }

    public static Stream L(JsonObject jsonObject) {
        return jsonObject.getObject("itemSectionRenderer").getArray("contents").stream();
    }

    public static JsonObject M(JsonObject jsonObject) {
        return jsonObject.getObject("shelfRenderer");
    }

    public static boolean N(JsonObject jsonObject) {
        return !jsonObject.has("title");
    }

    public static Stream O(JsonObject jsonObject) {
        return jsonObject.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("expandedShelfContentsRenderer").getArray("items").stream();
    }

    public static JsonObject P(JsonObject jsonObject) {
        return jsonObject.getObject("videoRenderer");
    }

    public static void Q(qy9 qy9Var, ona onaVar, JsonObject jsonObject) {
        qy9Var.d(new bzc(jsonObject, onaVar));
    }

    public static boolean R(JsonObject jsonObject) {
        return jsonObject.getBoolean("selected");
    }

    public static boolean S(JsonObject jsonObject) {
        return jsonObject.has(ICode.CALL.CALL_KEY_CONTENT);
    }

    public static ParsingException T() {
        return new ParsingException("Could not get \"Now\" or \"Videos\" trending tab");
    }

    public static JsonObject U(JsonObject jsonObject) {
        return jsonObject.getObject("tabRenderer");
    }

    public final JsonObject H() {
        return (JsonObject) this.h.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return tzc.U((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return tzc.R((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return tzc.S((JsonObject) obj);
            }
        }).findFirst().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return tzc.T();
            }
        });
    }

    @Override
    public String k() throws ParsingException {
        String strK;
        JsonObject object = this.h.getObject("header");
        if (object.has("feedTabbedHeaderRenderer")) {
            strK = cxc.K(object.getObject("feedTabbedHeaderRenderer"), "title");
        } else if (object.has("c4TabbedHeaderRenderer")) {
            strK = cxc.K(object.getObject("c4TabbedHeaderRenderer"), "title");
        } else {
            strK = object.has("pageHeaderRenderer") ? cxc.K(object.getObject("pageHeaderRenderer"), "pageTitle") : null;
        }
        if (a.m(strK)) {
            throw new ParsingException("Could not get Trending name");
        }
        return strK;
    }

    @Override
    public void q(c23 c23Var) {
        this.h = cxc.I("browse", tc5.b(cxc.y0(h(), g()).h("browseId", "FEtrending").h("params", "4gIOGgxtb3N0X3BvcHVsYXI%3D").b()).getBytes(StandardCharsets.UTF_8), h());
    }

    @Override
    public tl5.a r() {
        final qy9 qy9Var = new qy9(n());
        final ona onaVarO = o();
        JsonObject jsonObjectH = H();
        JsonObject object = jsonObjectH.getObject(ICode.CALL.CALL_KEY_CONTENT);
        boolean zEquals = jsonObjectH.getObject("endpoint").getObject("browseEndpoint").getString("params", "").equals("4gIOGgxtb3N0X3BvcHVsYXI%3D");
        if (object.has("richGridRenderer")) {
            object.getObject("richGridRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return tzc.I((JsonObject) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return tzc.J((JsonObject) obj);
                }
            }).forEachOrdered(new Consumer(onaVarO) {
                public final ona c;

                @Override
                public final void accept(Object obj) {
                    tzc.K(this.b, this.c, (JsonObject) obj);
                }
            });
        } else if (object.has("sectionListRenderer")) {
            Stream map = object.getObject("sectionListRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return tzc.L((JsonObject) obj);
                }
            }).filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return tzc.M((JsonObject) obj);
                }
            });
            (zEquals ? fzc.a(map.findFirst()) : map.filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return tzc.N((JsonObject) obj);
                }
            })).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return tzc.O((JsonObject) obj);
                }
            }).filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return tzc.P((JsonObject) obj);
                }
            }).forEachOrdered(new Consumer(onaVarO) {
                public final ona c;

                @Override
                public final void accept(Object obj) {
                    tzc.Q(this.b, this.c, (JsonObject) obj);
                }
            });
        }
        return new tl5.a(qy9Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return tl5.a.a();
    }
}
