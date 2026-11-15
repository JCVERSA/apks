package defpackage;

import freemarker.ext.beans.c;
import java.lang.ref.WeakReference;
import org.zeroturnaround.javarebel.ClassEventListener;
import org.zeroturnaround.javarebel.ReloaderFactory;

public class b65 implements mw0 {

    public static class a implements ClassEventListener {
        public final WeakReference a;

        public a(c cVar) {
            this.a = new WeakReference(cVar);
        }
    }

    @Override
    public void a(c cVar) {
        ReloaderFactory.getInstance().addClassReloadListener(new a(cVar));
    }
}
