package com.transsion.cloud.viewmodel;

import android.text.TextUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.MIMediaLibraryCache;
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.mimedia.MIMediaConstants;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.apb;
import defpackage.cl0;
import defpackage.fi1;
import defpackage.hw5;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getDataFromCache$1", f = "CloudViewModel.kt", l = {727, 731}, m = "invokeSuspend")
public final class CloudViewModel$getDataFromCache$1 extends SuspendLambda implements s74 {
    final int $dataType;
    final u74 $onSuccess;
    final int $pageNo;
    final String $sortBy;
    final String $sortField;
    int label;
    final CloudViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getDataFromCache$1$3", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements s74 {
        final List<MIMediaLibraryData> $favoriteList;
        final List<VideoCloudData> $normalList;
        final u74 $onSuccess;
        final List<VideoCloudData> $recentList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(u74 u74Var, List<? extends VideoCloudData> list, List<? extends VideoCloudData> list2, List<MIMediaLibraryData> list3, wh1<? super AnonymousClass3> wh1Var) {
            super(2, wh1Var);
            this.$onSuccess = u74Var;
            this.$recentList = list;
            this.$normalList = list2;
            this.$favoriteList = list3;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass3(this.$onSuccess, this.$recentList, this.$normalList, this.$favoriteList, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            u74 u74Var = this.$onSuccess;
            if (u74Var != null) {
                u74Var.invoke(this.$recentList, this.$normalList, this.$favoriteList);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getDataFromCache$1$4", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements s74 {
        final List<MIMediaLibraryData> $favoriteList;
        final u74 $onSuccess;
        final List<VideoCloudData> $videoCloudDatas;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(u74 u74Var, List<VideoCloudData> list, List<MIMediaLibraryData> list2, wh1<? super AnonymousClass4> wh1Var) {
            super(2, wh1Var);
            this.$onSuccess = u74Var;
            this.$videoCloudDatas = list;
            this.$favoriteList = list2;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass4(this.$onSuccess, this.$videoCloudDatas, this.$favoriteList, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass4) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            u74 u74Var = this.$onSuccess;
            if (u74Var != null) {
                u74Var.invoke(null, this.$videoCloudDatas, this.$favoriteList);
            }
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$getDataFromCache$1(CloudViewModel cloudViewModel, int i, int i2, String str, String str2, u74 u74Var, wh1<? super CloudViewModel$getDataFromCache$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
        this.$dataType = i;
        this.$pageNo = i2;
        this.$sortField = str;
        this.$sortBy = str2;
        this.$onSuccess = u74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getDataFromCache$1(this.this$0, this.$dataType, this.$pageNo, this.$sortField, this.$sortBy, this.$onSuccess, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getDataFromCache$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        ArrayList arrayList;
        VideoCloudData videoCloudData;
        List<MIMediaLibraryCache> allCaches;
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            int mPageSize = this.this$0.getMPageSize();
            if (this.$dataType == 0) {
                mPageSize = 12;
            }
            int i2 = mPageSize;
            apb apbVar = this.this$0.mVideoCloudData;
            List<VideoCloudCache> videoCloudDataByPage = apbVar != null ? apbVar.getVideoCloudDataByPage(this.$pageNo, i2, this.$sortField, this.$sortBy, this.$dataType) : null;
            String cache = CacheManager.getInstance().getCache(MIMediaConstants.RECENT_PLAY_LIST_CACHE);
            List list = !TextUtils.isEmpty(cache) ? (List) fi1.c(cache, new TypeToken<List<VideoCloudData>>() {
            }.getType()) : null;
            List listQ = list != null ? this.this$0.q(list) : null;
            hw5 hw5Var = this.this$0.mFavoriteDao;
            if (hw5Var == null || (allCaches = hw5Var.getAllCaches()) == null) {
                arrayList = null;
            } else {
                List<MIMediaLibraryCache> list2 = allCaches;
                ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((MIMediaLibraryCache) it.next()).toMIMediaLibraryData());
                }
                arrayList = arrayList2;
            }
            ArrayList arrayList3 = new ArrayList();
            if (videoCloudDataByPage != null) {
                for (VideoCloudCache videoCloudCache : videoCloudDataByPage) {
                    if (videoCloudCache != null && (videoCloudData = videoCloudCache.toVideoCloudData()) != null) {
                        arrayList3.add(videoCloudData);
                    }
                }
            }
            ArrayList arrayList4 = new ArrayList();
            for (Object obj2 : arrayList3) {
                if (y45.e(((VideoCloudData) obj2).getIsRecentData(), mk0.a(false))) {
                    arrayList4.add(obj2);
                }
            }
            if (this.$dataType == 0) {
                rx5 rx5VarC = mc2.c();
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$onSuccess, listQ, arrayList4, arrayList, null);
                this.label = 1;
                if (cl0.g(rx5VarC, anonymousClass3, this) == objF) {
                    return objF;
                }
            } else {
                rx5 rx5VarC2 = mc2.c();
                AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$onSuccess, arrayList3, arrayList, null);
                this.label = 2;
                if (cl0.g(rx5VarC2, anonymousClass4, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i != 1 && i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        return zfb.a;
    }
}
