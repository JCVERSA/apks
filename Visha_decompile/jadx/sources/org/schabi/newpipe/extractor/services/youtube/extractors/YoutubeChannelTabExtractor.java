package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.livecaption.constant.ICode;
import defpackage.btc;
import defpackage.bzc;
import defpackage.c23;
import defpackage.cxc;
import defpackage.duc;
import defpackage.fu0;
import defpackage.hdb;
import defpackage.ksc;
import defpackage.ls6;
import defpackage.ona;
import defpackage.pxc;
import defpackage.rvc;
import defpackage.rxc;
import defpackage.tc5;
import defpackage.tl5;
import defpackage.w50;
import defpackage.wxc;
import defpackage.x50;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Optional;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor;

public class YoutubeChannelTabExtractor extends fu0 {
    public YoutubeChannelHelper.ChannelHeader g;
    public JsonObject h;
    public String i;

    public enum VerifiedStatus {
        VERIFIED,
        UNVERIFIED,
        UNKNOWN
    }

    public class a extends rxc {
        public final String b;
        public final String c;
        public final VerifiedStatus d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(JsonObject jsonObject, String str, String str2, VerifiedStatus verifiedStatus) {
            super(jsonObject);
            this.b = str;
            this.c = str2;
            this.d = verifiedStatus;
        }

        @Override
        public String a() {
            return org.schabi.newpipe.extractor.utils.a.m(this.c) ? super.b() : this.c;
        }

        @Override
        public String b() {
            return org.schabi.newpipe.extractor.utils.a.m(this.b) ? super.b() : this.b;
        }

        @Override
        public boolean c() {
            return this.d == VerifiedStatus.VERIFIED;
        }
    }

    public class b extends wxc {
        public final String b;
        public final String c;
        public final VerifiedStatus d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(JsonObject jsonObject, String str, String str2, VerifiedStatus verifiedStatus) {
            super(jsonObject);
            this.b = str;
            this.c = str2;
            this.d = verifiedStatus;
        }

        @Override
        public String a() {
            return org.schabi.newpipe.extractor.utils.a.m(this.c) ? super.b() : this.c;
        }

        @Override
        public String b() {
            return org.schabi.newpipe.extractor.utils.a.m(this.b) ? super.b() : this.b;
        }

        @Override
        public boolean c() {
            return this.d == VerifiedStatus.VERIFIED;
        }
    }

    public class c extends rvc {
        public final String f;
        public final String g;
        public final VerifiedStatus h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(JsonObject jsonObject, String str, String str2, VerifiedStatus verifiedStatus) {
            super(jsonObject);
            this.f = str;
            this.g = str2;
            this.h = verifiedStatus;
        }

        @Override
        public String a() {
            return org.schabi.newpipe.extractor.utils.a.m(this.g) ? super.b() : this.g;
        }

        @Override
        public String b() {
            return org.schabi.newpipe.extractor.utils.a.m(this.f) ? super.b() : this.f;
        }

        @Override
        public boolean c() {
            int i = f.a[this.h.ordinal()];
            if (i == 1) {
                return true;
            }
            if (i != 2) {
                return super.c();
            }
            return false;
        }
    }

    public class d extends bzc {
        public final String f;
        public final String g;
        public final VerifiedStatus h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(JsonObject jsonObject, ona onaVar, String str, String str2, VerifiedStatus verifiedStatus) {
            super(jsonObject, onaVar);
            this.f = str;
            this.g = str2;
            this.h = verifiedStatus;
        }

        @Override
        public String a() {
            return org.schabi.newpipe.extractor.utils.a.m(this.g) ? super.b() : this.g;
        }

        @Override
        public String b() {
            return org.schabi.newpipe.extractor.utils.a.m(this.f) ? super.b() : this.f;
        }

        @Override
        public boolean c() {
            int i = f.a[this.h.ordinal()];
            if (i == 1) {
                return true;
            }
            if (i != 2) {
                return super.c();
            }
            return false;
        }
    }

    public class e extends pxc {
        public final String b;
        public final String c;
        public final VerifiedStatus d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(JsonObject jsonObject, String str, String str2, VerifiedStatus verifiedStatus) {
            super(jsonObject);
            this.b = str;
            this.c = str2;
            this.d = verifiedStatus;
        }

