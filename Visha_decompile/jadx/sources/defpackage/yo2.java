package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public interface yo2 {
    public static final c a = c.a;
    public static final yo2 b = new b();

    public interface a {
    }

    public static final class b implements yo2 {
        public static final void c() {
        }

        @Override
        public jn5 a(e eVar, a aVar) {
            y45.j(eVar, Progress.REQUEST);
            return new jn5() {
                @Override
                public final void cancel() {
                    yo2.b.c();
                }
            };
        }
    }

    public static final class c {
        public static final c a = new c();
    }

    public static final class d {
        public final String a;
        public final String b;

        public d(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            this.a = str;
            this.b = str2;
        }
    }

    public static final class e {
        public final Uri a;
        public final String b;
        public final List c;
        public final String d;

        public e(Uri uri, String str, List list, String str2) {
            y45.j(uri, "url");
            y45.j(str, "method");
            y45.j(str2, TtmlNode.TAG_BODY);
            this.a = uri;
            this.b = str;
            this.c = list;
            this.d = str2;
        }
    }

    jn5 a(e eVar, a aVar);
}
