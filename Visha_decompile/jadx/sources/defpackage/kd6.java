package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.VideoStream;

public class kd6 extends StreamExtractor {
    public JsonObject g;
    public JsonObject h;

    public kd6(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
    }

    public static ParsingException f0(String str) {
        return new ParsingException("Cannot convert this language to a locale: " + str);
    }

    @Override
    public Locale B() {
        return Localization.getLocaleFromThreeLetterCode(this.g.getString("original_language"));
    }

    @Override
    public long C() {
        return this.g.getInt(SessionDescription.ATTR_LENGTH);
    }

    @Override
    public StreamType J() {
        return StreamType.VIDEO_STREAM;
    }

    @Override
    public List P() {
        return oc5.i(this.g.getArray("tags"));
    }

    @Override
    public String Q() {
        return this.g.getString("release_date");
    }

    @Override
    public List R() {
        return wc6.e(this.g);
    }

    @Override
    public DateWrapper U() {
        return new DateWrapper(wc6.g(Q()));
    }

    @Override
    public List V() {
        return wc6.a(this.h.getString("logo_url"));
    }

    @Override
    public String W() {
        return this.g.getString("conference_url").replaceFirst("https://(api\\.)?media\\.ccc\\.de/public/conferences/", "");
    }

    @Override
    public String Y() {
        return "https://media.ccc.de/c/" + W();
    }

    @Override
    public List Z() {
        return Collections.emptyList();
    }

    @Override
    public List a0() {
        JsonArray array = this.g.getArray("recordings");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < array.size(); i++) {
            JsonObject object = array.getObject(i);
            String string = object.getString("mime_type");
            if (string.startsWith("video")) {
                arrayList.add(new VideoStream.a().d(object.getString("filename", " ")).b(object.getString("recording_url"), true).e(false).h(string.endsWith("webm") ? MediaFormat.WEBM : string.endsWith("mp4") ? MediaFormat.MPEG_4 : null).i(object.getInt("height") + TtmlNode.TAG_P).a());
            }
        }
        return arrayList;
    }

    @Override
    public long b0() {
        return this.g.getInt("view_count");
    }

    @Override
    public String k() {
        return this.g.getString("title");
    }

    @Override
    public String l() {
        return this.g.getString("frontend_link");
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        String str = "https://api.media.ccc.de/public/events/" + i();
        try {
            this.g = (JsonObject) a.d().a(c23Var.b(str).c());
            this.h = (JsonObject) a.d().a(c23Var.b(this.g.getString("conference_url")).c());
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse json returned by URL: " + str, e);
        }
    }

    @Override
    public List s() {
        MediaFormat mediaFormat;
        JsonArray array = this.g.getArray("recordings");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < array.size(); i++) {
            JsonObject object = array.getObject(i);
            String string = object.getString("mime_type");
            if (string.startsWith("audio")) {
                if (string.endsWith("opus")) {
                    mediaFormat = MediaFormat.OPUS;
                } else if (string.endsWith("mpeg")) {
                    mediaFormat = MediaFormat.MP3;
                } else {
                    mediaFormat = string.endsWith("ogg") ? MediaFormat.OGG : null;
                }
                AudioStream.a aVarF = new AudioStream.a().i(object.getString("filename", " ")).g(object.getString("recording_url"), true).l(mediaFormat).f(-1);
                final String string2 = object.getString("language");
                if (string2 != null && !string2.contains("-")) {
                    aVarF.b((Locale) un5.a(string2).orElseThrow(new Supplier() {
                        @Override
                        public final Object get() {
                            return kd6.f0(string2);
                        }
                    }));
                }
                arrayList.add(aVarF.a());
            }
        }
        return arrayList;
    }

    @Override
    public Description v() {
        return new Description(this.g.getString("description"), 3);
    }
}
