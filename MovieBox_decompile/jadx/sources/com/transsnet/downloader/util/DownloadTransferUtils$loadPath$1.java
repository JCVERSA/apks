package com.transsnet.downloader.util;

import android.content.Context;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$loadPath$1", f = "DownloadTransferUtils.kt", l = {164}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadTransferUtils$loadPath$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $context;
    final Function1<Map<String, String>, Unit> $onComplete;
    final List<String> $urls;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DownloadTransferUtils$loadPath$1(List<String> list, Function1<? super Map<String, String>, Unit> function1, Context context, Continuation<? super DownloadTransferUtils$loadPath$1> continuation) {
        super(2, continuation);
        this.$urls = list;
        this.$onComplete = function1;
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DownloadTransferUtils$loadPath$1 downloadTransferUtils$loadPath$1 = new DownloadTransferUtils$loadPath$1(this.$urls, this.$onComplete, this.$context, continuation);
        downloadTransferUtils$loadPath$1.L$0 = obj;
        return downloadTransferUtils$loadPath$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Map map;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<String> list = this.$urls;
            Context context = this.$context;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(kotlinx.coroutines.k.b(n0Var, y0.b(), null, new DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1((String) it.next(), context, null), 2, null));
            }
            this.L$0 = linkedHashMap;
            this.label = 1;
            obj = kotlinx.coroutines.f.a(arrayList, this);
            if (obj == objF) {
                return objF;
            }
            map = linkedHashMap;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) this.L$0;
            ResultKt.b(obj);
        }
        for (Pair pair : (List) obj) {
            String str = (String) pair.component1();
            File file = (File) pair.component2();
            map.put(str, file != null ? file.getAbsolutePath() : null);
        }
        wf.a.C0922a.r(wf.a.f74274a, TransferBottomToolsView.TAG, new String[]{"所有封面加载--完成"}, false, 4, null);
        this.$onComplete.invoke(map);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadTransferUtils$loadPath$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
