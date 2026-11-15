package com.vungle.ads.internal.session;

import android.content.Context;
import com.vungle.ads.internal.model.j;
import com.vungle.ads.internal.util.g;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.h;
import kotlinx.serialization.json.d;
import kotlinx.serialization.json.n;

public final class UnclosedAdDetector {
    private static final String FILENAME = "unclosed_ad";
    private final Context context;
    private final com.vungle.ads.internal.executor.a executors;
    private File file;
    private final p pathProvider;
    private boolean ready;
    private final String sessionId;
    private final CopyOnWriteArrayList<j> unclosedAdList;
    public static final a Companion = new a(null);
    private static final kotlinx.serialization.json.a json = n.b(null, new Function1<d, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((d) obj);
            return Unit.f64096a;
        }

        public final void invoke(d Json) {
            Intrinsics.h(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public UnclosedAdDetector(Context context, String sessionId, com.vungle.ads.internal.executor.a executors, p pathProvider) {
        Object objM453constructorimpl;
        boolean zM460isSuccessimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(sessionId, "sessionId");
        Intrinsics.h(executors, "executors");
        Intrinsics.h(pathProvider, "pathProvider");
        this.context = context;
        this.sessionId = sessionId;
        this.executors = executors;
        this.pathProvider = pathProvider;
        this.file = pathProvider.getUnclosedAdFile(FILENAME);
        this.unclosedAdList = new CopyOnWriteArrayList<>();
        if (this.file.exists()) {
            zM460isSuccessimpl = true;
        } else {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(this.file.createNewFile()));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                o.Companion.e("UnclosedAdDetector", "Fail to create unclosed ad file: " + thM456exceptionOrNullimpl.getMessage());
            }
            zM460isSuccessimpl = Result.m460isSuccessimpl(objM453constructorimpl);
        }
        this.ready = zM460isSuccessimpl;
    }

    private final <T> T decodeJson(String str) {
        kotlinx.serialization.json.a aVar = json;
        ty.c cVarA = aVar.a();
        Intrinsics.n(6, "T");
        kotlinx.serialization.b bVarB = h.b(cVarA, null);
        Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return (T) aVar.b(bVarB, str);
    }

    private final List<j> readUnclosedAdFromFile() {
        return !this.ready ? CollectionsKt.l() : (List) new com.vungle.ads.internal.executor.b(this.executors.getIoExecutor().submit(new Callable() {
            @Override
            public final Object call() {
                return UnclosedAdDetector.m427readUnclosedAdFromFile$lambda4(this.f58423a);
            }
        })).get(1000L, TimeUnit.MILLISECONDS);
    }

    public static final List m427readUnclosedAdFromFile$lambda4(UnclosedAdDetector this$0) {
        List arrayList;
        Intrinsics.h(this$0, "this$0");
        try {
            String string = g.INSTANCE.readString(this$0.file);
            if (string == null || string.length() == 0) {
                arrayList = new ArrayList();
            } else {
                kotlinx.serialization.json.a aVar = json;
                kotlinx.serialization.b bVarB = h.b(aVar.a(), Reflection.n(List.class, KTypeProjection.INSTANCE.a(Reflection.m(j.class))));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                arrayList = (List) aVar.b(bVarB, string);
            }
            return arrayList;
        } catch (Exception e10) {
            o.Companion.e("UnclosedAdDetector", "Fail to read unclosed ad file " + e10.getMessage());
            return new ArrayList();
        }
    }

    public static final void m428retrieveUnclosedAd$lambda3(UnclosedAdDetector this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            g.deleteAndLogIfFailed(this$0.file);
        } catch (Exception e10) {
            o.Companion.e("UnclosedAdDetector", "Fail to delete file " + e10.getMessage());
        }
    }

    private final void writeUnclosedAdToFile(List<j> list) {
        if (this.ready) {
            try {
                kotlinx.serialization.json.a aVar = json;
                kotlinx.serialization.b bVarB = h.b(aVar.a(), Reflection.n(List.class, KTypeProjection.INSTANCE.a(Reflection.m(j.class))));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                final String strC = aVar.c(bVarB, list);
                this.executors.getIoExecutor().execute(new Runnable() {
                    @Override
                    public final void run() {
                        UnclosedAdDetector.m429writeUnclosedAdToFile$lambda5(this.f58425a, strC);
                    }
                });
            } catch (Throwable th2) {
                o.Companion.e("UnclosedAdDetector", "Fail to write unclosed ad file " + th2.getMessage());
            }
        }
    }

    public static final void m429writeUnclosedAdToFile$lambda5(UnclosedAdDetector this$0, String jsonContent) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(jsonContent, "$jsonContent");
        g.INSTANCE.writeString(this$0.file, jsonContent);
    }

    public final void addUnclosedAd(j ad2) {
        Intrinsics.h(ad2, "ad");
        if (this.ready) {
            ad2.setSessionId(this.sessionId);
            this.unclosedAdList.add(ad2);
            writeUnclosedAdToFile(this.unclosedAdList);
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final com.vungle.ads.internal.executor.a getExecutors() {
        return this.executors;
    }

    public final p getPathProvider() {
        return this.pathProvider;
    }

    public final void removeUnclosedAd(j ad2) {
        Intrinsics.h(ad2, "ad");
        if (this.ready && this.unclosedAdList.contains(ad2)) {
            this.unclosedAdList.remove(ad2);
            writeUnclosedAdToFile(this.unclosedAdList);
        }
    }

    public final List<j> retrieveUnclosedAd() {
        ArrayList arrayList = new ArrayList();
        if (!this.ready) {
            return arrayList;
        }
        List<j> unclosedAdFromFile = readUnclosedAdFromFile();
        if (unclosedAdFromFile != null) {
            arrayList.addAll(unclosedAdFromFile);
        }
        this.executors.getIoExecutor().execute(new Runnable() {
            @Override
            public final void run() {
                UnclosedAdDetector.m428retrieveUnclosedAd$lambda3(this.f58424a);
            }
        });
        return arrayList;
    }
}
