package defpackage;

import com.grack.nanojson.JsonObject;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public class bzc implements py9 {
    public static final Pattern e = Pattern.compile("([\\d,]+) views$");
    public final JsonObject a;
    public final ona b;
    public StreamType c;
    public Boolean d;

    public bzc(JsonObject jsonObject, ona onaVar) {
        this.a = jsonObject;
    }

    public static boolean J(JsonObject jsonObject) {
        return jsonObject.has("thumbnailOverlayTimeStatusRenderer");
    }

    public static boolean K(JsonObject jsonObject) {
        return jsonObject.has("thumbnailOverlayTimeStatusRenderer");
    }

    public static JsonObject L(JsonObject jsonObject) {
        return jsonObject.getObject("thumbnailOverlayTimeStatusRenderer");
    }

    public final OffsetDateTime E() throws ParsingException {
        String string = this.a.getObject("upcomingEventData").getString("startTime");
        try {
            return OffsetDateTime.ofInstant(Instant.ofEpochSecond(Long.parseLong(string)), ZoneOffset.UTC);
        } catch (Exception unused) {
            throw new ParsingException("Could not parse date from premiere: \"" + string + "\"");
        }
    }

    public final long F() {
        String string = this.a.getObject("title").getObject("accessibility").getObject("accessibilityData").getString(AnnotatedPrivateKey.LABEL, "");
        if (string.toLowerCase().endsWith("no views")) {
            return 0L;
        }
        return Long.parseLong(a.u(Parser.p(e, string)));
    }

    public final long G(String str, boolean z) {
        if (str.toLowerCase().contains("no views")) {
            return 0L;
        }
        if (str.toLowerCase().contains("recommended")) {
            return -1L;
        }
        return z ? a.r(str) : Long.parseLong(a.u(str));
    }

    public final boolean H() {
        if (this.d == null) {
            this.d = Boolean.valueOf(this.a.has("upcomingEventData"));
        }
        return this.d.booleanValue();
    }

    public final boolean I() {
        Iterator<Object> it = this.a.getArray("badges").iterator();
        while (it.hasNext()) {
            if (((JsonObject) it.next()).getObject("metadataBadgeRenderer").getString(AnnotatedPrivateKey.LABEL, "").equals("Premium")) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String a() throws ParsingException {
        String strP = cxc.P(this.a.getObject("longBylineText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
        if (a.m(strP)) {
            strP = cxc.P(this.a.getObject("ownerText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
            if (a.m(strP)) {
                strP = cxc.P(this.a.getObject("shortBylineText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
                if (a.m(strP)) {
                    throw new ParsingException("Could not get uploader url");
                }
            }
        }
        return strP;
    }

    @Override
    public String b() throws ParsingException {
        String strL = cxc.L(this.a.getObject("longBylineText"));
        if (a.m(strL)) {
            strL = cxc.L(this.a.getObject("ownerText"));
            if (a.m(strL)) {
                strL = cxc.L(this.a.getObject("shortBylineText"));
                if (a.m(strL)) {
                    throw new ParsingException("Could not get uploader name");
                }
            }
        }
        return strL;
    }

    @Override
    public boolean c() {
        return cxc.d0(this.a.getArray("ownerBadges"));
    }

    @Override
    public List e() {
        if (this.a.has("channelThumbnailSupportedRenderers")) {
            return cxc.F(oc5.a(this.a, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails"));
        }
        return this.a.has("channelThumbnail") ? cxc.F(oc5.a(this.a, "channelThumbnail.thumbnails")) : Collections.emptyList();
    }

    @Override
    public String f() {
        if (u().equals(StreamType.LIVE_STREAM)) {
            return null;
        }
        if (H()) {
            return DateTimeFormatter.ofPattern(OSDateTimePicker.FORMAT_Y_M_D_H_M).format(E());
        }
        String strL = cxc.L(this.a.getObject("publishedTimeText"));
        if (a.m(strL) && this.a.has("videoInfo")) {
            strL = this.a.getObject("videoInfo").getArray("runs").getObject(2).getString("text");
        }
        if (a.m(strL)) {
            return null;
        }
        return strL;
    }

    @Override
    public DateWrapper g() {
        if (u().equals(StreamType.LIVE_STREAM)) {
            return null;
        }
        if (H()) {
            return new DateWrapper(E());
        }
        f();
        return null;
    }

    @Override
    public long getDuration() throws ParsingException {
        JsonObject jsonObject;
        if (u() == StreamType.LIVE_STREAM) {
            return -1L;
        }
        String strL = cxc.L(this.a.getObject("lengthText"));
        if (a.m(strL)) {
            strL = this.a.getString("lengthSeconds");
            if (a.m(strL) && (jsonObject = (JsonObject) this.a.getArray("thumbnailOverlays").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return bzc.J((JsonObject) obj);
                }
            }).findFirst().orElse(null)) != null) {
                strL = cxc.L(jsonObject.getObject("thumbnailOverlayTimeStatusRenderer").getObject("text"));
            }
            if (a.m(strL)) {
                if (H()) {
                    return -1L;
                }
                throw new ParsingException("Could not get duration");
            }
        }
        return cxc.x0(strL);
    }

    @Override
    public String getName() throws ParsingException {
        String strL = cxc.L(this.a.getObject("title"));
        if (a.m(strL)) {
            throw new ParsingException("Could not get name");
        }
        return strL;
    }

    @Override
    public String getUrl() throws ParsingException {
        try {
            return dzc.m().g(this.a.getString("videoId"));
        } catch (Exception e2) {
            throw new ParsingException("Could not get url", e2);
        }
    }

    @Override
    public List j() {
        return cxc.O(this.a);
    }

    @Override
    public boolean s() {
        return I() || getName().equals("[Private video]") || getName().equals("[Deleted video]");
    }

    @Override
    public boolean t() throws ParsingException {
        try {
            String string = this.a.getObject("navigationEndpoint").getObject("commandMetadata").getObject("webCommandMetadata").getString("webPageType");
            boolean zHas = !a.m(string) && string.equals("WEB_PAGE_TYPE_SHORTS");
            if (!zHas) {
                zHas = this.a.getObject("navigationEndpoint").has("reelWatchEndpoint");
            }
            if (zHas) {
                return zHas;
            }
            JsonObject jsonObject = (JsonObject) this.a.getArray("thumbnailOverlays").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return bzc.K((JsonObject) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return bzc.L((JsonObject) obj);
                }
            }).findFirst().orElse(null);
            if (a.o(jsonObject)) {
                return zHas;
            }
            return jsonObject.getString("style", "").equalsIgnoreCase("SHORTS") || jsonObject.getObject("icon").getString("iconType", "").toLowerCase().contains("shorts");
        } catch (Exception e2) {
            throw new ParsingException("Could not determine if this is short-form content", e2);
        }
    }

    @Override
    public StreamType u() {
        StreamType streamType = this.c;
        if (streamType != null) {
            return streamType;
        }
        for (Object obj : this.a.getArray("badges")) {
            if (obj instanceof JsonObject) {
                JsonObject object = ((JsonObject) obj).getObject("metadataBadgeRenderer");
                if (object.getString("style", "").equals("BADGE_STYLE_TYPE_LIVE_NOW") || object.getString(AnnotatedPrivateKey.LABEL, "").equals("LIVE NOW")) {
                    StreamType streamType2 = StreamType.LIVE_STREAM;
                    this.c = streamType2;
                    return streamType2;
                }
            }
        }
        for (Object obj2 : this.a.getArray("thumbnailOverlays")) {
            if ((obj2 instanceof JsonObject) && ((JsonObject) obj2).getObject("thumbnailOverlayTimeStatusRenderer").getString("style", "").equalsIgnoreCase("LIVE")) {
                StreamType streamType3 = StreamType.LIVE_STREAM;
                this.c = streamType3;
                return streamType3;
            }
        }
        StreamType streamType4 = StreamType.VIDEO_STREAM;
        this.c = streamType4;
        return streamType4;
    }

    @Override
    public String v() {
        if (this.a.has("detailedMetadataSnippets")) {
            return cxc.L(this.a.getArray("detailedMetadataSnippets").getObject(0).getObject("snippetText"));
        }
        if (this.a.has("descriptionSnippet")) {
            return cxc.L(this.a.getObject("descriptionSnippet"));
        }
        return null;
    }

    @Override
    public long w() {
        if (!I() && !H()) {
            String strL = cxc.L(this.a.getObject("viewCountText"));
            if (!a.m(strL)) {
                try {
                    return G(strL, false);
                } catch (Exception unused) {
                }
            }
            if (u() != StreamType.LIVE_STREAM) {
                try {
                    return F();
                } catch (Exception unused2) {
                }
            }
            if (this.a.has("videoInfo")) {
                try {
                    return G(this.a.getObject("videoInfo").getArray("runs").getObject(0).getString("text", ""), true);
                } catch (Exception unused3) {
                }
            }
            if (this.a.has("shortViewCountText")) {
                try {
                    String strL2 = cxc.L(this.a.getObject("shortViewCountText"));
                    if (!a.m(strL2)) {
                        return G(strL2, true);
                    }
                } catch (Exception unused4) {
                }
            }
        }
        return -1L;
    }
}
