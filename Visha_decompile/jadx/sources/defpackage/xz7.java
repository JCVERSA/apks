package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import com.transsion.videodownloader.model.Video;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.Frameset;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;
import org.schabi.newpipe.extractor.stream.VideoStream;

public class xz7 extends StreamExtractor {
    public final String g;
    public JsonObject h;
    public final List i;
    public final List j;
    public final List k;
    public ParsingException l;

    public xz7(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.l = null;
        this.g = e();
    }

    public static VideoStream r0(JsonObject jsonObject) {
        return new VideoStream.a().d(String.valueOf(jsonObject.getInt(TtmlNode.ATTR_ID, -1))).b(jsonObject.getString("playlistUrl", ""), true).e(false).i("").h(MediaFormat.MPEG_4).c(DeliveryMethod.HLS).a();
    }

    private void t0(String str) throws ExtractionException {
        try {
            JsonObject jsonObject = (JsonObject) a.d().a(str);
            this.h = jsonObject;
            if (jsonObject == null) {
                throw new ExtractionException("Could not extract PeerTube stream data");
            }
            mz7.n(jsonObject);
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not extract PeerTube stream data", e);
        }
    }

    @Override
    public String A() {
        return oc5.h(this.h, "account.host");
    }

    @Override
    public Locale B() {
        try {
            return new Locale(oc5.h(this.h, "language.id"));
        } catch (ParsingException unused) {
            return null;
        }
    }

    @Override
    public long C() {
        return this.h.getLong("duration");
    }

    @Override
    public String D() {
        return oc5.h(this.h, "licence.label");
    }

    @Override
    public long E() {
        return this.h.getLong("likes");
    }

    @Override
    public StreamExtractor.Privacy G() {
        int i = this.h.getObject("privacy").getInt(TtmlNode.ATTR_ID);
        if (i == 1) {
            return StreamExtractor.Privacy.PUBLIC;
        }
        if (i == 2) {
            return StreamExtractor.Privacy.UNLISTED;
        }
        if (i != 3) {
            return i != 4 ? StreamExtractor.Privacy.OTHER : StreamExtractor.Privacy.INTERNAL;
        }
        return StreamExtractor.Privacy.PRIVATE;
    }

    @Override
    public List I() throws ParsingException {
        ArrayList arrayList = new ArrayList();
        try {
            JsonObject jsonObjectJ0 = j0("chapters");
            if (jsonObjectJ0 != null && jsonObjectJ0.has("chapters")) {
                JsonArray array = jsonObjectJ0.getArray("chapters");
                for (int i = 0; i < array.size(); i++) {
                    JsonObject object = array.getObject(i);
                    arrayList.add(new StreamSegment(object.getString("title"), object.getInt("timecode")));
                }
            }
            return arrayList;
        } catch (IOException | ReCaptchaException e) {
            throw new ParsingException("Could not get stream segments", e);
        }
    }

    @Override
    public StreamType J() {
        return this.h.getBoolean("isLive") ? StreamType.LIVE_STREAM : StreamType.VIDEO_STREAM;
    }

    @Override
    public List K() {
        return mz7.e(this.g, this.h.getObject("channel"));
    }

    @Override
    public String L() {
        return oc5.h(this.h, "channel.displayName");
    }

    @Override
    public String M() {
        return oc5.h(this.h, "channel.url");
    }

    @Override
    public List N() throws ParsingException {
        ParsingException parsingException = this.l;
        if (parsingException == null) {
            return this.i;
        }
        throw parsingException;
    }

    @Override
    public String O() {
        try {
            return oc5.h(this.h, "support");
        } catch (ParsingException unused) {
            return "";
        }
    }

    @Override
    public List P() {
        return oc5.i(this.h.getArray("tags"));
    }

    @Override
    public String Q() {
        return oc5.h(this.h, "publishedAt");
    }

    @Override
    public List R() {
        return mz7.j(this.g, this.h);
    }

    @Override
    public long S() throws ParsingException {
        long jT = T("((#|&|\\?)start=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)");
        if (jT == -2) {
            return 0L;
        }
        return jT;
    }

    @Override
    public DateWrapper U() {
        String strQ = Q();
        if (strQ == null) {
            return null;
        }
        return new DateWrapper(mz7.m(strQ));
    }

    @Override
    public List V() {
        return mz7.e(this.g, this.h.getObject("account"));
    }

