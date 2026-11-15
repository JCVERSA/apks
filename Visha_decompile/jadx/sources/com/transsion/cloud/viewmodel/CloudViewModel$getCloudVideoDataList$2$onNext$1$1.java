package com.transsion.cloud.viewmodel;

import android.util.Log;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.CloudResponseModel;
import com.transsion.dbdata.beans.VideoCloudData;
import defpackage.el0;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudVideoDataList$2$onNext$1$1", f = "CloudViewModel.kt", l = {446, 447}, m = "invokeSuspend")
public final class CloudViewModel$getCloudVideoDataList$2$onNext$1$1 extends SuspendLambda implements s74 {
    final int $dataType;
    final CloudResponseModel $it;
    final int $pageNo;
    Object L$0;
    int label;
    final CloudViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudVideoDataList$2$onNext$1$1$2", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final List<VideoCloudData> $videoList;
        int label;
        final CloudViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(List<? extends VideoCloudData> list, CloudViewModel cloudViewModel, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$videoList = list;
            this.this$0 = cloudViewModel;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.$videoList, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            List<VideoCloudData> list = this.$videoList;
            if (list != null && !list.isEmpty()) {
                this.this$0.n();
                this.this$0.Z(this.$videoList);
            }
            this.this$0.f0();
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudVideoDataList$2$onNext$1$1$3", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements s74 {
        final List<VideoCloudData> $videoList;
        int label;
        final CloudViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(List<? extends VideoCloudData> list, CloudViewModel cloudViewModel, wh1<? super AnonymousClass3> wh1Var) {
            super(2, wh1Var);
            this.$videoList = list;
            this.this$0 = cloudViewModel;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass3(this.$videoList, this.this$0, wh1Var);
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
            List<VideoCloudData> list = this.$videoList;
            if (list != null && !list.isEmpty()) {
                this.this$0.n();
                this.this$0.Z(this.$videoList);
            }
            this.this$0.f0();
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$getCloudVideoDataList$2$onNext$1$1(CloudResponseModel cloudResponseModel, CloudViewModel cloudViewModel, int i, int i2, wh1<? super CloudViewModel$getCloudVideoDataList$2$onNext$1$1> wh1Var) {
        super(2, wh1Var);
        this.$it = cloudResponseModel;
        this.this$0 = cloudViewModel;
        this.$pageNo = i;
        this.$dataType = i2;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getCloudVideoDataList$2$onNext$1$1(this.$it, this.this$0, this.$pageNo, this.$dataType, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getCloudVideoDataList$2$onNext$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0150  */
    /* JADX WARN: Code duplicated, block: B:70:0x016e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0194  */
    /* JADX WARN: Code duplicated, block: B:76:0x0198 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x019c  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x0206  */
    /* JADX WARN: Code duplicated, block: B:88:0x020a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x020c  */
    /* JADX WARN: Code duplicated, block: B:91:0x0213  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Collection collection;
        Collection collection2;
        List<VideoCloudData> videoList;
        List<VideoCloudData> videoList2;
        Collection collection3;
        Collection collection4;
        List<VideoCloudData> list;
        int i;
        int i2;
        Object objF = z45.f();
        int i3 = this.label;
        if (i3 != 0) {
            if (i3 == 1) {
                videoList = (List) this.L$0;
                kotlin.c.b(obj);
            } else {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list = (List) this.L$0;
                kotlin.c.b(obj);
            }
            if (this.this$0.mHaveLoadedCache) {
                this.this$0.mHaveLoadedCache = false;
                this.this$0.getMCloudDataList().setValue(new Triple(mk0.a(true), list, mk0.b(this.$pageNo)));
            } else {
                this.this$0.getMCloudDataList().setValue(new Triple(mk0.a(false), list, mk0.b(this.$pageNo)));
            }
            this.this$0.f0();
            videoList = list;
            if (this.$pageNo == 1) {
                i2 = this.$dataType;
                if (i2 == 0) {
                    el0.d(this.this$0.getMCoroutineScope(), mc2.b(), null, new AnonymousClass2(videoList, this.this$0, null), 2, null);
                    Log.d("CloudViewModel", "insertDataToCache clearAllCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
                } else if (i2 == 2) {
                    el0.d(this.this$0.getMCoroutineScope(), mc2.b(), null, new AnonymousClass3(videoList, this.this$0, null), 2, null);
                    Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
                }
            } else {
                i = this.$dataType;
                if (i != 0 || i == 2) {
                    this.this$0.Z(videoList);
                    Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
                }
            }
            return zfb.a;
        }
        kotlin.c.b(obj);
        if (com.transsion.palmsdk.b.s() && (((videoList2 = this.$it.getVideoList()) == null || videoList2.isEmpty()) && (((collection3 = (Collection) this.this$0.getMCloudFavoriteList().getValue()) == null || collection3.isEmpty()) && (((collection4 = (Collection) this.this$0.getMCloudRecentlyList().getValue()) == null || collection4.isEmpty()) && this.$pageNo == 1 && this.$dataType == 0)))) {
            this.this$0.getMNoContentLiveData().setValue(mk0.a(true));
        } else {
            List<VideoCloudData> videoList3 = this.$it.getVideoList();
            if ((videoList3 != null && !videoList3.isEmpty()) || (((collection = (Collection) this.this$0.getMCloudFavoriteList().getValue()) != null && !collection.isEmpty()) || ((collection2 = (Collection) this.this$0.getMCloudRecentlyList().getValue()) != null && !collection2.isEmpty()))) {
                this.this$0.getMNoContentLiveData().setValue(mk0.a(false));
            }
        }
        videoList = this.$it.getVideoList();
        List<VideoCloudData> videoList4 = this.$it.getVideoList();
        if (videoList4 != null) {
            for (VideoCloudData videoCloudData : videoList4) {
                long j = 1000;
                videoCloudData.setPlayDuration(videoCloudData.getPlayDuration() * j);
                Long duration = videoCloudData.getDuration();
                videoCloudData.setDuration(duration != null ? mk0.c(duration.longValue() * j) : null);
                if (videoCloudData.getPlayDuration() > 0) {
                    CloudVideoPlayInfoManager.X(CloudVideoPlayInfoManager.a, videoCloudData.getFileId(), videoCloudData.getPlayDuration(), null, 4, null);
                }
            }
        }
        int i4 = this.$dataType;
        if (i4 == 0 || i4 == 2 || i4 == 3) {
            CloudViewModel cloudViewModel = this.this$0;
            this.L$0 = videoList;
            this.label = 1;
            if (cloudViewModel.r0(videoList, this) == objF) {
                return objF;
            }
        }
        if (this.$pageNo == 1) {
            i2 = this.$dataType;
            if (i2 == 0) {
                el0.d(this.this$0.getMCoroutineScope(), mc2.b(), null, new AnonymousClass2(videoList, this.this$0, null), 2, null);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache clearAllCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            } else if (i2 == 2) {
                el0.d(this.this$0.getMCoroutineScope(), mc2.b(), null, new AnonymousClass3(videoList, this.this$0, null), 2, null);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            }
        } else {
            i = this.$dataType;
            if (i != 0) {
                this.this$0.Z(videoList);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            } else {
                this.this$0.Z(videoList);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            }
        }
        return zfb.a;
        CloudViewModel cloudViewModel2 = this.this$0;
        this.L$0 = videoList;
        this.label = 2;
        if (cloudViewModel2.r(videoList, this) == objF) {
            return objF;
        }
        list = videoList;
        if (this.this$0.mHaveLoadedCache) {
            this.this$0.mHaveLoadedCache = false;
            this.this$0.getMCloudDataList().setValue(new Triple(mk0.a(true), list, mk0.b(this.$pageNo)));
        } else {
            this.this$0.getMCloudDataList().setValue(new Triple(mk0.a(false), list, mk0.b(this.$pageNo)));
        }
        this.this$0.f0();
        videoList = list;
        if (this.$pageNo == 1) {
            i2 = this.$dataType;
            if (i2 == 0) {
                el0.d(this.this$0.getMCoroutineScope(), mc2.b(), null, new AnonymousClass2(videoList, this.this$0, null), 2, null);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache clearAllCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            } else if (i2 == 2) {
                el0.d(this.this$0.getMCoroutineScope(), mc2.b(), null, new AnonymousClass3(videoList, this.this$0, null), 2, null);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            }
        } else {
            i = this.$dataType;
            if (i != 0) {
                this.this$0.Z(videoList);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            } else {
                this.this$0.Z(videoList);
                if (videoList != null) {
                }
                Log.d("CloudViewModel", "insertDataToCache videoList " + (videoList != null ? mk0.b(videoList.size()) : null));
            }
        }
        return zfb.a;
    }
}
