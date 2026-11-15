package io.appmetrica.analytics.appsetid.internal;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import defpackage.pe7;
import defpackage.xda;
import defpackage.ze;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;", "Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;", "listener", "Lzfb;", "retrieveAppSetId", "(Landroid/content/Context;Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;)V", "appsetid_release"}, k = 1, mv = {1, 6, 0})
public final class AppSetIdRetriever implements IAppSetIdRetriever {
    private final Object a = new Object();
    private final ArrayList b = new ArrayList();

    public static final AppSetIdScope access$convertScope(AppSetIdRetriever appSetIdRetriever, int i) {
        appSetIdRetriever.getClass();
        if (i != 1) {
            return i != 2 ? AppSetIdScope.UNKNOWN : AppSetIdScope.DEVELOPER;
        }
        return AppSetIdScope.APP;
    }

    @Override
    public void retrieveAppSetId(Context context, final AppSetIdListener listener) throws Throwable {
        xda xdaVarA = AppSet.a(context).a();
        pe7 pe7Var = new pe7() {
            @Override
            public void onComplete(xda completedTask) {
                Object obj = this.a.a;
                AppSetIdRetriever appSetIdRetriever = this.a;
                synchronized (obj) {
                    appSetIdRetriever.b.remove(this);
                }
                if (completedTask.q()) {
                    listener.onAppSetIdRetrieved(((ze) completedTask.m()).a(), AppSetIdRetriever.access$convertScope(this.a, ((ze) completedTask.m()).b()));
                } else {
                    listener.onFailure(completedTask.l());
                }
            }
        };
        synchronized (this.a) {
            this.b.add(pe7Var);
        }
        xdaVarA.b(pe7Var);
    }
}