        @Override
        public String a() {
            return org.schabi.newpipe.extractor.utils.a.m(this.c) ? super.b() : this.c;
        }

        @Override
        public String b() {
            return org.schabi.newpipe.extractor.utils.a.m(this.b) ? super.b() : this.b;
        }

        @Override
        public boolean c() {
            int i = f.a[this.d.ordinal()];
            if (i == 1) {
                return true;
            }
            if (i != 2) {
                return super.c();
            }
            return false;
        }
    }

    public static class f {
        public static final int[] a;

        static {
            int[] iArr = new int[VerifiedStatus.values().length];
            a = iArr;
            try {
                iArr[VerifiedStatus.VERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[VerifiedStatus.UNVERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class g extends YoutubeChannelTabExtractor {
        public final JsonObject j;
        public final String k;
        public final String l;
        public final String m;

        public g(StreamingService streamingService, ListLinkHandler listLinkHandler, JsonObject jsonObject, YoutubeChannelHelper.ChannelHeader channelHeader, String str, String str2, String str3) {
            super(streamingService, listLinkHandler);
            this.g = channelHeader;
            this.j = jsonObject;
            this.k = str2;
            this.l = str;
            this.m = str3;
        }

        @Override
        public String L() {
            return this.l;
        }

        @Override
        public Optional O() {
            return Optional.of(this.j);
        }

        @Override
        public String i() {
            return this.k;
        }

        @Override
        public String p() {
            return this.m;
        }

        @Override
        public void q(c23 c23Var) {
        }
    }

    public static final class h extends ksc {
        public final VerifiedStatus b;
        public final String c;
        public final String d;

        @Override
        public String a() {
            return this.d;
        }

        @Override
        public String b() {
            return this.c;
        }

        @Override
        public boolean c() throws ParsingException {
            int i = f.a[this.b.ordinal()];
            if (i == 1) {
                return true;
            }
            if (i == 2) {
                return false;
            }
            throw new ParsingException("Could not get uploader verification status");
        }

        public h(JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
            super(jsonObject);
            this.b = verifiedStatus;
            this.c = str;
            this.d = str2;
        }
    }

    public YoutubeChannelTabExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static void I(ls6 ls6Var, JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
        ls6Var.d(new a(jsonObject, str, str2, verifiedStatus));
    }

    public static void J(ls6 ls6Var, JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
        ls6Var.d(new b(jsonObject, str, str2, verifiedStatus));
    }

    public static Optional Q(Optional optional) {
        return optional;
    }

    public static Optional R(Optional optional, final Optional optional2) {
        return btc.a(optional, new Supplier() {
            @Override
            public final Object get() {
                return YoutubeChannelTabExtractor.Q(optional2);
            }
        });
    }

    public static boolean S(JsonObject jsonObject) {
        return jsonObject.has("appendContinuationItemsAction");
    }

    public static JsonObject T(JsonObject jsonObject) {
        return jsonObject.getObject("appendContinuationItemsAction");
    }

    public static boolean U(JsonObject jsonObject) {
        return jsonObject.has("tabRenderer");
    }

    public static JsonObject V(JsonObject jsonObject) {
        return jsonObject.getObject("tabRenderer");
    }

    public static boolean W(String str, JsonObject jsonObject) {
        return jsonObject.getObject("endpoint").getObject("commandMetadata").getObject("webCommandMetadata").getString("url", "").endsWith(str);
    }

    public static boolean X(JsonObject jsonObject) {
        JsonArray array = jsonObject.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer").getArray("contents");
        return (array.size() == 1 && array.getObject(0).has("messageRenderer")) ? false : true;
    }

    public final Optional P(ls6 ls6Var, JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
        ona onaVarO = o();
        if (jsonObject.has("richItemRenderer")) {
            JsonObject object = jsonObject.getObject("richItemRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT);
            if (object.has("videoRenderer")) {
                K(ls6Var, onaVarO, object.getObject("videoRenderer"), verifiedStatus, str, str2);
            } else if (object.has("reelItemRenderer")) {
                I(ls6Var, object.getObject("reelItemRenderer"), verifiedStatus, str, str2);
            } else if (object.has("shortsLockupViewModel")) {
                J(ls6Var, object.getObject("shortsLockupViewModel"), verifiedStatus, str, str2);
            } else if (object.has("playlistRenderer")) {
                G(ls6Var, object.getObject("playlistRenderer"), verifiedStatus, str, str2);
            }
        } else if (jsonObject.has("gridVideoRenderer")) {
            K(ls6Var, onaVarO, jsonObject.getObject("gridVideoRenderer"), verifiedStatus, str, str2);
        } else if (jsonObject.has("gridPlaylistRenderer")) {
            G(ls6Var, jsonObject.getObject("gridPlaylistRenderer"), verifiedStatus, str, str2);
        } else if (jsonObject.has("gridShowRenderer")) {
            ls6Var.d(new h(jsonObject.getObject("gridShowRenderer"), verifiedStatus, str, str2));
        } else {
            if (jsonObject.has("shelfRenderer")) {
                return P(ls6Var, jsonObject.getObject("shelfRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT), verifiedStatus, str, str2);
            }
            if (jsonObject.has("itemSectionRenderer")) {
                return F(ls6Var, jsonObject.getObject("itemSectionRenderer").getArray("contents"), verifiedStatus, str, str2);
            }
            if (jsonObject.has("horizontalListRenderer")) {
                return F(ls6Var, jsonObject.getObject("horizontalListRenderer").getArray("items"), verifiedStatus, str, str2);
            }
            if (jsonObject.has("expandedShelfContentsRenderer")) {
                return F(ls6Var, jsonObject.getObject("expandedShelfContentsRenderer").getArray("items"), verifiedStatus, str, str2);
            }
            if (jsonObject.has("lockupViewModel")) {
                JsonObject object2 = jsonObject.getObject("lockupViewModel");
                if ("LOCKUP_CONTENT_TYPE_PLAYLIST".equals(object2.getString(DataTypes.OBJ_CONTENT_TYPE))) {
                    H(ls6Var, object2, verifiedStatus, str, str2);
                }
            } else if (jsonObject.has("continuationItemRenderer")) {
                return Optional.ofNullable(jsonObject.getObject("continuationItemRenderer"));
            }
        }
        return Optional.empty();
    }

    public final Optional E(ls6 ls6Var, JsonArray jsonArray, List list) {
        VerifiedStatus verifiedStatus;
        String str;
        String str2;
        VerifiedStatus verifiedStatusValueOf;
        if (list.size() >= 3) {
            String str3 = (String) list.get(0);
            String str4 = (String) list.get(1);
            try {
                verifiedStatusValueOf = VerifiedStatus.valueOf((String) list.get(2));
            } catch (IllegalArgumentException unused) {
                verifiedStatusValueOf = VerifiedStatus.UNKNOWN;
            }
            verifiedStatus = verifiedStatusValueOf;
            str = str3;
            str2 = str4;
        } else {
            verifiedStatus = VerifiedStatus.UNKNOWN;
            str = null;
            str2 = null;
        }
        return F(ls6Var, jsonArray, verifiedStatus, str, str2);
    }

    public final Optional F(final ls6 ls6Var, JsonArray jsonArray, final VerifiedStatus verifiedStatus, final String str, final String str2) {
        return (Optional) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.P(ls6Var, verifiedStatus, str, str2, (JsonObject) obj);
            }
        }).reduce(Optional.empty(), new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return YoutubeChannelTabExtractor.R((Optional) obj, (Optional) obj2);
            }
        });
    }

    public final void G(ls6 ls6Var, JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
        ls6Var.d(new e(jsonObject, str, str2, verifiedStatus));
    }

    public final void H(ls6 ls6Var, JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
        ls6Var.d(new c(jsonObject, str, str2, verifiedStatus));
    }

    public final void K(ls6 ls6Var, ona onaVar, JsonObject jsonObject, VerifiedStatus verifiedStatus, String str, String str2) {
        ls6Var.d(new d(jsonObject, onaVar, str, str2, verifiedStatus));
    }

    public String L() {
        return YoutubeChannelHelper.r(this.g, YoutubeChannelHelper.o(this.h), this.h);
    }

    public final String M() throws ParsingException {
        String strK = k();
        strK.hashCode();
        switch (strK) {
            case "playlists":
                return "EglwbGF5bGlzdHPyBgQKAkIA";
            case "albums":
                return "EghyZWxlYXNlc_IGBQoDsgEA";
            case "shorts":
                return "EgZzaG9ydHPyBgUKA5oBAA%3D%3D";
            case "videos":
                return "EgZ2aWRlb3PyBgQKAjoA";
            case "livestreams":
                return "EgdzdHJlYW1z8gYECgJ6AA%3D%3D";
            default:
                throw new ParsingException("Unsupported channel tab: " + strK);
        }
    }

    public final Page N(JsonObject jsonObject, List list) {
        if (org.schabi.newpipe.extractor.utils.a.o(jsonObject)) {
            return null;
        }
        return new Page("https://www.youtube.com/youtubei/v1/browse?prettyPrint=false", null, list, null, tc5.b(cxc.y0(h(), g()).h("continuation", jsonObject.getObject("continuationEndpoint").getObject("continuationCommand").getString("token")).b()).getBytes(StandardCharsets.UTF_8));
    }

    public Optional O() {
        final String strS = duc.s(k());
        return this.h.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return YoutubeChannelTabExtractor.U((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return YoutubeChannelTabExtractor.V((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return YoutubeChannelTabExtractor.W(strS, (JsonObject) obj);
            }
        }).findFirst().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return YoutubeChannelTabExtractor.X((JsonObject) obj);
            }
        });
    }

