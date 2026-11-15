package tt;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.w;
import com.transsion.transfer.androidasync.s;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class d {

    Headers f72821a;

    Multimap f72822b;

    private long f72823c;

    public d(Headers headers) {
        this.f72823c = -1L;
        this.f72821a = headers;
        this.f72822b = Multimap.parseSemicolonDelimited(headers.c(HttpHeaders.CONTENT_DISPOSITION));
    }

    public String a() {
        return this.f72822b.getString("name");
    }

    public Headers b() {
        return this.f72821a;
    }

    public long c() {
        return this.f72823c;
    }

    public void d(s sVar, st.a aVar) {
    }

    public d(String str, long j10, List list) {
        this.f72823c = j10;
        this.f72821a = new Headers();
        StringBuilder sb2 = new StringBuilder(String.format(Locale.ENGLISH, "form-data; name=\"%s\"", str));
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                w wVar = (w) it.next();
                sb2.append(String.format(Locale.ENGLISH, "; %s=\"%s\"", wVar.getName(), wVar.getValue()));
            }
        }
        this.f72821a.f(HttpHeaders.CONTENT_DISPOSITION, sb2.toString());
        this.f72822b = Multimap.parseSemicolonDelimited(this.f72821a.c(HttpHeaders.CONTENT_DISPOSITION));
    }
}
