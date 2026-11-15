package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.transsion.livecaption.constant.ICode;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.bvc;
import defpackage.bzc;
import defpackage.c23;
import defpackage.cxc;
import defpackage.ec8;
import defpackage.fc8;
import defpackage.gvc;
import defpackage.hvc;
import defpackage.ls6;
import defpackage.lvc;
import defpackage.mvc;
import defpackage.oc5;
import defpackage.ona;
import defpackage.pna;
import defpackage.rtc;
import defpackage.rvc;
import defpackage.tc5;
import defpackage.un5;
import defpackage.w50;
import defpackage.x50;
import defpackage.xyc;
import defpackage.xz4;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.AgeRestrictedContentException;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.GeographicRestrictionException;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.PrivateContentException;
import org.schabi.newpipe.extractor.exceptions.YoutubeMusicPremiumContentException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.services.youtube.extractors.f;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.Frameset;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.Pair;
import org.schabi.newpipe.extractor.utils.Parser;

public class f extends StreamExtractor {
    public static boolean x;
    public JsonObject g;
    public JsonObject h;
    public JsonObject i;
    public JsonObject j;
    public JsonObject k;
    public JsonObject l;
    public JsonObject m;
    public JsonObject n;
    public JsonObject o;
    public int p;
    public StreamType q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;

    public f(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
        this.p = -1;
    }

