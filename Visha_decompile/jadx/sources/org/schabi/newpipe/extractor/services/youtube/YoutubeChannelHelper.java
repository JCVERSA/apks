package org.schabi.newpipe.extractor.services.youtube;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.livecaption.constant.ICode;
import defpackage.btc;
import defpackage.cxc;
import defpackage.tc5;
import defpackage.w50;
import defpackage.x50;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper;

public abstract class YoutubeChannelHelper {

    public static final class ChannelHeader implements Serializable {
        public final HeaderType headerType;
        public final JsonObject json;

        public enum HeaderType {
            C4_TABBED,
            INTERACTIVE_TABBED,
            CAROUSEL,
            PAGE
        }

        public ChannelHeader(JsonObject jsonObject, HeaderType headerType) {
            this.json = jsonObject;
            this.headerType = headerType;
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ChannelHeader.HeaderType.values().length];
            a = iArr;
            try {
                iArr[ChannelHeader.HeaderType.CAROUSEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ChannelHeader.HeaderType.PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ChannelHeader.HeaderType.INTERACTIVE_TABBED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ChannelHeader.HeaderType.C4_TABBED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class b {
        public final JsonObject a;
        public final String b;

        public b(JsonObject jsonObject, String str) {
            this.a = jsonObject;
            this.b = str;
        }
    }

    public static ChannelHeader A(JsonObject jsonObject) {
        return new ChannelHeader(jsonObject, ChannelHeader.HeaderType.CAROUSEL);
    }

    public static ChannelHeader B(JsonObject jsonObject) {
        return new ChannelHeader(jsonObject, ChannelHeader.HeaderType.PAGE);
    }

    public static ChannelHeader C(JsonObject jsonObject) {
        return new ChannelHeader(jsonObject, ChannelHeader.HeaderType.INTERACTIVE_TABBED);
    }

    public static boolean D(JsonObject jsonObject) {
        return jsonObject.has("topicChannelDetailsRenderer");
    }

    public static String E(ChannelHeader channelHeader) {
        JsonObject jsonObject = channelHeader.json;
        int i = a.a[channelHeader.headerType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return jsonObject.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("pageHeaderViewModel").getObject("title").getObject("dynamicTextViewModel").getObject("text").getString(ICode.CALL.CALL_KEY_CONTENT, jsonObject.getString("pageTitle"));
            }
            if (i != 3) {
                return jsonObject.getString("title");
            }
        }
        return cxc.L(jsonObject.getObject("title"));
    }

    public static Optional F(JsonObject jsonObject) {
        return Optional.ofNullable(jsonObject.getObject("microformat").getObject("microformatDataRenderer").getString("title"));
    }

    public static ParsingException G() {
        return new ParsingException("Could not get channel name");
    }

    public static String H(String str) throws ExtractionException {
        String[] strArrSplit = str.split("/");
        if (strArrSplit[0].startsWith("UC")) {
            return strArrSplit[0];
        }
        if (!strArrSplit[0].equals("channel")) {
            Localization localization = Localization.DEFAULT;
            JsonObject jsonObjectI = cxc.I("navigation/resolve_url", tc5.b(cxc.y0(localization, ContentCountry.DEFAULT).h("url", "https://www.youtube.com/" + str).b()).getBytes(StandardCharsets.UTF_8), localization);
            n(jsonObjectI);
            JsonObject object = jsonObjectI.getObject("endpoint");
            String string = object.getObject("commandMetadata").getObject("webCommandMetadata").getString("webPageType", "");
            String string2 = object.getObject("browseEndpoint").getString("browseId", "");
            if (string.equalsIgnoreCase("WEB_PAGE_TYPE_BROWSE") || (string.equalsIgnoreCase("WEB_PAGE_TYPE_CHANNEL") && !string2.isEmpty())) {
                if (string2.startsWith("UC")) {
                    return string2;
                }
                throw new ExtractionException("Redirected id is not pointing to a channel");
            }
        }
        return strArrSplit[1];
    }

    public static void n(JsonObject jsonObject) throws ContentNotAvailableException {
        if (org.schabi.newpipe.extractor.utils.a.o(jsonObject.getObject("error"))) {
            return;
        }
        JsonObject object = jsonObject.getObject("error");
        if (object.getInt(TrackingKey.CODE) == 404) {
            throw new ContentNotAvailableException("This channel doesn't exist.");
        }
        throw new ContentNotAvailableException("Got error:\"" + object.getString("status") + "\": " + object.getString("message"));
    }

    public static JsonObject o(JsonObject jsonObject) {
        return (JsonObject) jsonObject.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return YoutubeChannelHelper.u((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return YoutubeChannelHelper.v((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return YoutubeChannelHelper.w((JsonObject) obj);
            }
        }).findFirst().orElse(null);
    }

    public static ChannelHeader p(JsonObject jsonObject) {
        JsonObject object = jsonObject.getObject("header");
        if (object.has("c4TabbedHeaderRenderer")) {
            return (ChannelHeader) Optional.of(object.getObject("c4TabbedHeaderRenderer")).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return YoutubeChannelHelper.x((JsonObject) obj);
                }
            }).orElse(null);
        }
        if (object.has("carouselHeaderRenderer")) {
            return (ChannelHeader) object.getObject("carouselHeaderRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return YoutubeChannelHelper.y((JsonObject) obj);
                }
            }).findFirst().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return YoutubeChannelHelper.z((JsonObject) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return YoutubeChannelHelper.A((JsonObject) obj);
                }
            }).orElse(null);
        }
        if (object.has("pageHeaderRenderer")) {
            return (ChannelHeader) Optional.of(object.getObject("pageHeaderRenderer")).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return YoutubeChannelHelper.B((JsonObject) obj);
                }
            }).orElse(null);
        }
        if (object.has("interactiveTabbedHeaderRenderer")) {
            return (ChannelHeader) Optional.of(object.getObject("interactiveTabbedHeaderRenderer")).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return YoutubeChannelHelper.C((JsonObject) obj);
                }
            }).orElse(null);
        }
        return null;
    }

    public static String q(ChannelHeader channelHeader, JsonObject jsonObject, String str) throws ParsingException {
        if (channelHeader != null) {
            int i = a.a[channelHeader.headerType.ordinal()];
            if (i == 1) {
                String string = ((JsonObject) channelHeader.json.getObject("header").getObject("carouselHeaderRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return YoutubeChannelHelper.D((JsonObject) obj);
                    }
                }).findFirst().orElse(new JsonObject())).getObject("topicChannelDetailsRenderer").getObject("navigationEndpoint").getObject("browseEndpoint").getString("browseId");
                if (!org.schabi.newpipe.extractor.utils.a.m(string)) {
                    return string;
                }
            } else if (i == 4) {
                String string2 = channelHeader.json.getObject("header").getObject("c4TabbedHeaderRenderer").getString("channelId", "");
                if (!org.schabi.newpipe.extractor.utils.a.m(string2)) {
                    return string2;
                }
                String string3 = channelHeader.json.getObject("navigationEndpoint").getObject("browseEndpoint").getString("browseId");
                if (!org.schabi.newpipe.extractor.utils.a.m(string3)) {
                    return string3;
                }
            }
        }
        String string4 = jsonObject.getObject(TtmlNode.TAG_METADATA).getObject("channelMetadataRenderer").getString("externalChannelId");
        if (!org.schabi.newpipe.extractor.utils.a.m(string4)) {
            return string4;
        }
        if (org.schabi.newpipe.extractor.utils.a.m(str)) {
            throw new ParsingException("Could not get channel ID");
        }
        return str;
    }

    public static String r(ChannelHeader channelHeader, JsonObject jsonObject, final JsonObject jsonObject2) throws ParsingException {
        if (jsonObject == null) {
            String string = jsonObject2.getObject(TtmlNode.TAG_METADATA).getObject("channelMetadataRenderer").getString("title");
            return !org.schabi.newpipe.extractor.utils.a.m(string) ? string : (String) btc.a(Optional.ofNullable(channelHeader).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return YoutubeChannelHelper.E((YoutubeChannelHelper.ChannelHeader) obj);
                }
            }), new Supplier() {
                @Override
                public final Object get() {
                    return YoutubeChannelHelper.F(jsonObject2);
                }
            }).orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    return YoutubeChannelHelper.G();
                }
            });
        }
        String string2 = jsonObject.getString("channelTitle");
        if (org.schabi.newpipe.extractor.utils.a.m(string2)) {
            throw new ParsingException("Could not get channel name");
        }
        return string2;
    }

    public static b s(String str, String str2, Localization localization, ContentCountry contentCountry) throws ExtractionException {
        JsonObject jsonObjectI;
        int i = 0;
        while (true) {
            if (i >= 3) {
                jsonObjectI = null;
                break;
            }
            jsonObjectI = cxc.I("browse", tc5.b(cxc.y0(localization, contentCountry).h("browseId", str).h("params", str2).b()).getBytes(StandardCharsets.UTF_8), localization);
            n(jsonObjectI);
            JsonObject object = jsonObjectI.getArray("onResponseReceivedActions").getObject(0).getObject("navigateAction").getObject("endpoint");
            String string = object.getObject("commandMetadata").getObject("webCommandMetadata").getString("webPageType", "");
            String string2 = object.getObject("browseEndpoint").getString("browseId", "");
            if (!string.equalsIgnoreCase("WEB_PAGE_TYPE_BROWSE") && (!string.equalsIgnoreCase("WEB_PAGE_TYPE_CHANNEL") || string2.isEmpty())) {
                break;
            }
            if (!string2.startsWith("UC")) {
                throw new ExtractionException("Redirected id is not pointing to a channel");
            }
            i++;
            str = string2;
        }
        if (jsonObjectI == null) {
            throw new ExtractionException("Got no channel response after 3 redirects");
        }
        cxc.l(jsonObjectI);
        return new b(jsonObjectI, str);
    }

    public static boolean t(ChannelHeader channelHeader) {
        int i = a.a[channelHeader.headerType.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i != 3 ? cxc.d0(channelHeader.json.getArray("badges")) : channelHeader.json.has("autoGenerated");
        }
        JsonObject object = channelHeader.json.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("pageHeaderViewModel");
        boolean zW = cxc.W(object.getObject("title").getObject("dynamicTextViewModel").getObject("text").getArray("attachmentRuns"));
        if (zW || !object.getObject("image").has("contentPreviewImageViewModel")) {
            return zW;
        }
        return true;
    }

    public static Stream u(JsonObject jsonObject) {
        return jsonObject.getObject("tabRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("sectionListRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class));
    }

    public static boolean v(JsonObject jsonObject) {
        return jsonObject.has("channelAgeGateRenderer");
    }

    public static JsonObject w(JsonObject jsonObject) {
        return jsonObject.getObject("channelAgeGateRenderer");
    }

    public static ChannelHeader x(JsonObject jsonObject) {
        return new ChannelHeader(jsonObject, ChannelHeader.HeaderType.C4_TABBED);
    }

    public static boolean y(JsonObject jsonObject) {
        return jsonObject.has("topicChannelDetailsRenderer");
    }

    public static JsonObject z(JsonObject jsonObject) {
        return jsonObject.getObject("topicChannelDetailsRenderer");
    }
}
