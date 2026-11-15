package com.yandex.div.internal.viewpool.optimization;

import android.content.Context;
import android.util.Log;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.logging.Severity;
import defpackage.ViewPreCreationProfile;
import defpackage.c74;
import defpackage.cl0;
import defpackage.e74;
import defpackage.mc2;
import defpackage.ne5;
import defpackage.pd5;
import defpackage.sd9;
import defpackage.u95;
import defpackage.va5;
import defpackage.wh1;
import defpackage.xq8;
import defpackage.y45;
import defpackage.z95;
import defpackage.zfb;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.WeakHashMap;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class ViewPreCreationProfileRepository {
    public static final Companion c = new Companion(null);
    public static final WeakHashMap d = new WeakHashMap();
    public final Context a;
    public final ViewPreCreationProfile b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DataStore a(final Context context, final String str) {
            y45.j(context, "<this>");
            y45.j(str, TtmlNode.ATTR_ID);
            WeakHashMap weakHashMapB = b();
            Object objCreate$default = weakHashMapB.get(str);
            if (objCreate$default == null) {
                objCreate$default = DataStoreFactory.create$default(DataStoreFactory.INSTANCE, ViewPreCreationProfileSerializer.a, null, null, null, new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public final File invoke() {
                        File filesDir = context.getFilesDir();
                        String str2 = String.format("divkit_optimized_viewpool_profile_%s.json", Arrays.copyOf(new Object[]{str}, 1));
                        y45.i(str2, "format(...)");
                        return new File(filesDir, str2);
                    }
                }, 14, null);
                weakHashMapB.put(str, objCreate$default);
            }
            y45.i(objCreate$default, "stores.getOrPut(id) {\n  …          )\n            }");
            return (DataStore) objCreate$default;
        }

        public final WeakHashMap b() {
            return ViewPreCreationProfileRepository.d;
        }

        public Companion() {
        }
    }

    public static final class ViewPreCreationProfileSerializer implements Serializer {
        public static final ViewPreCreationProfileSerializer a = new ViewPreCreationProfileSerializer();
        public static final u95 b = va5.b(null, new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((z95) obj);
                return zfb.a;
            }

            public final void invoke(z95 z95Var) {
                y45.j(z95Var, "$this$Json");
                z95Var.c(false);
            }
        }, 1, null);
        public static final ViewPreCreationProfile c = null;

        @Override
        public ViewPreCreationProfile getDefaultValue() {
            return c;
        }

        @Override
        public Object writeTo(ViewPreCreationProfile ddcVar, OutputStream outputStream, wh1 wh1Var) {
            Object objM279constructorimpl;
            try {
                Result.Companion companion = Result.INSTANCE;
                u95 u95Var = b;
                pd5.b(u95Var, sd9.b(u95Var.a(), xq8.h(ViewPreCreationProfile.class)), ddcVar, outputStream);
                objM279constructorimpl = Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
            if (thM282exceptionOrNullimpl != null && ne5.a.a(Severity.ERROR)) {
                Log.e("OptimizedViewPreCreationProfileRepository", "", thM282exceptionOrNullimpl);
            }
            return zfb.a;
        }

        @Override
        public Object readFrom(InputStream inputStream, wh1 wh1Var) {
            Object objM279constructorimpl;
            try {
                Result.Companion companion = Result.INSTANCE;
                u95 u95Var = b;
                objM279constructorimpl = Result.m279constructorimpl((ViewPreCreationProfile) pd5.a(u95Var, sd9.b(u95Var.a(), xq8.h(ViewPreCreationProfile.class)), inputStream));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
            if (thM282exceptionOrNullimpl != null && ne5.a.a(Severity.ERROR)) {
                Log.e("OptimizedViewPreCreationProfileRepository", "", thM282exceptionOrNullimpl);
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                return null;
            }
            return objM279constructorimpl;
        }
    }

    public ViewPreCreationProfileRepository(Context context, ViewPreCreationProfile ddcVar) {
        y45.j(context, "context");
        y45.j(ddcVar, "defaultProfile");
        this.a = context;
        this.b = ddcVar;
    }

    public static Object f(ViewPreCreationProfileRepository viewPreCreationProfileRepository, String str, wh1 wh1Var) {
        return cl0.g(mc2.b(), new ViewPreCreationProfileRepository$get$2(viewPreCreationProfileRepository, str, null), wh1Var);
    }

    public Object e(String str, wh1 wh1Var) {
        return f(this, str, wh1Var);
    }
}