    @Override
    public String i() {
        return YoutubeChannelHelper.q(this.g, this.h, this.i);
    }

    @Override
    public String p() {
        try {
            return duc.r().p("channel/" + i(), hdb.a(new Object[]{k()}), "");
        } catch (ParsingException unused) {
            return super.p();
        }
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        YoutubeChannelHelper.b bVarS = YoutubeChannelHelper.s(YoutubeChannelHelper.H(super.i()), M(), h(), g());
        JsonObject jsonObject = bVarS.a;
        this.h = jsonObject;
        this.g = YoutubeChannelHelper.p(jsonObject);
        this.i = bVarS.b;
    }

    @Override
    public tl5.a r() {
        JsonArray array;
        VerifiedStatus verifiedStatus;
        ls6 ls6Var = new ls6(n());
        JsonArray jsonArray = new JsonArray();
        Optional optionalO = O();
        if (optionalO.isPresent()) {
            JsonObject object = ((JsonObject) optionalO.get()).getObject(ICode.CALL.CALL_KEY_CONTENT);
            array = object.getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer").getArray("contents").getObject(0).getObject("gridRenderer").getArray("items");
            if (array.isEmpty()) {
                array = object.getObject("richGridRenderer").getArray("contents");
                if (array.isEmpty()) {
                    jsonArray = object.getObject("sectionListRenderer").getArray("contents");
                    array = jsonArray;
                }
            }
        } else {
            array = jsonArray;
        }
        YoutubeChannelHelper.ChannelHeader channelHeader = this.g;
        if (channelHeader == null) {
            verifiedStatus = VerifiedStatus.UNKNOWN;
        } else {
            verifiedStatus = YoutubeChannelHelper.t(channelHeader) ? VerifiedStatus.VERIFIED : VerifiedStatus.UNVERIFIED;
        }
        VerifiedStatus verifiedStatus2 = verifiedStatus;
        String strL = L();
        String strP = p();
        return new tl5.a(ls6Var, N((JsonObject) F(ls6Var, array, verifiedStatus2, strL, strP).orElse(null), hdb.a(new Object[]{strL, strP, verifiedStatus2.toString()})));
    }

    @Override
    public tl5.a t(Page page) {
        if (page == null || org.schabi.newpipe.extractor.utils.a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        List<String> ids = page.getIds();
        ls6 ls6Var = new ls6(n());
        return new tl5.a(ls6Var, N((JsonObject) E(ls6Var, ((JsonObject) cxc.I("browse", page.getBody(), h()).getArray("onResponseReceivedActions").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return YoutubeChannelTabExtractor.S((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return YoutubeChannelTabExtractor.T((JsonObject) obj);
            }
        }).findFirst().orElse(new JsonObject())).getArray("continuationItems"), ids).orElse(null), ids));
    }
}
