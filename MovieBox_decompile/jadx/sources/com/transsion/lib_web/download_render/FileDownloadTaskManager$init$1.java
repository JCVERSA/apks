package com.transsion.lib_web.download_render;

import android.app.Application;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.tencent.mmkv.MMKV;
import com.transsion.lib_web.download_render.init.ConfigTask;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import qi.h;
import qi.i;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.download_render.FileDownloadTaskManager$init$1", f = "FileDownloadTaskManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class FileDownloadTaskManager$init$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final i $api;
    final boolean $athenaIsDebug;
    final Application $context;
    final String $path;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileDownloadTaskManager$init$1(String str, Application application, boolean z10, i iVar, Continuation<? super FileDownloadTaskManager$init$1> continuation) {
        super(2, continuation);
        this.$path = str;
        this.$context = application;
        this.$athenaIsDebug = z10;
        this.$api = iVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FileDownloadTaskManager$init$1(this.$path, this.$context, this.$athenaIsDebug, this.$api, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            FileRemoteDataManager.f44791a.l(this.$path);
            MMKV.C(this.$context);
            h hVar = h.f69682a;
            Application application = this.$context;
            boolean z10 = this.$athenaIsDebug;
            i iVar = this.$api;
            String packageName = application.getPackageName();
            Intrinsics.g(packageName, "getPackageName(...)");
            hVar.j(application, z10, iVar, packageName, 2337, (PsExtractor.AUDIO_STREAM & 32) != 0, (PsExtractor.AUDIO_STREAM & 64) != 0 ? null : null, (PsExtractor.AUDIO_STREAM & 128) != 0 ? false : false);
            FileDownloadTaskManager.f44790k.add(new ConfigTask());
            FileDownloadTaskManager.f44790k.add(new com.transsion.lib_web.download_render.init.d(this.$context));
            FileDownloadTaskManager.f44790k.add(new com.transsion.lib_web.download_render.init.e());
            FileDownloadTaskManager.f44790k.add(new com.transsion.lib_web.download_render.init.a());
            FileDownloadTaskManager.f44790k.add(new com.transsion.lib_web.download_render.init.b());
            Iterator it = FileDownloadTaskManager.f44790k.iterator();
            while (it.hasNext()) {
                ((com.transsion.lib_web.download_render.init.c) it.next()).invoke();
            }
            FileRemoteDataManager.f44791a.m();
        } catch (Throwable th2) {
            pl.h.f69205a.f("DR_FileDownloadTaskManager", "<init> fail:" + th2);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FileDownloadTaskManager$init$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
