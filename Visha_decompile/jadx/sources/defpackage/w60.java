package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import com.hunantv.imgo.net.entity.AuthInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.playlist.c;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamSegment;

public class w60 extends k70 {
    public JsonObject j;

    public w60(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
    }

    public static ParsingException l0() {
        return new ParsingException("Could not get uploader name");
    }

    public static JsonObject m0(int i) throws ParsingException {
        try {
            return (JsonObject) a.d().a(org.schabi.newpipe.extractor.a.c().b("https://bandcamp.com/api/bcweekly/1/get?id=" + i).c());
        } catch (JsonParserException | IOException | ReCaptchaException e) {
            throw new ParsingException("could not get show data", e);
        }
    }

    @Override
    public long C() {
        return this.j.getLong("audio_duration");
    }

    @Override
    public String D() {
        return "";
    }

    @Override
    public List I() {
        JsonArray<JsonObject> array = this.j.getArray("tracks");
        ArrayList arrayList = new ArrayList(array.size());
        for (JsonObject jsonObject : array) {
            StreamSegment streamSegment = new StreamSegment(jsonObject.getString("title"), jsonObject.getInt("timecode"));
            streamSegment.setPreviewUrl(j60.f(jsonObject.getLong("track_art_id"), true));
            streamSegment.setChannelName(jsonObject.getString("artist"));
            arrayList.add(streamSegment);
        }
        return arrayList;
    }

    @Override
    public List P() {
        return Collections.emptyList();
    }

    @Override
    public String Q() {
        return this.j.getString("published_date");
    }

    @Override
    public List R() {
        return j60.h(this.j.getLong("show_image_id"), false);
    }

    @Override
    public List V() {
        return Collections.singletonList(new Image("https://bandcamp.com/img/buttons/bandcamp-button-circle-whitecolor-512.png", 512, 512, Image.ResolutionLevel.MEDIUM));
    }

    @Override
    public String W() {
        return (String) vc5.a(this.j.getString("image_caption")).H0(CmcdData.OBJECT_TYPE_AUDIO_ONLY).stream().map(new u60()).findFirst().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return w60.l0();
            }
        });
    }

    @Override
    public String Y() throws ContentNotSupportedException {
        throw new ContentNotSupportedException("Fan pages are not supported");
    }

    @Override
    public c H() {
        return null;
    }

    @Override
    public String k() {
        return this.j.getString(AuthInfo.Component.CODE_SUBTITLE);
    }

    @Override
    public String p() {
        return j().getUrl();
    }

    @Override
    public void q(c23 c23Var) {
        this.j = m0(Integer.parseInt(i()));
    }

    @Override
    public List s() {
        ArrayList arrayList = new ArrayList();
        JsonObject object = this.j.getObject("audio_stream");
        if (object.has("mp3-128")) {
            arrayList.add(new AudioStream.a().i("mp3-128").g(object.getString("mp3-128"), true).l(MediaFormat.MP3).f(128).a());
        }
        if (object.has("opus-lo")) {
            arrayList.add(new AudioStream.a().i("opus-lo").g(object.getString("opus-lo"), true).l(MediaFormat.OPUS).f(100).a());
        }
        return arrayList;
    }

    @Override
    public String t() {
        return "";
    }

    @Override
    public Description v() {
        return new Description(this.j.getString("desc"), 3);
    }
}
