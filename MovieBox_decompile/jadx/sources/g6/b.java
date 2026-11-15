package g6;

import android.content.Context;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import java.util.concurrent.ConcurrentHashMap;

public abstract class b {

    public static final ConcurrentHashMap f60665a = new ConcurrentHashMap();

    public static synchronized void a(Context context, TKC tkc, x5.a.InterfaceC0938a interfaceC0938a) {
        if (tkc == null) {
            return;
        }
        try {
            ConcurrentHashMap concurrentHashMap = f60665a;
            c cVar = (c) concurrentHashMap.get(tkc.sef());
            if (cVar == null) {
                cVar = new c(context, tkc);
                concurrentHashMap.put(tkc.sef(), cVar);
                tkc.TKC();
                tkc.sef();
            }
            cVar.m(interfaceC0938a);
            tkc.TKC();
            tkc.sef();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static synchronized void b(TKC tkc) {
        try {
            c cVar = (c) f60665a.remove(tkc.sef());
            if (cVar != null) {
                cVar.n(true);
            }
            tkc.TKC();
            tkc.sef();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
