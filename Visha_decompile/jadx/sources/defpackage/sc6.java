package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.hubsdk.display.BuildConfig;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.stream.VideoStream;

public class sc6 extends StreamExtractor {
    public JsonObject g;
    public String h;
    public JsonObject i;

    public static final class a {
        public final JsonObject a;
        public final String b;
        public final JsonObject c;

        public a(JsonObject jsonObject, String str, JsonObject jsonObject2) {
            this.a = jsonObject;
            this.b = str;
            this.c = jsonObject2;
        }
    }

    public sc6(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
        this.g = null;
        this.h = "";
        this.i = null;
    }

    public static AudioStream q0(a aVar) {
        AudioStream.a aVarF = new AudioStream.a().i(aVar.c.getString("tech", " ")).g(aVar.c.getString("url"), true).f(-1);
        return "hls".equals(aVar.b) ? aVarF.h(DeliveryMethod.HLS).a() : aVarF.l(MediaFormat.getFromSuffix(aVar.b)).a();
    }

    public static JsonObject r0(JsonObject jsonObject) {
        return jsonObject.getObject("urls");
    }

    public static boolean s0(String str, JsonObject jsonObject) {
        return jsonObject.has(str);
    }

    public static String t0(String str, JsonObject jsonObject) {
        return jsonObject.getObject(str).getString("url", "");
    }

    public static boolean u0(String str, JsonObject jsonObject) {
        return str.equals(jsonObject.getString("type"));
    }

    public static boolean v0(Map.Entry entry) {
        return entry.getValue() instanceof JsonObject;
    }

    public static a w0(JsonObject jsonObject, Map.Entry entry) {
        return new a(jsonObject, (String) entry.getKey(), (JsonObject) entry.getValue());
    }

    public static Stream x0(final JsonObject jsonObject) {
        return jsonObject.getObject("urls").entrySet().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return sc6.v0((Map.Entry) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return sc6.w0(jsonObject, (Map.Entry) obj);
            }
        });
    }

    public static boolean y0(a aVar) {
        return !"dash".equals(aVar.b);
    }

    public static VideoStream z0(a aVar) {
        JsonArray array = aVar.a.getArray("videoSize");
        VideoStream.a aVarI = new VideoStream.a().d(aVar.c.getString("tech", " ")).b(aVar.c.getString("url"), true).e(false).i(array.getInt(0) + "x" + array.getInt(1));
        return "hls".equals(aVar.b) ? aVarI.c(DeliveryMethod.HLS).a() : aVarI.h(MediaFormat.getFromSuffix(aVar.b)).a();
    }

    @Override
    public StreamType J() {
        return StreamType.LIVE_STREAM;
    }

    @Override
    public List R() {
        return wc6.c(this.i);
    }

    @Override
    public String W() {
        return this.g.getString("conference");
    }

    @Override
    public String Y() {
        return "https://streaming.media.ccc.de/" + this.g.getString("slug");
    }

    @Override
    public List Z() {
        return Collections.emptyList();
    }

    @Override
    public List a0() {
        return p0("video", new Function() {
            @Override
            public final Object apply(Object obj) {
                return sc6.z0((sc6.a) obj);
            }
        });
    }

    @Override
    public long b0() {
        return -1L;
    }

    @Override
    public String k() {
        return this.i.getString(BuildConfig.FLAVOR);
    }

    public final String o0(final String str) {
        return (String) this.i.getArray("streams").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return sc6.r0((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return sc6.s0(str, (JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return sc6.t0(str, (JsonObject) obj);
            }
        }).findFirst().orElse("");
    }

    public final List p0(final String str, Function function) {
        return (List) this.i.getArray("streams").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return sc6.u0(str, (JsonObject) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return sc6.x0((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return sc6.y0((sc6.a) obj);
            }
        }).map(function).collect(Collectors.toList());
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        JsonArray jsonArrayB = wc6.b(c23Var, h());
        for (int i = 0; i < jsonArrayB.size(); i++) {
            JsonObject object = jsonArrayB.getObject(i);
            JsonArray array = object.getArray("groups");
            for (int i2 = 0; i2 < array.size(); i2++) {
                String string = array.getObject(i2).getString("group");
                JsonArray array2 = array.getObject(i2).getArray("rooms");
                for (int i3 = 0; i3 < array2.size(); i3++) {
                    JsonObject object2 = array2.getObject(i3);
                    if (i().equals(object.getString("slug") + "/" + object2.getString("slug"))) {
                        this.g = object;
                        this.h = string;
                        this.i = object2;
                        return;
                    }
                }
            }
        }
        throw new ExtractionException("Could not find room matching id: '" + i() + "'");
    }

    @Override
    public List s() {
        return p0("audio", new Function() {
            @Override
            public final Object apply(Object obj) {
                return sc6.q0((sc6.a) obj);
            }
        });
    }

    @Override
    public String t() {
        return this.h;
    }

    @Override
    public String u() {
        return o0("dash");
    }

    @Override
    public Description v() {
        return new Description(this.g.getString("description") + " - " + this.h, 3);
    }

    @Override
    public String z() {
        return o0("hls");
    }
}
