package com.transsion.cloud.viewmodel;

import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.mimedia.MIMediaConstants;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.cl0;
import defpackage.fi1;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$refreshFilteredCloudRecentlyList$1", f = "CloudViewModel.kt", l = {893}, m = "invokeSuspend")
public final class CloudViewModel$refreshFilteredCloudRecentlyList$1 extends SuspendLambda implements s74 {
    final List<VideoCloudData> $recentList;
    int label;
    final CloudViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$refreshFilteredCloudRecentlyList$1$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final List<VideoCloudData> $filteredList;
        int label;
        final CloudViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(CloudViewModel cloudViewModel, List<? extends VideoCloudData> list, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.this$0 = cloudViewModel;
            this.$filteredList = list;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.this$0, this.$filteredList, wh1Var);
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
            kotlin.c.b(obj);
            this.this$0.getMCloudRecentlyList().setValue(this.$filteredList);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudViewModel$refreshFilteredCloudRecentlyList$1(CloudViewModel cloudViewModel, List<? extends VideoCloudData> list, wh1<? super CloudViewModel$refreshFilteredCloudRecentlyList$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
        this.$recentList = list;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$refreshFilteredCloudRecentlyList$1(this.this$0, this.$recentList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$refreshFilteredCloudRecentlyList$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            List listQ = this.this$0.q(this.$recentList);
            if (listQ.size() != this.$recentList.size()) {
                CacheManager.getInstance().setCache(MIMediaConstants.RECENT_PLAY_LIST_CACHE, fi1.e(listQ));
                rx5 rx5VarC = mc2.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, listQ, null);
                this.label = 1;
                if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        return zfb.a;
    }
}
