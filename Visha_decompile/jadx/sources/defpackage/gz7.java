package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Objects;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.Description;

public class gz7 implements fa1 {
    public final JsonObject a;
    public final JsonArray b;
    public final String c;
    public final String d;
    public final boolean e;
    public Integer f;

    public gz7(JsonObject jsonObject, JsonArray jsonArray, String str, String str2, boolean z) {
        this.a = jsonObject;
        this.b = jsonArray;
        this.c = str;
        this.d = str2;
        this.e = z;
    }

    @Override
    public Page A() {
        JsonArray jsonArray;
        if (m() == 0) {
            return null;
        }
        String string = oc5.e(this.a, "threadId").toString();
        String str = this.c + "/" + string;
        if (!this.e || (jsonArray = this.b) == null || jsonArray.isEmpty()) {
            return new Page(str, string);
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.put("children", this.b);
        return new Page(str, string, tc5.b(jsonObject).getBytes(StandardCharsets.UTF_8));
    }

    @Override
    public String a() {
        String strH = oc5.h(this.a, "account.name");
        String strH2 = oc5.h(this.a, "account.host");
        return ce9.d.c().c("accounts/" + strH + "@" + strH2, this.d).getUrl();
    }

    @Override
    public String b() {
        return oc5.h(this.a, "account.name") + "@" + oc5.h(this.a, "account.host");
    }

    @Override
    public List e() {
        return mz7.e(this.d, this.a.getObject("account"));
    }

    @Override
    public String f() {
        return oc5.h(this.a, "createdAt");
    }

    @Override
    public DateWrapper g() {
        return new DateWrapper(mz7.m(f()));
    }

    @Override
    public String getName() {
        return oc5.h(this.a, "account.displayName");
    }

    @Override
    public String getUrl() {
        return this.c + "/" + q();
    }

    @Override
    public boolean i() {
        return this.a.has("totalRepliesFromVideoAuthor") && this.a.getInt("totalRepliesFromVideoAuthor") > 0;
    }

    @Override
    public List j() {
        return e();
    }

    @Override
    public Description l() {
        String strH = oc5.h(this.a, "text");
        try {
            return new Description(vc5.a(strH).u1().n1(), 3);
        } catch (Exception unused) {
            return new Description(strH.replaceAll("(?s)<[^>]*>(\\s*<[^>]*>)*", ""), 3);
        }
    }

    @Override
    public int m() {
        if (this.f == null) {
            JsonArray jsonArray = this.b;
            if (jsonArray == null || jsonArray.isEmpty()) {
                this.f = Integer.valueOf(oc5.e(this.a, "totalReplies").intValue());
            } else {
                this.f = Integer.valueOf(this.b.size());
            }
        }
        return this.f.intValue();
    }

    @Override
    public String q() {
        return Objects.toString(Long.valueOf(this.a.getLong(TtmlNode.ATTR_ID)), null);
    }
}
