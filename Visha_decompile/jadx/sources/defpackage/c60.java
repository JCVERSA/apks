package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.stream.Description;

public class c60 implements fa1 {
    public final JsonObject a;
    public final String b;

    public c60(JsonObject jsonObject, String str) {
        this.a = jsonObject;
        this.b = str;
    }

    @Override
    public String b() {
        return this.a.getString("name");
    }

    @Override
    public List e() {
        return j60.h(this.a.getLong("image_id"), false);
    }

    @Override
    public String getName() {
        return l().getContent();
    }

    @Override
    public String getUrl() {
        return this.b;
    }

    @Override
    public List j() {
        return e();
    }

    @Override
    public Description l() {
        return new Description(this.a.getString("why"), 3);
    }
}
