package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.livecaption.constant.ICode;
import defpackage.c23;
import defpackage.cxc;
import defpackage.duc;
import defpackage.fu0;
import defpackage.hdb;
import defpackage.msc;
import defpackage.qsc;
import defpackage.rsc;
import defpackage.rtc;
import defpackage.us0;
import defpackage.w50;
import defpackage.x50;
import defpackage.zsc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.a;

public class a extends us0 {
    public JsonObject g;
    public YoutubeChannelHelper.ChannelHeader h;
    public String i;
    public JsonObject j;

    public static class C0446a {
        public static final int[] a;

        static {
            int[] iArr = new int[YoutubeChannelHelper.ChannelHeader.HeaderType.values().length];
            a = iArr;
            try {
                iArr[YoutubeChannelHelper.ChannelHeader.HeaderType.PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[YoutubeChannelHelper.ChannelHeader.HeaderType.INTERACTIVE_TABBED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[YoutubeChannelHelper.ChannelHeader.HeaderType.C4_TABBED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[YoutubeChannelHelper.ChannelHeader.HeaderType.CAROUSEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static ParsingException R() {
        return new ParsingException("Could not get avatars");
    }

    public static JsonArray S(YoutubeChannelHelper.ChannelHeader channelHeader) {
        int i = C0446a.a[channelHeader.headerType.ordinal()];
        if (i != 1) {
            return i != 2 ? channelHeader.json.getObject("avatar").getArray("thumbnails") : channelHeader.json.getObject("boxArt").getArray("thumbnails");
        }
        JsonObject object = channelHeader.json.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("pageHeaderViewModel").getObject("image");
        if (object.has("contentPreviewImageViewModel")) {
            return object.getObject("contentPreviewImageViewModel").getObject("image").getArray("sources");
        }
        return object.has("decoratedAvatarViewModel") ? object.getObject("decoratedAvatarViewModel").getObject("avatar").getObject("avatarViewModel").getObject("image").getArray("sources") : new JsonArray();
    }

    public static ParsingException T() {
        return new ParsingException("Could not get avatars");
    }

    public static JsonArray U(YoutubeChannelHelper.ChannelHeader channelHeader) {
        if (channelHeader.headerType != YoutubeChannelHelper.ChannelHeader.HeaderType.PAGE) {
            return channelHeader.json.getObject("banner").getArray("thumbnails");
        }
        JsonObject object = channelHeader.json.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("pageHeaderViewModel");
        return object.has("banner") ? object.getObject("banner").getObject("imageBannerViewModel").getObject("image").getArray("sources") : new JsonArray();
    }

    public static JsonArray V(JsonObject jsonObject) {
        return jsonObject.getArray("metadataParts");
    }

    public static boolean W(JsonArray jsonArray) {
        return jsonArray.size() == 2;
    }

    public static fu0 Y(JsonObject jsonObject, YoutubeChannelHelper.ChannelHeader channelHeader, String str, String str2, String str3, StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return new YoutubeChannelTabExtractor.g(streamingService, listLinkHandler, jsonObject, channelHeader, str, str2, str3);
    }

    public static boolean a0(JsonObject jsonObject) {
        return jsonObject.has("tabRenderer");
    }

    public static JsonObject b0(JsonObject jsonObject) {
        return jsonObject.getObject("tabRenderer");
    }

    @Override
    public List A() {
        a();
        return this.j != null ? Collections.emptyList() : (List) this.g.getObject("microformat").getObject("microformatDataRenderer").getArray("tags").stream().filter(new w50(String.class)).map(new msc(String.class)).collect(Collectors.toUnmodifiableList());
    }

    @Override
    public boolean B() throws ParsingException {
        a();
        if (this.j != null) {
            return false;
        }
        YoutubeChannelHelper.ChannelHeader channelHeader = this.h;
        if (channelHeader != null) {
            return YoutubeChannelHelper.t(channelHeader);
        }
        throw new ParsingException("Could not get channel verified status, no channel header has been extracted");
    }

    public final long O(JsonObject jsonObject) throws ParsingException {
        JsonArray jsonArray;
        JsonObject object = jsonObject.getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("pageHeaderViewModel").getObject(TtmlNode.TAG_METADATA);
        if (!object.has("contentMetadataViewModel") || (jsonArray = (JsonArray) object.getObject("contentMetadataViewModel").getArray("metadataRows").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return a.V((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return a.W((JsonArray) obj);
            }
        }).findFirst().orElse(null)) == null) {
            return -1L;
        }
        try {
            return org.schabi.newpipe.extractor.utils.a.r(jsonArray.getObject(0).getObject("text").getString(ICode.CALL.CALL_KEY_CONTENT));
        } catch (NumberFormatException e) {
            throw new ParsingException("Could not get subscriber count", e);
        }
    }

    public final List P() {
        final ArrayList arrayList = new ArrayList();
        final String strP = p();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.X(arrayList, strP, (String) obj);
            }
        };
        consumer.accept("videos");
        consumer.accept("shorts");
        consumer.accept("livestreams");
        return Collections.unmodifiableList(arrayList);
    }

    public final List Q() {
        JsonArray array = this.g.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs");
        final ArrayList arrayList = new ArrayList();
        final Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.Z(arrayList, (String) obj);
            }
        };
        final String strK = k();
        final String strP = p();
        final String strI = i();
        array.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return a.a0((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return a.b0((JsonObject) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.c0(arrayList, strK, strI, strP, consumer, (JsonObject) obj);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    public final void X(List list, String str, String str2) {
        list.add(new ReadyChannelTabListLinkHandler(str + "/" + str2, this.i, str2, new rsc()));
    }

    public final void Z(List list, String str) {
        try {
            list.add(duc.r().l(this.i, hdb.a(new Object[]{str}), ""));
        } catch (ParsingException unused) {
        }
    }

    public final void c0(List list, String str, String str2, String str3, Consumer consumer, JsonObject jsonObject) {
        byte b = 1;
        String string = jsonObject.getObject("endpoint").getObject("commandMetadata").getObject("webCommandMetadata").getString("url");
        if (string != null) {
            String[] strArrSplit = string.split("/");
            if (strArrSplit.length == 0) {
            }
            String str4 = strArrSplit[strArrSplit.length - 1];
            YoutubeChannelHelper.ChannelHeader channelHeader = this.h;
            YoutubeChannelHelper.ChannelHeader channelHeader2 = channelHeader == null ? null : new YoutubeChannelHelper.ChannelHeader(channelHeader.json, channelHeader.headerType);
            str4.hashCode();
            switch (str4.hashCode()) {
                case -1881890573:
                    b = !str4.equals("streams") ? (byte) -1 : (byte) 0;
                    break;
                case -1865828127:
                    if (!str4.equals("playlists")) {
                        b = -1;
                    }
                    break;
                case -903148681:
                    b = !str4.equals("shorts") ? (byte) -1 : (byte) 2;
                    break;
                case -816678056:
                    b = !str4.equals("videos") ? (byte) -1 : (byte) 3;
                    break;
                case -551298740:
                    b = !str4.equals("releases") ? (byte) -1 : (byte) 4;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    consumer.accept("livestreams");
                    break;
                case 1:
                    consumer.accept("playlists");
                    break;
                case 2:
                    consumer.accept("shorts");
                    break;
                case 3:
                    list.add(0, new ReadyChannelTabListLinkHandler(string, this.i, "videos", new qsc(jsonObject, channelHeader2, str, str2, str3)));
                    break;
                case 4:
                    consumer.accept("albums");
                    break;
            }
        }
    }

    @Override
    public String i() {
        a();
        return YoutubeChannelHelper.q(this.h, this.g, this.i);
    }

    @Override
    public String k() {
        a();
        return YoutubeChannelHelper.r(this.h, this.j, this.g);
    }

    @Override
    public String p() {
        try {
            return rtc.r().g("channel/" + i());
        } catch (ParsingException unused) {
            return super.p();
        }
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        YoutubeChannelHelper.b bVarS = YoutubeChannelHelper.s(YoutubeChannelHelper.H(super.i()), "EgZ2aWRlb3PyBgQKAjoA", h(), g());
        JsonObject jsonObject = bVarS.a;
        this.g = jsonObject;
        this.h = YoutubeChannelHelper.p(jsonObject);
        this.i = bVarS.b;
        this.j = YoutubeChannelHelper.o(this.g);
    }

    @Override
    public List r() {
        a();
        JsonObject jsonObject = this.j;
        return jsonObject != null ? (List) Optional.ofNullable(jsonObject.getObject("avatar").getArray("thumbnails")).map(new zsc()).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return a.R();
            }
        }) : (List) Optional.ofNullable(this.h).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return a.S((YoutubeChannelHelper.ChannelHeader) obj);
            }
        }).map(new zsc()).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return a.T();
            }
        });
    }

    @Override
    public List s() {
        a();
        return this.j != null ? Collections.emptyList() : (List) Optional.ofNullable(this.h).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return a.U((YoutubeChannelHelper.ChannelHeader) obj);
            }
        }).map(new zsc()).orElse(Collections.emptyList());
    }

    @Override
    public String t() throws ParsingException {
        a();
        if (this.j != null) {
            return null;
        }
        try {
            YoutubeChannelHelper.ChannelHeader channelHeader = this.h;
            return (channelHeader == null || channelHeader.headerType != YoutubeChannelHelper.ChannelHeader.HeaderType.INTERACTIVE_TABBED) ? this.g.getObject(TtmlNode.TAG_METADATA).getObject("channelMetadataRenderer").getString("description") : cxc.L(channelHeader.json.getObject("description"));
        } catch (Exception e) {
            throw new ParsingException("Could not get channel description", e);
        }
    }

    @Override
    public String u() throws ParsingException {
        try {
            return cxc.E(i());
        } catch (Exception e) {
            throw new ParsingException("Could not get feed URL", e);
        }
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String w() {
        return "";
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public long y() throws ParsingException {
        YoutubeChannelHelper.ChannelHeader channelHeader;
        YoutubeChannelHelper.ChannelHeader.HeaderType headerType;
        JsonObject object;
        a();
        if (this.j != null || (channelHeader = this.h) == null || (headerType = channelHeader.headerType) == YoutubeChannelHelper.ChannelHeader.HeaderType.INTERACTIVE_TABBED) {
            return -1L;
        }
        JsonObject jsonObject = channelHeader.json;
        if (headerType == YoutubeChannelHelper.ChannelHeader.HeaderType.PAGE) {
            return O(jsonObject);
        }
        if (jsonObject.has("subscriberCountText")) {
            object = jsonObject.getObject("subscriberCountText");
        } else {
            object = jsonObject.has(AuthInfo.Component.CODE_SUBTITLE) ? jsonObject.getObject(AuthInfo.Component.CODE_SUBTITLE) : null;
        }
        if (object != null) {
            try {
                return org.schabi.newpipe.extractor.utils.a.r(cxc.L(object));
            } catch (NumberFormatException e) {
                throw new ParsingException("Could not get subscriber count", e);
            }
        }
        return -1L;
    }

    @Override
    public List z() {
        a();
        return this.j == null ? Q() : P();
    }
}
