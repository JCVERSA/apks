package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.a;

public class oz7 implements b {
    public final JsonObject a;
    public final JsonObject b;
    public final String c;

    public oz7(JsonObject jsonObject, String str) {
        this.a = jsonObject;
        this.b = jsonObject.getObject("uploader");
        this.c = str;
    }

    @Override
    public String a() {
        return this.b.getString("url");
    }

    @Override
    public String b() {
        return this.b.getString("displayName");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public long d() {
        return this.a.getInt("videosLength");
    }

    @Override
    public Description getDescription() {
        String string = this.a.getString("description");
        return a.m(string) ? Description.EMPTY_DESCRIPTION : new Description(string, 3);
    }

    @Override
    public String getName() {
        return this.a.getString("displayName");
    }

    @Override
    public String getUrl() {
        return this.a.getString("url");
    }

    @Override
    public List j() {
        return mz7.j(this.c, this.a);
    }
}
