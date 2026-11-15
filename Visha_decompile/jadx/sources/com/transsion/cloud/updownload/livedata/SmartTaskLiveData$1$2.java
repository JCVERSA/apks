package com.transsion.cloud.updownload.livedata;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.db.CloudTaskEntity;
import defpackage.cl0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.DelayKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$1$2", f = "SmartTaskLiveData.kt", l = {95, 97, 99, 100}, m = "invokeSuspend")
public final class SmartTaskLiveData$1$2 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $newList;
    int label;
    final SmartTaskLiveData this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$1$2$1", f = "SmartTaskLiveData.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final List<CloudTaskEntity> $newList;
        int label;
        final SmartTaskLiveData this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SmartTaskLiveData smartTaskLiveData, List<CloudTaskEntity> list, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.this$0 = smartTaskLiveData;
            this.$newList = list;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.this$0, this.$newList, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            this.this$0.setValue(this.$newList);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmartTaskLiveData$1$2(SmartTaskLiveData smartTaskLiveData, List<CloudTaskEntity> list, wh1<? super SmartTaskLiveData$1$2> wh1Var) {
        super(2, wh1Var);
        this.this$0 = smartTaskLiveData;
        this.$newList = list;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new SmartTaskLiveData$1$2(this.this$0, this.$newList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((SmartTaskLiveData$1$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0078 A[Catch: Exception -> 0x001b, CancellationException -> 0x0103, TryCatch #2 {CancellationException -> 0x0103, Exception -> 0x001b, blocks: (B:8:0x0016, B:14:0x0026, B:29:0x00a3, B:15:0x002b, B:24:0x0070, B:26:0x0078, B:32:0x00ba, B:21:0x0063), top: B:38:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:28:0x00a2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ba A[Catch: Exception -> 0x001b, CancellationException -> 0x0103, TRY_LEAVE, TryCatch #2 {CancellationException -> 0x0103, Exception -> 0x001b, blocks: (B:8:0x0016, B:14:0x0026, B:29:0x00a3, B:15:0x002b, B:24:0x0070, B:26:0x0078, B:32:0x00ba, B:21:0x0063), top: B:38:0x000c }] */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x0078, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00ba, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        SmartTaskLiveData smartTaskLiveData;
        List<CloudTaskEntity> list;
        rx5 rx5VarC;
        AnonymousClass1 anonymousClass1;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    c.b(obj);
                } else if (i == 2) {
                    c.b(obj);
                    if (((Boolean) obj).booleanValue()) {
                        Log.d("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Task details changed, updating...");
                        smartTaskLiveData = this.this$0;
                        list = this.$newList;
                        this.label = 3;
                        if (smartTaskLiveData.r(list, this) == objF) {
                            return objF;
                        }
                        rx5VarC = mc2.c();
                        anonymousClass1 = new AnonymousClass1(this.this$0, this.$newList, null);
                        this.label = 4;
                        if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                            return objF;
                        }
                    } else {
                        LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Task list not changed, skip update");
                    }
                } else if (i == 3) {
                    c.b(obj);
                    rx5VarC = mc2.c();
                    anonymousClass1 = new AnonymousClass1(this.this$0, this.$newList, null);
                    this.label = 4;
                    if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
                return zfb.a;
            }
            c.b(obj);
            LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Task count unchanged, checking detailed changes in IO thread...");
            this.label = 1;
            if (DelayKt.b(50L, this) == objF) {
                return objF;
            }
            SmartTaskLiveData smartTaskLiveData2 = this.this$0;
            List<CloudTaskEntity> list2 = this.$newList;
            this.label = 2;
            obj = smartTaskLiveData2.p(list2, this);
            if (obj == objF) {
                return objF;
            }
            if (((Boolean) obj).booleanValue()) {
                Log.d("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Task details changed, updating...");
                smartTaskLiveData = this.this$0;
                list = this.$newList;
                this.label = 3;
                if (smartTaskLiveData.r(list, this) == objF) {
                    return objF;
                }
                rx5VarC = mc2.c();
                anonymousClass1 = new AnonymousClass1(this.this$0, this.$newList, null);
                this.label = 4;
                if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Task list not changed, skip update");
            }
        } catch (CancellationException unused) {
            Log.e("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Task comparison cancelled");
        } catch (Exception e) {
            Log.e("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + "  Error in background processing: " + e.getMessage());
        }
        return zfb.a;
    }
}