    @Override
    public String W() {
        return oc5.h(this.h, "account.displayName");
    }

    @Override
    public String Y() {
        String strH = oc5.h(this.h, "account.name");
        String strH2 = oc5.h(this.h, "account.host");
        return m().c().c("accounts/" + strH + "@" + strH2, this.g).getUrl();
    }

    @Override
    public List Z() {
        return Collections.emptyList();
    }

    @Override
    public List a0() throws ParsingException {
        a();
        if (this.k.isEmpty()) {
            if (J() == StreamType.VIDEO_STREAM) {
                o0();
            } else {
                i0();
            }
        }
        return this.k;
    }

    @Override
    public long b0() {
        return this.h.getLong("views");
    }

    public final void f0(JsonObject jsonObject, boolean z, String str, String str2, String str3, String str4) {
        String strSubstring = str3.substring(str3.lastIndexOf(Consts.DOT) + 1);
        MediaFormat fromSuffix = MediaFormat.getFromSuffix(strSubstring);
        String str5 = str + "-" + strSubstring;
        this.j.add(new AudioStream.a().i(str5 + "-" + str2 + "-" + DeliveryMethod.PROGRESSIVE_HTTP).g(str3, true).l(fromSuffix).f(-1).a());
        if (!org.schabi.newpipe.extractor.utils.a.m(str4)) {
            String strK0 = z ? k0(jsonObject, str2, strSubstring, str3) : l0(jsonObject, str4);
            AudioStream.a aVar = new AudioStream.a();
            DeliveryMethod deliveryMethod = DeliveryMethod.HLS;
            AudioStream audioStreamA = aVar.i(str5 + "-" + deliveryMethod).g(strK0, true).h(deliveryMethod).l(fromSuffix).f(-1).k(str4).a();
            if (!Stream.containSimilarStream(audioStreamA, this.j)) {
                this.j.add(audioStreamA);
            }
        }
        String strH = oc5.h(jsonObject, "torrentUrl");
        if (org.schabi.newpipe.extractor.utils.a.m(strH)) {
            return;
        }
        List list = this.j;
        AudioStream.a aVar2 = new AudioStream.a();
        DeliveryMethod deliveryMethod2 = DeliveryMethod.TORRENT;
        list.add(aVar2.i(str5 + "-" + str2 + "-" + deliveryMethod2).g(strH, true).h(deliveryMethod2).l(fromSuffix).f(-1).a());
    }

    public final void g0(JsonObject jsonObject, boolean z, String str, String str2, String str3, String str4) {
        String strSubstring = str3.substring(str3.lastIndexOf(Consts.DOT) + 1);
        MediaFormat fromSuffix = MediaFormat.getFromSuffix(strSubstring);
        String str5 = str + "-" + strSubstring;
        this.k.add(new VideoStream.a().d(str5 + "-" + str2 + "-" + DeliveryMethod.PROGRESSIVE_HTTP).b(str3, true).e(false).i(str).h(fromSuffix).a());
        if (!org.schabi.newpipe.extractor.utils.a.m(str4)) {
            String strK0 = z ? k0(jsonObject, str2, strSubstring, str3) : l0(jsonObject, str4);
            VideoStream.a aVar = new VideoStream.a();
            DeliveryMethod deliveryMethod = DeliveryMethod.HLS;
            VideoStream videoStreamA = aVar.d(str5 + "-" + deliveryMethod).b(strK0, true).e(false).c(deliveryMethod).i(str).h(fromSuffix).g(str4).a();
            if (!Stream.containSimilarStream(videoStreamA, this.k)) {
                this.k.add(videoStreamA);
            }
        }
        String strH = oc5.h(jsonObject, "torrentUrl");
        if (org.schabi.newpipe.extractor.utils.a.m(strH)) {
            return;
        }
        List list = this.k;
        VideoStream.a aVar2 = new VideoStream.a();
        DeliveryMethod deliveryMethod2 = DeliveryMethod.TORRENT;
        list.add(aVar2.d(str5 + "-" + str2 + "-" + deliveryMethod2).b(strH, true).e(false).c(deliveryMethod2).i(str).h(fromSuffix).a());
    }