    public static String G0(String str, List list, String str2) {
        String str3 = str + "ManifestUrl";
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            if (pair.getFirst() != null) {
                String string = ((JsonObject) pair.getFirst()).getString(str3);
                if (!org.schabi.newpipe.extractor.utils.a.m(string)) {
                    if (pair.getSecond() == null) {
                        return string + "?" + str2;
                    }
                    return string + "?pot=" + ((String) pair.getSecond()) + "&" + str2;
                }
            }
        }
        return "";
    }

    public static boolean O0(JsonObject jsonObject, String str) {
        return !str.equals(jsonObject.getObject("videoDetails").getString("videoId"));
    }

    public static boolean P0(JsonObject jsonObject) {
        return "login_required".equalsIgnoreCase(jsonObject.getString("status")) && jsonObject.getString("reason", "").contains("age");
    }

    public static Stream Q0(JsonObject jsonObject) {
        return jsonObject.getObject("metadataRowRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class));
    }

    public static Stream R0(JsonObject jsonObject) {
        return jsonObject.getArray("runs").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class));
    }

    public static String S0(JsonObject jsonObject) {
        return jsonObject.getString("text", "");
    }

    public static boolean T0(String str) {
        return str.contains("Age-restricted");
    }

    public static void W0(List list, org.schabi.newpipe.extractor.stream.Stream stream) {
        if (org.schabi.newpipe.extractor.stream.Stream.containSimilarStream(stream, list)) {
            return;
        }
        list.add(stream);
    }

    public static xz4 X0(ona onaVar, JsonObject jsonObject) {
        if (jsonObject.has("compactVideoRenderer")) {
            return new bzc(jsonObject.getObject("compactVideoRenderer"), onaVar);
        }
        if (jsonObject.has("compactRadioRenderer")) {
            return new mvc(jsonObject.getObject("compactRadioRenderer"));
        }
        if (jsonObject.has("compactPlaylistRenderer")) {
            return new mvc(jsonObject.getObject("compactPlaylistRenderer"));
        }
        if (!jsonObject.has("lockupViewModel")) {
            return null;
        }
        JsonObject object = jsonObject.getObject("lockupViewModel");
        if ("LOCKUP_CONTENT_TYPE_PLAYLIST".equals(object.getString(DataTypes.OBJ_CONTENT_TYPE))) {
            return new rvc(object);
        }
        return null;
    }

    public static boolean Y0(JsonObject jsonObject) {
        return "engagement-panel-macro-markers-description-chapters".equals(jsonObject.getObject("engagementPanelSectionListRenderer").getString("panelIdentifier"));
    }

    public static JsonArray Z0(JsonObject jsonObject) {
        return jsonObject.getObject("engagementPanelSectionListRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("macroMarkersListRenderer").getArray("contents");
    }

    public static JsonObject a1(JsonObject jsonObject) {
        return jsonObject.getObject("macroMarkersListItemRenderer");
    }

    public static JsonObject c1(String str, JsonObject jsonObject) {
        return jsonObject.getObject(str);
    }

    public static boolean d1(String str, JsonObject jsonObject) {
        return jsonObject.has(str);
    }

    public static JsonObject f1(JsonObject jsonObject) {
        return jsonObject.getObject("segmentedLikeDislikeButtonRenderer").getObject("likeButton").getObject("toggleButtonRenderer");
    }

    public static boolean g1(JsonObject jsonObject) {
        return !org.schabi.newpipe.extractor.utils.a.o(jsonObject);
    }

    public static JsonObject h1(JsonObject jsonObject) {
        return jsonObject.getObject("segmentedLikeDislikeButtonViewModel").getObject("likeButtonViewModel").getObject("likeButtonViewModel").getObject("toggleButtonViewModel").getObject("toggleButtonViewModel").getObject("defaultButtonViewModel").getObject("buttonViewModel");
    }

    public static boolean i1(JsonObject jsonObject) {
        return !org.schabi.newpipe.extractor.utils.a.o(jsonObject);
    }

    public static long j1(JsonArray jsonArray) throws ParsingException {
        String string = null;
        JsonObject jsonObject = (JsonObject) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.f1((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return f.g1((JsonObject) obj);
            }
        }).findFirst().orElse(null);
        if (jsonObject != null) {
            String string2 = jsonObject.getObject("accessibilityData").getObject("accessibilityData").getString(AnnotatedPrivateKey.LABEL);
            if (string2 == null) {
                string2 = jsonObject.getObject("accessibility").getString(AnnotatedPrivateKey.LABEL);
            }
            string = string2 == null ? jsonObject.getObject("defaultText").getObject("accessibility").getObject("accessibilityData").getString(AnnotatedPrivateKey.LABEL) : string2;
            if (string != null && string.toLowerCase().contains("no likes")) {
                return 0L;
            }
        }
        if (string == null) {
            throw new ParsingException("Could not get like count from accessibility data");
        }
        try {
            return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(string));
        } catch (NumberFormatException e) {
            throw new ParsingException("Could not parse \"" + string + "\" as a long", e);
        }
    }

    public static long k1(JsonArray jsonArray) throws ParsingException {
        JsonObject jsonObject = (JsonObject) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.h1((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return f.i1((JsonObject) obj);
            }
        }).findFirst().orElse(null);
        if (jsonObject == null) {
            throw new ParsingException("Could not find buttonViewModel object");
        }
        String string = jsonObject.getString("accessibilityText");
        if (string == null) {
            throw new ParsingException("Could not find buttonViewModel's accessibilityText string");
        }
        try {
            return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(string));
        } catch (NumberFormatException e) {
            throw new ParsingException("Could not parse \"" + string + "\" as a long", e);
        }
    }

    public static void m1(JsonObject jsonObject, String str) throws ExtractionException {
        if (O0(jsonObject, str)) {
            y0(jsonObject.getObject("playabilityStatus"));
            throw new ExtractionException("WEB player response is not valid");
        }
    }

    public static void y0(JsonObject jsonObject) throws ContentNotAvailableException {
        String string = jsonObject.getString("status");
        if (string == null || string.equalsIgnoreCase(PlayerRealUrlEntity.OK)) {
            return;
        }
        String string2 = jsonObject.getString("reason");
        if (string.equalsIgnoreCase("login_required")) {
            if (string2 == null) {
                String string3 = jsonObject.getArray("messages").getString(0);
                if (string3 != null && string3.contains("private")) {
                    throw new PrivateContentException("This video is private");
                }
            } else if (string2.contains("age")) {
                throw new AgeRestrictedContentException("This age-restricted video cannot be watched anonymously");
            }
        }
        if ((string.equalsIgnoreCase("unplayable") || string.equalsIgnoreCase("error")) && string2 != null) {
            if (string2.contains("Music Premium")) {
                throw new YoutubeMusicPremiumContentException();
            }
            if (string2.contains("payment")) {
                throw new PaidContentException("This video is a paid video");
            }
            if (string2.contains("members-only")) {
                throw new PaidContentException("This video is only available for members of the channel of this video");
            }
            if (string2.contains("unavailable")) {
                String strL = cxc.L(jsonObject.getObject("errorScreen").getObject("playerErrorMessageRenderer").getObject("subreason"));
                if (strL != null && strL.contains("country")) {
                    throw new GeographicRestrictionException("This video is not available in client's country.");
                }
                throw new ContentNotAvailableException((String) gvc.a(strL, string2));
            }
            if (string2.contains("age-restricted")) {
                throw new AgeRestrictedContentException("This age-restricted video cannot be watched anonymously");
            }
        }
        throw new ContentNotAvailableException("Got error: \"" + string2 + "\"");
    }

    public final void A0(Localization localization, ContentCountry contentCountry, String str, ec8 ec8Var, boolean z) throws ExtractionException {
        this.t = cxc.w();
        if (!z) {
            ec8Var.a(str);
        }
        JsonObject jsonObjectH = xyc.h(localization, contentCountry, str);
        m1(jsonObjectH, str);
        this.g = jsonObjectH;
        this.n = jsonObjectH.getObject("microformat").getObject("playerMicroformatRenderer");
        JsonObject object = jsonObjectH.getObject("playabilityStatus");
        if (P0(object)) {
            if (!z) {
                ec8Var.b(str);
            }
            B0(localization, contentCountry, str, null);
        } else {
            y0(object);
            JsonObject jsonObjectF = xyc.f(localization, contentCountry, str, this.t, hvc.c(str).intValue());
            if (O0(jsonObjectF, str)) {
                throw new ExtractionException("TVHTML5 player response is not valid");
            }
            this.k = jsonObjectF.getObject("streamingData");
            this.o = jsonObjectF.getObject("captions").getObject("playerCaptionsTracklistRenderer");
        }
    }

    @Override
    public Locale B() {
        return null;
    }

    public final void B0(Localization localization, ContentCountry contentCountry, String str, fc8 fc8Var) throws ExtractionException {
        String strW = cxc.w();
        this.t = strW;
        JsonObject jsonObjectG = xyc.g(localization, contentCountry, str, strW, fc8Var, hvc.c(str).intValue());
        this.g = jsonObjectG;
        y0(jsonObjectG.getObject("playabilityStatus"));
        if (O0(jsonObjectG, str)) {
            throw new ExtractionException("WEB_EMBEDDED_PLAYER player response is not valid");
        }
        this.k = jsonObjectG.getObject("streamingData");
        this.o = jsonObjectG.getObject("captions").getObject("playerCaptionsTracklistRenderer");
    }

    @Override
    public long C() {
        a();
        try {
            return Long.parseLong(this.g.getObject("videoDetails").getString("lengthSeconds"));
        } catch (Exception unused) {
            return E0(Arrays.asList(this.k, this.j, this.i));
        }
    }

    public final void C0(Localization localization, ContentCountry contentCountry, String str, fc8 fc8Var) {
        try {
            String strW = cxc.w();
            this.r = strW;
            JsonObject jsonObjectD = xyc.d(contentCountry, localization, str, strW, fc8Var);
            if (O0(jsonObjectD, str)) {
                return;
            }
            this.i = jsonObjectD.getObject("streamingData");
            if (org.schabi.newpipe.extractor.utils.a.o(this.o)) {
                this.o = jsonObjectD.getObject("captions").getObject("playerCaptionsTracklistRenderer");
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public String D() {
        JsonObject object = M0().getObject("metadataRowContainer").getObject("metadataRowContainerRenderer").getArray("rows").getObject(0).getObject("metadataRowRenderer");
        String strL = cxc.L(object.getArray("contents").getObject(0));
        return (strL == null || !"Licence".equals(cxc.L(object.getObject("title")))) ? "YouTube licence" : strL;
    }

    public final Function D0() {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.U0((ItagInfo) obj);
            }
        };
    }

    @Override
    public long E() throws ParsingException {
        a();
        if (!this.g.getObject("videoDetails").getBoolean("allowRatings")) {
            return -1L;
        }
        JsonArray array = L0().getObject("videoActions").getObject("menuRenderer").getArray("topLevelButtons");
        try {
            try {
                return k1(array);
            } catch (ParsingException unused) {
                return j1(array);
            }
        } catch (ParsingException e) {
            throw new ParsingException("Could not get like count", e);
        }
    }

    public final int E0(List list) throws ParsingException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            JsonArray array = ((JsonObject) it.next()).getArray("adaptiveFormats");
            if (!array.isEmpty()) {
                try {
                    return Math.round(Long.parseLong(array.getObject(0).getString("approxDurationMs")) / 1000.0f);
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
        }
        throw new ParsingException("Could not get duration");
    }

    @Override
    public List F() {
        return lvc.f(this.h.getObject("contents").getObject("twoColumnWatchNextResults").getObject("results").getObject("results").getArray("contents"));
    }

    public final List F0(final String str, final ItagItem.ItagType itagType, Function function, String str2) throws ParsingException {
        try {
            final String strI = i();
            final ArrayList arrayList = new ArrayList();
            Stream.of((Object[]) new Pair[]{new Pair(this.k, new Pair(this.t, this.u)), new Pair(this.j, new Pair(this.s, this.v)), new Pair(this.i, new Pair(this.r, this.w))}).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return this.a.V0(strI, str, itagType, (Pair) obj);
                }
            }).map(function).forEachOrdered(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    f.W0(arrayList, (org.schabi.newpipe.extractor.stream.Stream) obj);
                }
            });
            return arrayList;
        } catch (Exception e) {
            throw new ParsingException("Could not get " + str2 + " streams", e);
        }
    }

    @Override
    public StreamExtractor.Privacy G() {
        return this.n.getBoolean("isUnlisted") ? StreamExtractor.Privacy.UNLISTED : StreamExtractor.Privacy.PUBLIC;
    }

    @Override
    public ls6 H() throws ParsingException {
        a();
        if (r() != 0) {
            return null;
        }
        try {
            final ls6 ls6Var = new ls6(n());
            JsonArray array = this.h.getObject("contents").getObject("twoColumnWatchNextResults").getObject("secondaryResults").getObject("secondaryResults").getArray("results");
            final ona onaVarO = o();
            array.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function(onaVarO) {
                public final ona a;

                @Override
                public final Object apply(Object obj) {
                    return f.X0(this.a, (JsonObject) obj);
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Objects.nonNull((xz4) obj);
                }
            }).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ls6Var.d((xz4) obj);
                }
            });
            return ls6Var;
        } catch (Exception e) {
            throw new ParsingException("Could not get related videos", e);
        }
    }

    @Override
    public List I() throws ParsingException {
        JsonArray jsonArray;
        if (this.h.has("engagementPanels") && (jsonArray = (JsonArray) this.h.getArray("engagementPanels").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return f.Y0((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.Z0((JsonObject) obj);
            }
        }).findFirst().orElse(null)) != null) {
            long jC = C();
            ArrayList arrayList = new ArrayList();
            for (JsonObject jsonObject : (List) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return f.a1((JsonObject) obj);
                }
            }).collect(Collectors.toList())) {
                int i = jsonObject.getObject("onTap").getObject("watchEndpoint").getInt("startTimeSeconds", -1);
                if (i == -1) {
                    throw new ParsingException("Could not get stream segment start time.");
                }
                if (i > jC) {
                    break;
                }
                String strL = cxc.L(jsonObject.getObject("title"));
                if (org.schabi.newpipe.extractor.utils.a.m(strL)) {
                    throw new ParsingException("Could not get stream segment title.");
                }
                StreamSegment streamSegment = new StreamSegment(strL, i);
                streamSegment.setUrl(p() + "?t=" + i);
                if (jsonObject.has("thumbnail")) {
                    JsonArray array = jsonObject.getObject("thumbnail").getArray("thumbnails");
                    if (!array.isEmpty()) {
                        streamSegment.setPreviewUrl(cxc.u(array.getObject(array.size() - 1).getString("url")));
                    }
                }
                arrayList.add(streamSegment);
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public final Stream I0(final String str, JsonObject jsonObject, String str2, final ItagItem.ItagType itagType, final String str3, final String str4) {
        return (jsonObject == null || !jsonObject.has(str2)) ? Stream.empty() : jsonObject.getArray(str2).stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.b1(itagType, str, str3, str4, (JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((ItagInfo) obj);
            }
        });
    }

    @Override
    public StreamType J() {
        a();
        return this.q;
    }

    public List J0(MediaFormat mediaFormat) {
        a();
        ArrayList arrayList = new ArrayList();
        JsonArray array = this.o.getArray("captionTracks");
        for (int i = 0; i < array.size(); i++) {
            String string = array.getObject(i).getString("languageCode");
            String string2 = array.getObject(i).getString("baseUrl");
            String string3 = array.getObject(i).getString("vssId");
            if (string != null && string2 != null && string3 != null) {
                boolean zStartsWith = string3.startsWith("a.");
                String strReplaceAll = string2.replaceAll("&fmt=[^&]*", "").replaceAll("&tlang=[^&]*", "");
                arrayList.add(new SubtitlesStream.a().c(strReplaceAll + "&fmt=" + mediaFormat.getSuffix(), true).e(mediaFormat).d(string).b(zStartsWith).a());
            }
        }
        return arrayList;
    }

    public final JsonObject K0(final String str) {
        return (JsonObject) this.h.getObject("contents").getObject("twoColumnWatchNextResults").getObject("results").getObject("results").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return f.d1(str, (JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.c1(str, (JsonObject) obj);
            }
        }).findFirst().orElse(new JsonObject());
    }

    public final JsonObject L0() {
        JsonObject jsonObject = this.l;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonObject jsonObjectK0 = K0("videoPrimaryInfoRenderer");
        this.l = jsonObjectK0;
        return jsonObjectK0;
    }

    public final JsonObject M0() {
        JsonObject jsonObject = this.m;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonObject jsonObjectK0 = K0("videoSecondaryInfoRenderer");
        this.m = jsonObjectK0;
        return jsonObjectK0;
    }

    @Override
    public List N() {
        return J0(MediaFormat.TTML);
    }

    public final Function N0(final boolean z) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.e1(z, (ItagInfo) obj);
            }
        };
    }

    @Override
    public List P() {
        return oc5.i(this.g.getObject("videoDetails").getArray(TranSearchIndexablesContract.TranRawData.COLUMN_KEYWORDS));
    }

    @Override
    public String Q() throws ParsingException {
        if (!this.n.getString("uploadDate", "").isEmpty()) {
            return this.n.getString("uploadDate");
        }
        if (!this.n.getString("publishDate", "").isEmpty()) {
            return this.n.getString("publishDate");
        }
        JsonObject object = this.n.getObject("liveBroadcastDetails");
        if (!object.getString("endTimestamp", "").isEmpty()) {
            return object.getString("endTimestamp");
        }
        if (!object.getString("startTimestamp", "").isEmpty()) {
            return object.getString("startTimestamp");
        }
        if (J() == StreamType.LIVE_STREAM) {
            return null;
        }
        String strL = cxc.L(L0().getObject("dateText"));
        if (strL == null) {
            throw new ParsingException("Could not get upload date");
        }
        if (strL.startsWith("Premiered")) {
            String strSubstring = strL.substring(13);
            try {
                try {
                    try {
                        return DateTimeFormatter.ISO_LOCAL_DATE.format(pna.b(new Localization("en")).a(strSubstring).offsetDateTime());
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    return DateTimeFormatter.ISO_LOCAL_DATE.format(LocalDate.parse(strSubstring, DateTimeFormatter.ofPattern("dd MMM yyyy", Locale.ENGLISH)));
                }
            } catch (Exception unused3) {
                return DateTimeFormatter.ISO_LOCAL_DATE.format(LocalDate.parse(strSubstring, DateTimeFormatter.ofPattern("MMM dd, yyyy", Locale.ENGLISH)));
            }
        }
        try {
            return DateTimeFormatter.ISO_LOCAL_DATE.format(LocalDate.parse(strL, DateTimeFormatter.ofPattern("dd MMM yyyy", Locale.ENGLISH)));
        } catch (Exception e) {
            throw new ParsingException("Could not get upload date", e);
        }
    }

    @Override
    public List R() throws ParsingException {
        a();
        try {
            return cxc.F(this.g.getObject("videoDetails").getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception unused) {
            throw new ParsingException("Could not get thumbnails");
        }
    }

    @Override
    public long S() throws ParsingException {
        long jT = T("((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)");
        if (jT == -2) {
            return 0L;
        }
        return jT;
    }

    @Override
    public DateWrapper U() throws ParsingException {
        String strQ = Q();
        if (org.schabi.newpipe.extractor.utils.a.m(strQ)) {
            return null;
        }
        return new DateWrapper(cxc.w0(strQ), true);
    }

    public final AudioStream U0(ItagInfo itagInfo) {
        ItagItem itagItem = itagInfo.getItagItem();
        AudioStream.a aVarJ = new AudioStream.a().i(String.valueOf(itagItem.id)).g(itagInfo.getContent(), itagInfo.getIsUrl()).l(itagItem.getMediaFormat()).f(itagItem.getAverageBitrate()).c(itagItem.getAudioTrackId()).d(itagItem.getAudioTrackName()).b(itagItem.getAudioLocale()).e(itagItem.getAudioTrackType()).j(itagItem);
        StreamType streamType = this.q;
        if (streamType == StreamType.LIVE_STREAM || streamType == StreamType.POST_LIVE_STREAM || !itagInfo.getIsUrl()) {
            aVarJ.h(DeliveryMethod.DASH);
        }
        return aVarJ.a();
    }

    @Override
    public List V() throws ParsingException {
        a();
        List listF = cxc.F(M0().getObject("owner").getObject("videoOwnerRenderer").getObject("thumbnail").getArray("thumbnails"));
        if (listF.isEmpty() && this.p == 0) {
            throw new ParsingException("Could not get uploader avatars");
        }
        return listF;
    }

    public final Stream V0(String str, String str2, ItagItem.ItagType itagType, Pair pair) {
        return I0(str, (JsonObject) pair.getFirst(), str2, itagType, (String) ((Pair) pair.getSecond()).getFirst(), (String) ((Pair) pair.getSecond()).getSecond());
    }

    @Override
    public String W() throws ParsingException {
        a();
        String string = this.g.getObject("videoDetails").getString("author");
        if (org.schabi.newpipe.extractor.utils.a.m(string)) {
            throw new ParsingException("Could not get uploader name");
        }
        return string;
    }

    @Override
    public long X() throws ParsingException {
        JsonObject jsonObjectF = oc5.f(this.m, "owner.videoOwnerRenderer");
        if (!jsonObjectF.has("subscriberCountText")) {
            return -1L;
        }
        try {
            return org.schabi.newpipe.extractor.utils.a.r(cxc.L(jsonObjectF.getObject("subscriberCountText")));
        } catch (NumberFormatException e) {
            throw new ParsingException("Could not get uploader subscriber count", e);
        }
    }

    @Override
    public String Y() throws ParsingException {
        a();
        String string = this.g.getObject("videoDetails").getString("channelId");
        if (org.schabi.newpipe.extractor.utils.a.m(string)) {
            throw new ParsingException("Could not get uploader url");
        }
        return rtc.r().g("channel/" + string);
    }

    @Override
    public List Z() {
        a();
        return F0("adaptiveFormats", ItagItem.ItagType.VIDEO_ONLY, N0(true), "video-only");
    }

    @Override
    public List a0() {
        a();
        return F0("formats", ItagItem.ItagType.VIDEO, N0(false), "video");
    }

    @Override
    public long b0() throws ParsingException {
        String strL = cxc.L(L0().getObject("viewCount").getObject("videoViewCountRenderer").getObject("viewCount"));
        if (org.schabi.newpipe.extractor.utils.a.m(strL)) {
            strL = this.g.getObject("videoDetails").getString("viewCount");
            if (org.schabi.newpipe.extractor.utils.a.m(strL)) {
                throw new ParsingException("Could not get view count");
            }
        }
        if (strL.toLowerCase().contains("no views")) {
            return 0L;
        }
        return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(strL));
    }

    public final ItagInfo b1(ItagItem.ItagType itagType, String str, String str2, String str3, JsonObject jsonObject) {
        try {
            ItagItem itag = ItagItem.getItag(jsonObject.getInt("itag"));
            ItagItem.ItagType itagType2 = itag.itagType;
            if (itagType2 == itagType) {
                return x0(str, jsonObject, itag, itagType2, str2, str3);
            }
            return null;
        } catch (ExtractionException unused) {
            return null;
        }
    }

    @Override
    public boolean d0() {
        return cxc.d0(M0().getObject("owner").getObject("videoOwnerRenderer").getArray("badges"));
    }

    public final VideoStream e1(boolean z, ItagInfo itagInfo) {
        ItagItem itagItem = itagInfo.getItagItem();
        VideoStream.a aVarF = new VideoStream.a().d(String.valueOf(itagItem.id)).b(itagInfo.getContent(), itagInfo.getIsUrl()).h(itagItem.getMediaFormat()).e(z).f(itagItem);
        String resolutionString = itagItem.getResolutionString();
        if (resolutionString == null) {
            resolutionString = "";
        }
        aVarF.i(resolutionString);
        if (this.q != StreamType.VIDEO_STREAM || !itagInfo.getIsUrl()) {
            aVarF.c(DeliveryMethod.DASH);
        }
        return aVarF.a();
    }

    @Override
    public String k() throws ParsingException {
        a();
        String string = this.g.getObject("videoDetails").getString("title");
        if (org.schabi.newpipe.extractor.utils.a.m(string)) {
            string = cxc.L(L0().getObject("title"));
            if (org.schabi.newpipe.extractor.utils.a.m(string)) {
                throw new ParsingException("Could not get name");
            }
        }
        return string;
    }

    public final void l1() {
        if (this.g.getObject("playabilityStatus").has("liveStreamability")) {
            this.q = StreamType.LIVE_STREAM;
        } else if (this.g.getObject("videoDetails").getBoolean("isPostLiveDvr", Boolean.FALSE)) {
            this.q = StreamType.POST_LIVE_STREAM;
        } else {
            this.q = StreamType.VIDEO_STREAM;
        }
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        String strI = i();
        Localization localizationH = h();
        ContentCountry contentCountryG = g();
        A0(localizationH, contentCountryG, strI, null, true);
        l1();
        z0(localizationH, contentCountryG, strI, null);
        if (x) {
            C0(localizationH, contentCountryG, strI, null);
        }
        this.h = cxc.I(ES6Iterator.NEXT_METHOD, tc5.b(cxc.y0(localizationH, contentCountryG).h("videoId", strI).i("contentCheckOk", true).i("racyCheckOk", true).b()).getBytes(StandardCharsets.UTF_8), localizationH);
    }

    @Override
    public int r() {
        int i = this.p;
        if (i != -1) {
            return i;
        }
        int i2 = M0().getObject("metadataRowContainer").getObject("metadataRowContainerRenderer").getArray("rows").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.Q0((JsonObject) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.R0((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return f.S0((JsonObject) obj);
            }
        }).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return f.T0((String) obj);
            }
        }) ? 18 : 0;
        this.p = i2;
        return i2;
    }

    @Override
    public List s() {
        a();
        return F0("adaptiveFormats", ItagItem.ItagType.AUDIO, D0(), "audio");
    }

    @Override
    public String t() {
        return this.n.getString(CloudItem.KEY_CATEGORY, "");
    }

    @Override
    public String u() {
        a();
        return G0("dash", Arrays.asList(new Pair(this.j, this.v), new Pair(this.k, this.u)), "mpd_version=7");
    }

    @Override
    public Description v() {
        a();
        String strM = cxc.M(M0().getObject("description"), true);
        if (!org.schabi.newpipe.extractor.utils.a.m(strM)) {
            return new Description(strM, 1);
        }
        String strI = bvc.i(M0().getObject("attributedDescription"));
        if (!org.schabi.newpipe.extractor.utils.a.m(strI)) {
            return new Description(strI, 1);
        }
        String string = this.g.getObject("videoDetails").getString("shortDescription");
        if (string == null) {
            string = cxc.L(this.n.getObject("description"));
        }
        return new Description(string, 3);
    }

    @Override
    public String x() {
        try {
            return cxc.L(this.g.getObject("playabilityStatus").getObject("errorScreen").getObject("playerErrorMessageRenderer").getObject("reason"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public final ItagInfo x0(String str, JsonObject jsonObject, final ItagItem itagItem, ItagItem.ItagType itagType, String str2, String str3) throws Exception {
        String string;
        if (jsonObject.has("url")) {
            string = jsonObject.getString("url");
        } else {
            Map mapF = Parser.f(jsonObject.getString("cipher", jsonObject.getString("signatureCipher")));
            String strA = hvc.a(str, (String) mapF.getOrDefault("s", ""));
            string = ((String) mapF.get("url")) + "&" + ((String) mapF.get("sp")) + "=" + strA;
        }
        String str4 = hvc.d(str, string) + "&cpn=" + str2;
        if (str3 != null) {
            str4 = str4 + "&pot=" + str3;
        }
        JsonObject object = jsonObject.getObject("initRange");
        JsonObject object2 = jsonObject.getObject("indexRange");
        String string2 = jsonObject.getString(Progress.MIMETYPE, "");
        String str5 = string2.contains("codecs") ? string2.split("\"")[1] : "";
        itagItem.setBitrate(jsonObject.getInt("bitrate"));
        itagItem.setWidth(jsonObject.getInt("width"));
        itagItem.setHeight(jsonObject.getInt("height"));
        itagItem.setInitStart(Integer.parseInt(object.getString(TtmlNode.START, "-1")));
        itagItem.setInitEnd(Integer.parseInt(object.getString(TtmlNode.END, "-1")));
        itagItem.setIndexStart(Integer.parseInt(object2.getString(TtmlNode.START, "-1")));
        itagItem.setIndexEnd(Integer.parseInt(object2.getString(TtmlNode.END, "-1")));
        itagItem.setQuality(jsonObject.getString(com.hunantv.media.player.subtitle.MediaFormat.KEY_QUALITY));
        itagItem.setCodec(str5);
        StreamType streamType = this.q;
        if (streamType == StreamType.LIVE_STREAM || streamType == StreamType.POST_LIVE_STREAM) {
            itagItem.setTargetDurationSec(jsonObject.getInt("targetDurationSec"));
        }
        if (itagType == ItagItem.ItagType.VIDEO || itagType == ItagItem.ItagType.VIDEO_ONLY) {
            itagItem.setFps(jsonObject.getInt("fps"));
        } else if (itagType == ItagItem.ItagType.AUDIO) {
            itagItem.setSampleRate(Integer.parseInt(jsonObject.getString("audioSampleRate")));
            itagItem.setAudioChannels(jsonObject.getInt("audioChannels", 2));
            String string3 = jsonObject.getObject("audioTrack").getString(TtmlNode.ATTR_ID);
            if (!org.schabi.newpipe.extractor.utils.a.m(string3)) {
                itagItem.setAudioTrackId(string3);
                int iIndexOf = string3.indexOf(Consts.DOT);
                if (iIndexOf != -1) {
                    un5.a(string3.substring(0, iIndexOf)).ifPresent(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            itagItem.setAudioLocale((Locale) obj);
                        }
                    });
                }
                itagItem.setAudioTrackType(cxc.m(str4));
            }
            itagItem.setAudioTrackName(jsonObject.getObject("audioTrack").getString("displayName"));
        }
        itagItem.setContentLength(Long.parseLong(jsonObject.getString("contentLength", String.valueOf(-1L))));
        itagItem.setApproxDurationMs(Long.parseLong(jsonObject.getString("approxDurationMs", String.valueOf(-1L))));
        ItagInfo itagInfo = new ItagInfo(str4, itagItem);
        StreamType streamType2 = this.q;
        if (streamType2 == StreamType.VIDEO_STREAM) {
            itagInfo.setIsUrl(!jsonObject.getString("type", "").equalsIgnoreCase("FORMAT_STREAM_TYPE_OTF"));
        } else {
            itagInfo.setIsUrl(streamType2 != StreamType.POST_LIVE_STREAM);
        }
        return itagInfo;
    }

    @Override
    public List y() throws ExtractionException {
        String string;
        List listSingletonList;
        String str = "playerLiveStoryboardSpecRenderer";
        try {
            JsonObject object = this.g.getObject("storyboards");
            if (!object.has("playerLiveStoryboardSpecRenderer")) {
                str = "playerStoryboardSpecRenderer";
            }
            JsonObject object2 = object.getObject(str);
            if (object2 != null && (string = object2.getString("spec")) != null) {
                String[] strArrSplit = string.split("\\|");
                String str2 = strArrSplit[0];
                ArrayList arrayList = new ArrayList(strArrSplit.length - 1);
                for (int i = 1; i < strArrSplit.length; i++) {
                    String[] strArrSplit2 = strArrSplit[i].split("#");
                    if (strArrSplit2.length == 8 && Integer.parseInt(strArrSplit2[5]) != 0) {
                        int i2 = Integer.parseInt(strArrSplit2[2]);
                        int i3 = Integer.parseInt(strArrSplit2[3]);
                        int i4 = Integer.parseInt(strArrSplit2[4]);
                        String str3 = str2.replace("$L", String.valueOf(i - 1)).replace("$N", strArrSplit2[6]) + "&sigh=" + strArrSplit2[7];
                        if (str3.contains("$M")) {
                            int iCeil = (int) Math.ceil(((double) i2) / ((double) (i3 * i4)));
                            listSingletonList = new ArrayList(iCeil);
                            for (int i5 = 0; i5 < iCeil; i5++) {
                                listSingletonList.add(str3.replace("$M", String.valueOf(i5)));
                            }
                        } else {
                            listSingletonList = Collections.singletonList(str3);
                        }
                        arrayList.add(new Frameset(listSingletonList, Integer.parseInt(strArrSplit2[0]), Integer.parseInt(strArrSplit2[1]), i2, Integer.parseInt(strArrSplit2[5]), i3, i4));
                    }
                }
                return arrayList;
            }
            return Collections.emptyList();
        } catch (Exception e) {
            throw new ExtractionException("Could not get frames", e);
        }
    }

    @Override
    public String z() {
        a();
        return G0("hls", Arrays.asList(new Pair(this.i, this.w), new Pair(this.j, this.v), new Pair(this.k, this.u)), "");
    }

    public final void z0(Localization localization, ContentCountry contentCountry, String str, fc8 fc8Var) {
        try {
            String strW = cxc.w();
            this.s = strW;
            JsonObject jsonObjectC = xyc.c(contentCountry, localization, str, strW);
            if (O0(jsonObjectC, str)) {
                return;
            }
            this.j = jsonObjectC.getObject("streamingData");
            if (org.schabi.newpipe.extractor.utils.a.o(this.o)) {
                this.o = jsonObjectC.getObject("captions").getObject("playerCaptionsTracklistRenderer");
            }
        } catch (Exception unused) {
        }
    }
}
