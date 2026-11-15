package defpackage;

import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.a;

public class juc implements fa1 {
    public final JsonObject a;
    public final JsonObject b;
    public final JsonObject c;
    public final JsonObject d;
    public final String e;
    public final ona f;

    public juc(JsonObject jsonObject, JsonObject jsonObject2, JsonObject jsonObject3, JsonObject jsonObject4, String str, ona onaVar) {
        this.a = jsonObject;
        this.b = jsonObject2;
        this.c = jsonObject3;
        this.d = jsonObject4;
        this.e = str;
    }

    public static JsonObject E(JsonObject jsonObject) {
        return jsonObject.getObject("continuationItemRenderer", null);
    }

    public static String F(JsonObject jsonObject) {
        return jsonObject.getObject("continuationEndpoint").getObject("continuationCommand").getString("token");
    }

    public static ParsingException G() {
        return new ParsingException("Could not get comment replies continuation");
    }

    @Override
    public Page A() {
        if (a.o(this.b)) {
            return null;
        }
        return new Page(this.e, (String) this.b.getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return juc.E((JsonObject) obj);
            }
        }).filter(new guc()).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return juc.F((JsonObject) obj);
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return juc.G();
            }
        }));
    }

    @Override
    public String a() throws ParsingException {
        JsonObject object = this.c.getObject("author");
        String string = object.getString("channelId");
        if (a.m(string)) {
            string = object.getObject("channelCommand").getObject("innertubeCommand").getObject("browseEndpoint").getString("browseId");
            if (a.m(string)) {
                string = object.getObject("avatar").getObject("endpoint").getObject("innertubeCommand").getObject("browseEndpoint").getString("browseId");
                if (a.m(string)) {
                    throw new ParsingException("Could not get channel ID");
                }
            }
        }
        return "https://www.youtube.com/channel/" + string;
    }

    @Override
    public String b() {
        return this.c.getObject("author").getString("displayName");
    }

    @Override
    public List e() {
        return cxc.F(this.c.getObject("avatar").getObject("image").getArray("sources"));
    }

    @Override
    public String f() {
        return this.c.getObject(StringLookupFactory.KEY_PROPERTIES).getString("publishedTime");
    }

    @Override
    public DateWrapper g() {
        String strF = f();
        if (a.m(strF)) {
            return null;
        }
        return this.f.a(strF);
    }

    @Override
    public String getName() {
        return b();
    }

    @Override
    public String getUrl() {
        return this.e;
    }

    @Override
    public boolean h() {
        return this.c.getObject("author").getBoolean("isCreator");
    }

    @Override
    public boolean i() {
        JsonObject jsonObject = this.b;
        return jsonObject != null && jsonObject.has("viewRepliesCreatorThumbnail");
    }

    @Override
    public List j() {
        return e();
    }

    @Override
    public boolean k() {
        return this.a.has("pinnedText");
    }

    @Override
    public Description l() {
        return new Description(bvc.i(this.c.getObject(StringLookupFactory.KEY_PROPERTIES).getObject(ICode.CALL.CALL_KEY_CONTENT)), 1);
    }

    @Override
    public int m() {
        String string = this.c.getObject("toolbar").getString("replyCount");
        if (a.m(string)) {
            return 0;
        }
        return (int) a.r(string);
    }

    @Override
    public boolean p() {
        return "TOOLBAR_HEART_STATE_HEARTED".equals(this.d.getString("heartState"));
    }

    @Override
    public String q() throws ParsingException {
        String string = this.c.getObject(StringLookupFactory.KEY_PROPERTIES).getString("commentId");
        if (a.m(string)) {
            string = this.a.getString("commentId");
            if (a.m(string)) {
                throw new ParsingException("Could not get comment ID");
            }
        }
        return string;
    }

    @Override
    public int r() throws ParsingException {
        String strY = y();
        try {
            if (a.k(strY)) {
                return 0;
            }
            return (int) a.r(strY);
        } catch (Exception e) {
            throw new ParsingException("Unexpected error while converting textual like count to like count", e);
        }
    }

    @Override
    public String y() {
        return this.c.getObject("toolbar").getString("likeCountNotliked");
    }
}
