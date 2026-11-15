package com.transsion.tools.filetrans.activities;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity$startSearchLoop$1", f = "FileTransSheetDialogActivity.kt", l = {161}, m = "invokeSuspend")
public final class FileTransSheetDialogActivity$startSearchLoop$1 extends SuspendLambda implements s74 {
    final long $intervalMs;
    private Object L$0;
    int label;
    final FileTransSheetDialogActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileTransSheetDialogActivity$startSearchLoop$1(FileTransSheetDialogActivity fileTransSheetDialogActivity, long j, wh1<? super FileTransSheetDialogActivity$startSearchLoop$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = fileTransSheetDialogActivity;
        this.$intervalMs = j;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        FileTransSheetDialogActivity$startSearchLoop$1 fileTransSheetDialogActivity$startSearchLoop$1 = new FileTransSheetDialogActivity$startSearchLoop$1(this.this$0, this.$intervalMs, wh1Var);
        fileTransSheetDialogActivity$startSearchLoop$1.L$0 = obj;
        return fileTransSheetDialogActivity$startSearchLoop$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((FileTransSheetDialogActivity$startSearchLoop$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0041 -> B:13:0x0025). Please report as a decompilation issue!!! */
    @Override
    public final Object invokeSuspend(Object obj) {
        nk1 nk1Var;
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            nk1Var = (nk1) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nk1Var = (nk1) this.L$0;
            try {
                c.b(obj);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        while (d.i(nk1Var)) {
            this.this$0.mSearchRunnable.run();
            long j = this.$intervalMs;
            this.L$0 = nk1Var;
            this.label = 1;
            if (DelayKt.b(j, this) == objF) {
                return objF;
            }
        }
        return zfb.a;
    }
}
