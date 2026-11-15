package q5;

import android.content.Context;
import java.util.Calendar;
import s5.c;

public class a {

    private r5.a f69396a;

    public a(Context context, c cVar) {
        r5.a aVar = new r5.a(2);
        this.f69396a = aVar;
        aVar.C = context;
        aVar.f70842a = cVar;
    }

    public com.bigkoo.pickerview.view.a a() {
        return new com.bigkoo.pickerview.view.a(this.f69396a);
    }

    public a b(int i10) {
        this.f69396a.Q = i10;
        return this;
    }

    public a c(String str, String str2, String str3, String str4, String str5, String str6) {
        r5.a aVar = this.f69396a;
        aVar.f70855n = str;
        aVar.f70856o = str2;
        aVar.f70857p = str3;
        aVar.f70858q = str4;
        aVar.f70859r = str5;
        aVar.f70860s = str6;
        return this;
    }

    public a d(Calendar calendar, Calendar calendar2) {
        r5.a aVar = this.f69396a;
        aVar.f70849h = calendar;
        aVar.f70850i = calendar2;
        return this;
    }

    public a e(int i10) {
        this.f69396a.P = i10;
        return this;
    }

    public a f(int i10) {
        this.f69396a.O = i10;
        return this;
    }
}