    public final void h0(qy9 qy9Var, JsonObject jsonObject) throws ParsingException {
        try {
            for (Object obj : (JsonArray) oc5.j(jsonObject, "data")) {
                if (obj instanceof JsonObject) {
                    yz7 yz7Var = new yz7((JsonObject) obj, this.g);
                    if (!yz7Var.getUrl().equals(p())) {
                        qy9Var.d(yz7Var);
                    }
                }
            }
        } catch (Exception e) {
            throw new ParsingException("Could not extract related videos", e);
        }
    }

    public final void i0() throws ParsingException {
        try {
            java.util.stream.Stream map = this.h.getArray("streamingPlaylists").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return xz7.r0((JsonObject) obj);
                }
            });
            final List list = this.k;
            Objects.requireNonNull(list);
            map.forEachOrdered(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    list.add((VideoStream) obj);
                }
            });
        } catch (Exception e) {
            throw new ParsingException("Could not get video streams", e);
        }
    }

    public final JsonObject j0(String str) throws ParsingException {
        fu8 fu8VarB = f().b(this.g + "/api/v1/videos/" + i() + "/" + str);
        if (fu8VarB == null) {
            throw new ParsingException("Could not get segments from API.");
        }
        if (fu8VarB.d() == 400) {
            return null;
        }
        if (fu8VarB.d() == 200) {
            try {
                return (JsonObject) a.d().a(fu8VarB.c());
            } catch (JsonParserException e) {
                throw new ParsingException("Could not parse json data for segments", e);
            }
        }
        throw new ParsingException("Could not get segments from API. Response code: " + fu8VarB.d());
    }

    @Override
    public String k() {
        return oc5.h(this.h, "name");
    }

    public final String k0(JsonObject jsonObject, String str, String str2, String str3) {
        if ("fileDownloadUrl".equals(str)) {
            str3 = oc5.h(jsonObject, "fileUrl");
        }
        return str3.replace("-fragmented." + str2, Video.SUFFIX.SUFFIX_M3U8);
    }

    public final String l0(JsonObject jsonObject, String str) {
        return str.replace("master", oc5.e(jsonObject, "resolution.id").toString());
    }

    @Override
    public qy9 H() throws ParsingException {
        String strN0;
        List listP = P();
        if (listP.isEmpty()) {
            strN0 = this.g + "/api/v1/accounts/" + oc5.h(this.h, "account.name") + "@" + oc5.h(this.h, "account.host") + "/videos?start=0&count=8";
        } else {
            strN0 = n0(listP);
        }
        if (org.schabi.newpipe.extractor.utils.a.k(strN0)) {
            return null;
        }
        qy9 qy9Var = new qy9(n());
        p0(qy9Var, strN0);
        return qy9Var;
    }

    public final String n0(List list) {
        String str = this.g + "/api/v1/search/videos";
        StringBuilder sb = new StringBuilder();
        sb.append("start=0&count=8&sort=-createdAt");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            sb.append("&tagsOneOf=");
            sb.append(org.schabi.newpipe.extractor.utils.a.e(str2));
        }
        return str + "?" + ((Object) sb);
    }

    public final void o0() throws ParsingException {
        q0(this.h.getArray("files"), "");
        try {
            for (JsonObject jsonObject : (List) this.h.getArray("streamingPlaylists").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).collect(Collectors.toList())) {
                q0(jsonObject.getArray("files"), jsonObject.getString("playlistUrl"));
            }
        } catch (Exception e) {
            throw new ParsingException("Could not get streams", e);
        }
    }

    public final void p0(qy9 qy9Var, String str) throws ParsingException {
        JsonObject jsonObject;
        fu8 fu8VarB = f().b(str);
        if (fu8VarB == null || org.schabi.newpipe.extractor.utils.a.k(fu8VarB.c())) {
            jsonObject = null;
        } else {
            try {
                jsonObject = (JsonObject) a.d().a(fu8VarB.c());
            } catch (JsonParserException e) {
                throw new ParsingException("Could not parse json data for related videos", e);
            }
        }
        if (jsonObject != null) {
            h0(qy9Var, jsonObject);
        }
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        fu8 fu8VarB = c23Var.b(this.g + "/api/v1/videos/" + i());
        if (fu8VarB == null) {
            throw new ExtractionException("Could not extract PeerTube channel data");
        }
        t0(fu8VarB.c());
        s0();
    }

    public final void q0(JsonArray jsonArray, String str) throws ParsingException {
        try {
            boolean z = !org.schabi.newpipe.extractor.utils.a.m(str) && str.endsWith("-master.m3u8");
            for (JsonObject jsonObject : (List) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).collect(Collectors.toList())) {
                String strH = oc5.h(jsonObject, jsonObject.has("fileUrl") ? "fileUrl" : "fileDownloadUrl");
                if (org.schabi.newpipe.extractor.utils.a.m(strH)) {
                    return;
                }
                String strH2 = oc5.h(jsonObject, "resolution.label");
                String str2 = jsonObject.has("fileUrl") ? "fileUrl" : "fileDownloadUrl";
                if (strH2.toLowerCase().contains("audio")) {
                    f0(jsonObject, z, strH2, str2, strH, str);
                } else {
                    g0(jsonObject, z, strH2, str2, strH, str);
                }
            }
        } catch (Exception e) {
            throw new ParsingException("Could not get streams from array", e);
        }
    }

    @Override
    public int r() {
        return oc5.b(this.h, "nsfw").booleanValue() ? 18 : 0;
    }

    @Override
    public List s() throws ParsingException {
        a();
        if (this.j.isEmpty() && this.k.isEmpty() && J() == StreamType.VIDEO_STREAM) {
            o0();
        }
        return this.j;
    }

    public final void s0() {
        if (this.i.isEmpty()) {
            try {
                for (Object obj : oc5.a((JsonObject) a.d().a(f().b(this.g + "/api/v1/videos/" + i() + "/captions").c()), "data")) {
                    if (obj instanceof JsonObject) {
                        JsonObject jsonObject = (JsonObject) obj;
                        String str = this.g + oc5.h(jsonObject, "captionPath");
                        String strH = oc5.h(jsonObject, "language.id");
                        MediaFormat fromSuffix = MediaFormat.getFromSuffix(str.substring(str.lastIndexOf(Consts.DOT) + 1));
                        if (fromSuffix != null && !org.schabi.newpipe.extractor.utils.a.m(strH)) {
                            this.i.add(new SubtitlesStream.a().c(str, true).e(fromSuffix).d(strH).b(false).a());
                        }
                    }
                }
            } catch (Exception e) {
                this.l = new ParsingException("Could not get subtitles", e);
            }
        }
    }

    @Override
    public String t() {
        return oc5.h(this.h, "category.label");
    }

    @Override
    public Description v() {
        try {
            String strH = oc5.h(this.h, "description");
            if (strH.length() == 250 && strH.substring(247).equals("...")) {
                c23 c23VarC = org.schabi.newpipe.extractor.a.c();
                try {
                    strH = oc5.h((JsonObject) a.d().a(c23VarC.b(this.g + "/api/v1/videos/" + i() + "/description").c()), "description");
                } catch (JsonParserException | IOException | ReCaptchaException unused) {
                }
            }
            return new Description(strH, 2);
        } catch (ParsingException unused2) {
            return Description.EMPTY_DESCRIPTION;
        }
    }

    @Override
    public long w() {
        return this.h.getLong("dislikes");
    }

    @Override
    public List y() throws ExtractionException {
        ArrayList arrayList = new ArrayList();
        try {
            JsonObject jsonObjectJ0 = j0("storyboards");
            if (jsonObjectJ0 != null && jsonObjectJ0.has("storyboards")) {
                for (Object obj : jsonObjectJ0.getArray("storyboards")) {
                    if (obj instanceof JsonObject) {
                        JsonObject jsonObject = (JsonObject) obj;
                        String string = jsonObject.getString("storyboardPath");
                        int i = jsonObject.getInt("spriteWidth");
                        int i2 = jsonObject.getInt("spriteHeight");
                        int i3 = jsonObject.getInt("totalWidth") / i;
                        int i4 = jsonObject.getInt("totalHeight") / i2;
                        arrayList.add(new Frameset(hdb.a(new Object[]{this.g + string}), i, i2, i3 * i4, jsonObject.getInt("spriteDuration") * 1000, i3, i4));
                    }
                }
            }
            return arrayList;
        } catch (IOException | ReCaptchaException e) {
            throw new ExtractionException("Could not get frames", e);
        }
    }

    @Override
    public String z() {
        a();
        return (J() != StreamType.VIDEO_STREAM || org.schabi.newpipe.extractor.utils.a.o(this.h.getObject("files"))) ? this.h.getArray("streamingPlaylists").getObject(0).getString("playlistUrl", "") : this.h.getObject("files").getString("playlistUrl", "");
    }
}
