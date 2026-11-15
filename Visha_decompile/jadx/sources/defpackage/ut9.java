package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import io.appmetrica.analytics.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.GeographicRestrictionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.SoundCloudGoPlusContentException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.a;

public class ut9 extends StreamExtractor {
    public JsonObject g;
    public boolean h;

    public ut9(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
        this.h = true;
    }

    @Override
    public long C() {
        return this.g.getLong("duration") / 1000;
    }

    @Override
    public String D() {
        return this.g.getString("license");
    }

    @Override
    public long E() {
        return this.g.getLong("likes_count", -1L);
    }

    @Override
    public StreamExtractor.Privacy G() {
        return this.g.getString("sharing").equals(BuildConfig.SDK_BUILD_FLAVOR) ? StreamExtractor.Privacy.PUBLIC : StreamExtractor.Privacy.PRIVATE;
    }

    @Override
    public StreamType J() {
        return StreamType.AUDIO_STREAM;
    }

    @Override
    public List P() {
        String[] strArrSplit = this.g.getString("tag_list").split(" ");
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (String str : strArrSplit) {
            if (str.startsWith("\"")) {
                sb.append(str.replace("\"", ""));
                z = true;
            } else if (z) {
                if (str.endsWith("\"")) {
                    sb.append(" ");
                    sb.append(str.replace("\"", ""));
                    arrayList.add(sb.toString());
                    z = false;
                } else {
                    sb.append(" ");
                    sb.append(str);
                }
            } else if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @Override
    public String Q() {
        return this.g.getString("created_at").replace("T", " ").replace("Z", "");
    }

    @Override
    public List R() {
        return jt9.f(this.g);
    }

    @Override
    public long S() {
        return T("(#t=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)");
    }

    @Override
    public DateWrapper U() {
        return new DateWrapper(jt9.q(this.g.getString("created_at")));
    }

    @Override
    public List V() {
        return jt9.d(jt9.h(this.g));
    }

    @Override
    public String W() {
        return jt9.m(this.g);
    }

    @Override
    public String Y() {
        return jt9.n(this.g);
    }

    @Override
    public List Z() {
        return Collections.emptyList();
    }

    @Override
    public List a0() {
        return Collections.emptyList();
    }

    @Override
    public long b0() {
        return this.g.getLong("playback_count");
    }

    @Override
    public boolean d0() {
        return this.g.getObject("user").getBoolean("verified");
    }

    public final void f0(JsonArray jsonArray, final List list) {
        jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEachOrdered(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.i0(list, (JsonObject) obj);
            }
        });
    }

    @Override
    public qy9 H() {
        qy9 qy9Var = new qy9(n());
        jt9.k(qy9Var, "https://api-v2.soundcloud.com/tracks/" + a.e(i()) + "/related?client_id=" + a.e(jt9.c()));
        return qy9Var;
    }

    public final String h0(String str) throws ParsingException {
        String str2 = str + "?client_id=" + jt9.c();
        String string = this.g.getString("track_authorization");
        if (!a.m(string)) {
            str2 = str2 + "&track_authorization=" + string;
        }
        try {
            return ((JsonObject) com.grack.nanojson.a.d().a(org.schabi.newpipe.extractor.a.c().b(str2).c())).getString("url");
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse streamable URL", e);
        }
    }

    @Override
    public String i() {
        return String.valueOf(this.g.getInt(TtmlNode.ATTR_ID));
    }

    public final void i0(List list, JsonObject jsonObject) {
        String string = jsonObject.getString("url");
        if (a.m(string)) {
            return;
        }
        try {
            String string2 = jsonObject.getString("preset", " ");
            String string3 = jsonObject.getObject("format").getString("protocol");
            if (string3.contains("encrypted")) {
                return;
            }
            AudioStream.a aVarI = new AudioStream.a().i(string2);
            if (string3.equals("hls")) {
                aVarI.h(DeliveryMethod.HLS);
            }
            aVarI.g(h0(string), true);
            if (string2.contains("mp3")) {
                aVarI.l(MediaFormat.MP3);
                aVarI.f(128);
            } else {
                if (!string2.contains("opus")) {
                    return;
                }
                aVarI.l(MediaFormat.OPUS);
                aVarI.f(64);
                aVarI.h(DeliveryMethod.HLS);
            }
            AudioStream audioStreamA = aVarI.a();
            if (Stream.containSimilarStream(audioStreamA, list)) {
                return;
            }
            list.add(audioStreamA);
        } catch (IOException | ExtractionException unused) {
        }
    }

    @Override
    public String k() {
        return this.g.getString("title");
    }

    @Override
    public void q(c23 c23Var) throws ParsingException {
        JsonObject jsonObjectR = jt9.r(c23Var, p());
        this.g = jsonObjectR;
        String string = jsonObjectR.getString("policy", "");
        if (string.equals("ALLOW") || string.equals("MONETIZE")) {
            return;
        }
        this.h = false;
        if (string.equals("SNIP")) {
            throw new SoundCloudGoPlusContentException();
        }
        if (string.equals("BLOCK")) {
            throw new GeographicRestrictionException("This track is not available in user's country");
        }
        throw new ContentNotAvailableException("Content not available: policy " + string);
    }

    @Override
    public List s() throws ExtractionException {
        ArrayList arrayList = new ArrayList();
        if (!this.g.getBoolean("streamable") || !this.h) {
            return arrayList;
        }
        try {
            JsonArray array = this.g.getObject("media").getArray("transcodings");
            if (!a.n(array)) {
                f0(array, arrayList);
            }
            return arrayList;
        } catch (NullPointerException e) {
            throw new ExtractionException("Could not get audio streams", e);
        }
    }

    @Override
    public String t() {
        return this.g.getString("genre");
    }

    @Override
    public Description v() {
        return new Description(this.g.getString("description"), 3);
    }
}
