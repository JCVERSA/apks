package androidx.loader.app;

import android.os.Bundle;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.y0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a {

    public interface InterfaceC0078a {
        androidx.loader.content.a onCreateLoader(int i10, Bundle bundle);

        void onLoadFinished(androidx.loader.content.a aVar, Object obj);

        void onLoaderReset(androidx.loader.content.a aVar);
    }

    public static a b(u uVar) {
        return new b(uVar, ((y0) uVar).getViewModelStore());
    }

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract androidx.loader.content.a c(int i10, Bundle bundle, InterfaceC0078a interfaceC0078a);

    public abstract void d();
}
