package com.transsion.lib_web.download_render.utils;

import android.os.Bundle;
import com.blankj.utilcode.util.o;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import qi.h;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportPageDownload$1", f = "ReportUtil.kt", l = {}, m = "invokeSuspend")
final class ReportUtil$reportPageDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $copyFiles;
    final long $costTime;
    final int $deleteFiles;
    final long $downloadFileSize;
    final int $downloadFiles;
    final int $downloadedFiles;
    final boolean $isInterceptor;
    final long $totalFileSize;
    final int $totalFiles;
    final String $url;
    final String $versionCode;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportUtil$reportPageDownload$1(String str, String str2, int i10, int i11, int i12, int i13, long j10, boolean z10, int i14, long j11, long j12, Continuation<? super ReportUtil$reportPageDownload$1> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$versionCode = str2;
        this.$deleteFiles = i10;
        this.$copyFiles = i11;
        this.$downloadFiles = i12;
        this.$totalFiles = i13;
        this.$costTime = j10;
        this.$isInterceptor = z10;
        this.$downloadedFiles = i14;
        this.$totalFileSize = j11;
        this.$downloadFileSize = j12;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReportUtil$reportPageDownload$1(this.$url, this.$versionCode, this.$deleteFiles, this.$copyFiles, this.$downloadFiles, this.$totalFiles, this.$costTime, this.$isInterceptor, this.$downloadedFiles, this.$totalFileSize, this.$downloadFileSize, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str = this.$url;
        String str2 = this.$versionCode;
        int i10 = this.$deleteFiles;
        int i11 = this.$copyFiles;
        int i12 = this.$downloadFiles;
        int i13 = this.$totalFiles;
        long j10 = this.$costTime;
        boolean z10 = this.$isInterceptor;
        int i14 = this.$downloadedFiles;
        long j11 = this.$totalFileSize;
        long j12 = this.$downloadFileSize;
        linkedHashMap.put("url", str);
        linkedHashMap.put("version", str2);
        linkedHashMap.put("rfs", Boxing.d(i10));
        linkedHashMap.put("cfs", Boxing.d(i11));
        linkedHashMap.put("dfs", Boxing.d(i12));
        linkedHashMap.put("tfs", Boxing.d(i13));
        linkedHashMap.put("ct", Boxing.e(j10));
        linkedHashMap.put("intercept", Boxing.a(z10));
        linkedHashMap.put("dedfs", Boxing.d(i14));
        linkedHashMap.put("tfsize", Boxing.e(j11));
        linkedHashMap.put("dedfsize", Boxing.e(j12));
        Bundle bundle = new Bundle();
        bundle.putString("ext", o.j(linkedHashMap));
        h.f69682a.g("files_download", bundle, 2337);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ReportUtil$reportPageDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
