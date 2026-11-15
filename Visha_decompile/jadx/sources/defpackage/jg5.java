package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;

public class jg5 {
    public final StreamingService a;
    public final HashMap b = new HashMap();
    public String c = null;
    public Localization d;
    public ContentCountry e;

    public static class a {
        public final b a;
        public final em5 b;

        public a(b bVar, em5 em5Var) {
            this.a = bVar;
            this.b = em5Var;
        }
    }

    public interface b {
        ig5 a(StreamingService streamingService, String str, String str2);
    }

    public jg5(StreamingService streamingService) {
        this.a = streamingService;
    }

    public void a(b bVar, em5 em5Var, String str) {
        if (this.b.get(str) == null) {
            this.b.put(str, new a(bVar, em5Var));
            return;
        }
        throw new Exception("Kiosk with type " + str + " already exists.");
    }

    public ig5 b(String str, Page page, Localization localization) throws ExtractionException {
        a aVar = (a) this.b.get(str);
        if (aVar == null) {
            throw new ExtractionException("No kiosk found with the type: " + str);
        }
        ig5 ig5VarA = aVar.a.a(this.a, aVar.b.j(str).getUrl(), str);
        Localization localization2 = this.d;
        if (localization2 != null) {
            ig5VarA.d(localization2);
        }
        ContentCountry contentCountry = this.e;
        if (contentCountry != null) {
            ig5VarA.c(contentCountry);
        }
        return ig5VarA;
    }

    public ig5 c(String str, Page page) {
        return d(str, page, org.schabi.newpipe.extractor.a.e());
    }

    public ig5 d(String str, Page page, Localization localization) throws ExtractionException {
        Iterator it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            a aVar = (a) ((Map.Entry) it.next()).getValue();
            if (aVar.b.a(str)) {
                return b(aVar.b.f(str), page, localization);
            }
        }
        throw new ExtractionException("Could not find a kiosk that fits to the url: " + str);
    }

    public void e(String str) {
        this.c = str;
    }
}
