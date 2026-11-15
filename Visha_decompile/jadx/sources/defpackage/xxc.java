package defpackage;

import com.grack.nanojson.JsonObject;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.a;

public class xxc extends ksc {
    public final JsonObject b;
    public final JsonObject c;

    public xxc(JsonObject jsonObject) {
        super(jsonObject);
        this.b = jsonObject.getObject("shortBylineText");
        this.c = jsonObject.getObject("longBylineText");
    }

    @Override
    public String a() throws ParsingException {
        String strQ = cxc.Q(this.c);
        if (strQ == null && (strQ = cxc.Q(this.b)) == null) {
            throw new ParsingException("Could not get uploader URL");
        }
        return strQ;
    }

    @Override
    public String b() throws ParsingException {
        String strL = cxc.L(this.c);
        if (a.m(strL)) {
            strL = cxc.L(this.b);
            if (a.m(strL)) {
                throw new ParsingException("Could not get uploader name");
            }
        }
        return strL;
    }

    @Override
    public boolean c() {
        return false;
    }
}
