package com.transsion.onlinevideo.viewmodel;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.onlinevideo.AiRecommend;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryUserBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.dbdata.database.OnlineVideoDatabase;
import com.transsion.onlinevideo.history.HistoryManager;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.onlinevideo.widgets.topic.VideoViewHolder;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.exception.ResponseExceptionHandler;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.BaseConstant;
import defpackage.c06;
import defpackage.d06;
import defpackage.ea;
import defpackage.fi1;
import defpackage.gu8;
import defpackage.iia;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.sg7;
import defpackage.t74;
import defpackage.vb;
import defpackage.wz5;
import defpackage.zf1;
import defpackage.zf7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ChannelViewModel extends AndroidViewModel {
    public static long j;
    public static long k;
    public Map a;
    public LiveData b;
    public LiveData c;
    public MutableLiveData d;
    public Map e;
    public MutableLiveData f;
    public final zf7 g;
    public final sg7 h;
    public final OnlineVideoDatabase i;

    public class a implements pd7 {
        public final int b;
        public final int c;
        public final int d;

        public a(int i, int i2, int i3) {
            this.b = i;
            this.c = i2;
            this.d = i3;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            ArrayList arrayList;
            if (ChannelViewModel.this.a.get(Integer.valueOf(this.b)) == null || ChannelViewModel.this.e.get(Integer.valueOf(this.b)) == null) {
                return;
            }
            List arrayList2 = (List) ((MutableLiveData) ChannelViewModel.this.a.get(Integer.valueOf(this.b))).getValue();
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            List<TopicBean> list = (List) baseResponse.getRecords();
            if (list == null || list.isEmpty()) {
                ((MutableLiveData) ChannelViewModel.this.e.get(Integer.valueOf(this.b))).postValue(2);
                return;
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList<TopicBean> arrayList4 = new ArrayList();
            boolean z = false;
            for (TopicBean topicBean : list) {
                if (TextUtils.isEmpty(topicBean.getN_biz_group_id())) {
                    ea.a.put(topicBean.getTopic_id(), topicBean.getN_biz_group_id());
                }
                if (topicBean.getDatas() != null && !topicBean.getDatas().isEmpty() && topicBean.getData_type().intValue() != 6) {
                    topicBean.jsonToTypeList();
                    arrayList3.add(topicBean);
                }
                if (topicBean.getData_type().intValue() == 6) {
                    ea.d.add(topicBean.getTopic_id());
                    arrayList3.add(topicBean);
                    arrayList4.add(topicBean);
                    z = true;
                }
            }
            if (this.c != 1) {
                arrayList = arrayList3;
            } else {
                if (z) {
                    for (TopicBean topicBean2 : arrayList4) {
                        ChannelViewModel.this.u(this.c, this.b, this.d, arrayList3, arrayList2, baseResponse.getTotal(), topicBean2, topicBean2.getTopic_id().longValue(), topicBean2.getChannel_id().longValue(), 6, topicBean2.getContent_source());
                        arrayList3 = arrayList3;
                    }
                    return;
                }
                arrayList2.clear();
                arrayList = arrayList3;
                ChannelViewModel.this.Z(this.b, arrayList);
            }
            arrayList2.addAll(arrayList);
            int total = baseResponse.getTotal();
            int iCeil = (int) Math.ceil(total / this.d);
            if (this.c < iCeil || "5".equals(((TopicBean) arrayList2.get(0)).getContent_source())) {
                ((MutableLiveData) ChannelViewModel.this.a.get(Integer.valueOf(this.b))).postValue(arrayList2);
                ((MutableLiveData) ChannelViewModel.this.e.get(Integer.valueOf(this.b))).postValue(0);
            } else {
                if (this.c == iCeil && total % this.d > 0) {
                    ((MutableLiveData) ChannelViewModel.this.a.get(Integer.valueOf(this.b))).postValue(arrayList2);
                }
                ((MutableLiveData) ChannelViewModel.this.e.get(Integer.valueOf(this.b))).postValue(1);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_ChannelViewModel", "onError:" + th.getMessage());
            if (ChannelViewModel.this.e.get(Integer.valueOf(this.b)) != null) {
                ((MutableLiveData) ChannelViewModel.this.e.get(Integer.valueOf(this.b))).postValue(2);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements pd7 {
        public final TopicBean b;
        public final List c;
        public final int d;
        public final int e;
        public final int f;
        public final List g;
        public final int h;

        public b(TopicBean topicBean, List list, int i, int i2, int i3, List list2, int i4) {
            this.b = topicBean;
            this.c = list;
            this.d = i;
            this.e = i2;
            this.f = i3;
            this.g = list2;
            this.h = i4;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || baseResponse.getData() == null || ((AiRecommend) baseResponse.getData()).getVideoList() == null || ((AiRecommend) baseResponse.getData()).getVideoList().size() <= 0) {
                this.c.remove(this.b);
                LogUtils.m("visha_ChannelViewModel", "request AlgorithmRecommend data size 0");
            } else {
                this.b.setMediaBeanList(((AiRecommend) baseResponse.getData()).getVideoList());
                this.b.setRecommendPart(((AiRecommend) baseResponse.getData()).getRecommendPart());
                if (((AiRecommend) baseResponse.getData()).getGroupId() != null && ((AiRecommend) baseResponse.getData()).getGroupId().intValue() != 0) {
                    ea.c.put(this.b.getTopic_id(), ((AiRecommend) baseResponse.getData()).getGroupId());
                }
                if (TextUtils.isEmpty(((AiRecommend) baseResponse.getData()).getNewBizGroupId())) {
                    ea.b.put(this.b.getTopic_id(), "");
                } else {
                    ea.b.put(this.b.getTopic_id(), ((AiRecommend) baseResponse.getData()).getNewBizGroupId());
                }
                BaseConstant.o = ((AiRecommend) baseResponse.getData()).getGroupId().intValue();
            }
            ChannelViewModel.this.t(this.d, this.e, this.f, this.c, this.g, this.h);
            d06.b(true, System.currentTimeMillis() - ChannelViewModel.j, 0);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_ChannelViewModel", "request AlgorithmRecommend data failed:" + th.toString());
            this.c.remove(this.b);
            ChannelViewModel.this.t(this.d, this.e, this.f, this.c, this.g, this.h);
            d06.b(false, System.currentTimeMillis() - ChannelViewModel.j, 0);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements pd7 {
        public final TopicBean b;
        public final VideoViewHolder c;

        public c(TopicBean topicBean, VideoViewHolder videoViewHolder) {
            this.b = topicBean;
            this.c = videoViewHolder;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || baseResponse.getData() == null || ((AiRecommend) baseResponse.getData()).getVideoList() == null || ((AiRecommend) baseResponse.getData()).getVideoList().size() <= 0) {
                LogUtils.m("visha_ChannelViewModel", "request AlgorithmRecommend data size 0");
            } else {
                this.b.setMediaBeanList(((AiRecommend) baseResponse.getData()).getVideoList());
                this.c.a(this.b);
                if (((AiRecommend) baseResponse.getData()).getGroupId() != null && ((AiRecommend) baseResponse.getData()).getGroupId().intValue() != 0) {
                    ea.c.put(this.b.getTopic_id(), ((AiRecommend) baseResponse.getData()).getGroupId());
                }
                if (TextUtils.isEmpty(((AiRecommend) baseResponse.getData()).getNewBizGroupId())) {
                    ea.b.put(this.b.getTopic_id(), "");
                } else {
                    ea.b.put(this.b.getTopic_id(), ((AiRecommend) baseResponse.getData()).getNewBizGroupId());
                }
            }
            d06.b(true, System.currentTimeMillis() - ChannelViewModel.k, 1);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_ChannelViewModel", "request AlgorithmRecommend data failed:" + th.toString());
            d06.b(false, System.currentTimeMillis() - ChannelViewModel.k, 1);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class d implements zf1 {
        public final Context b;

        public d(Context context) {
            this.b = context;
        }

        @Override
        public void accept(Boolean bool) {
            ChannelViewModel.this.V(this.b);
        }
    }

    public class e implements pd7 {
        public e() {
        }

        @Override
        public void onNext(gu8 gu8Var) {
            ChannelViewModel.this.f.postValue((List) ((BaseResponse) gu8Var.a()).getData());
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public ChannelViewModel(@NonNull Application application) {
        super(application);
        this.a = new HashMap();
        this.d = new MutableLiveData();
        this.e = new HashMap();
        this.f = new MutableLiveData();
        OnlineVideoDatabase onlineVideoDatabaseA = OnlineVideoDatabase.a();
        this.i = onlineVideoDatabaseA;
        zf7 zf7VarB = onlineVideoDatabaseA.b();
        this.g = zf7VarB;
        this.h = onlineVideoDatabaseA.c();
        this.b = zf7VarB.getAllLiveHistoryBean();
    }

    public static void K(Boolean bool) {
    }

    public static void N(Boolean bool) {
    }

    public static void S(Boolean bool) {
    }

    public static List T(List list, int i, ChannelViewModel channelViewModel) {
        CacheManager.getInstance().setCache(String.valueOf(i), fi1.e(list));
        return list;
    }

    public static void v(VideoViewHolder videoViewHolder, TopicBean topicBean, long j2, long j3, int i, String str) {
        k = System.currentTimeMillis();
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getAlgorithmRecommend(j2, j3, i, str, topicBean.getBiz_group_id()).d0(k29.c()).M(vb.a()).subscribe(new c(topicBean, videoViewHolder));
        wz5.U(j2, j3);
    }

    public LiveData A() {
        return this.b;
    }

    public MutableLiveData B(int i) {
        if (!this.e.containsKey(Integer.valueOf(i))) {
            this.e.put(Integer.valueOf(i), new MutableLiveData());
        }
        return (MutableLiveData) this.e.get(Integer.valueOf(i));
    }

    public void C(int i, int i2, int i3, int i4) {
        F(i, i2, i3, i4, null);
    }

    public MutableLiveData D(int i) {
        if (!this.a.containsKey(Integer.valueOf(i))) {
            this.a.put(Integer.valueOf(i), new MutableLiveData());
        }
        return (MutableLiveData) this.a.get(Integer.valueOf(i));
    }

    public void E(Context context, final int i, final int i2, final int i3, final int i4) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.O(i, (ChannelViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.P(i, i2, i3, i4, (List) obj);
            }
        });
    }

    public void F(int i, int i2, int i3, int i4, String str) {
        if (i3 == 1) {
            c06.t();
            c06.q(str, i2);
        }
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getTopicByChannel(i, i2, 2L, i3, i4).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new a(i2, i3, i4));
    }

    public LiveData G() {
        if (this.c == null) {
            this.c = this.i.c().getAllLiveHistoryUserBeanNotDelete();
        }
        return this.c;
    }

    public void H(final Context context, final HistoryBean historyBean) {
        if (!com.transsion.palmsdk.b.s() || com.transsion.palmsdk.b.k() == null || historyBean.getmIsYoutube() == 1) {
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.Q(historyBean, context);
                }
            });
        } else {
            HistoryManager.o(new HistoryUserBean[]{HistoryUserBean.valueOfUserBean(historyBean)}, com.transsion.palmsdk.b.k());
        }
    }

    public final Boolean I(ChannelViewModel channelViewModel) {
        this.g.deleteAll();
        return Boolean.TRUE;
    }

    public final Boolean J(List list, ChannelViewModel channelViewModel) {
        this.g.deleteHistories(list);
        return Boolean.TRUE;
    }

    public final Boolean L(boolean z, int i, long j2, ChannelViewModel channelViewModel) {
        if (z) {
            if (i == 1) {
                this.d.postValue(this.h.getHistoryUserBean(j2));
            } else {
                this.d.postValue(this.h.getHistoryUserBeanByVideoId(j2));
            }
        } else if (i == 1) {
            this.d.postValue(this.g.getHistoryBean(j2));
        } else {
            this.d.postValue(this.g.getAllHistoryByVideoIdIntact(j2));
        }
        return Boolean.TRUE;
    }

    public final Boolean M(boolean z, long j2, ChannelViewModel channelViewModel) {
        if (z) {
            LogUtils.j("visha_ChannelViewModel", "getHistoryUserBeanBySourceId: " + j2);
            this.d.postValue(this.h.getHistoryUserBeanByVideoId(j2));
        } else {
            LogUtils.j("visha_ChannelViewModel", "getHistoryUserBeanBySourceId: " + j2);
            this.d.postValue(this.g.getAllHistoryByVideoId(j2));
        }
        return Boolean.TRUE;
    }

    public final List O(int i, ChannelViewModel channelViewModel) {
        List list = (List) fi1.c(CacheManager.getInstance().getCache(String.valueOf(i)), new TypeToken<List<TopicBean>>() {
        }.getType());
        return list == null ? new ArrayList() : list;
    }

    public final void P(int i, int i2, int i3, int i4, List list) {
        if (this.a.get(Integer.valueOf(i)) != null && list.size() != 0) {
            List arrayList = (List) ((MutableLiveData) this.a.get(Integer.valueOf(i))).getValue();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.clear();
            arrayList.addAll(list);
            ((MutableLiveData) this.a.get(Integer.valueOf(i))).postValue(arrayList);
        }
        F(i2, i, i3, i4, "cold");
    }

    public final void Q(HistoryBean historyBean, Context context) {
        try {
            long jInsertHistory = this.g.insertHistory(historyBean);
            this.h.insertHistory(HistoryUserBean.valueOfUserBean(historyBean));
            V(context);
            LogUtils.j("visha_ChannelViewModel", "insertHistory success id:" + jInsertHistory);
        } catch (Exception e2) {
            Log.e("visha_ChannelViewModel", "insertHistory failed:" + e2.getMessage());
        }
    }

    public final Boolean R(ChannelViewModel channelViewModel) {
        List<HistoryBean> allHistoryBean = this.g.getAllHistoryBean();
        if (allHistoryBean.size() > 100) {
            this.g.deleteHistories(allHistoryBean.subList(100, allHistoryBean.size()));
        }
        return Boolean.TRUE;
    }

    public final Boolean U(HistoryBean historyBean, ChannelViewModel channelViewModel) {
        long j2;
        if (historyBean.videoIsTact()) {
            List<HistoryBean> allHistoryByVideoIdIntact = this.g.getAllHistoryByVideoIdIntact(historyBean.videoId);
            if (allHistoryByVideoIdIntact == null || allHistoryByVideoIdIntact.size() <= 0) {
                j2 = -1;
            } else {
                this.g.deleteHistories(allHistoryByVideoIdIntact);
                j2 = allHistoryByVideoIdIntact.get(0).duration;
            }
            if (historyBean.duration <= 0 && j2 > 0) {
                historyBean.duration = j2;
            }
        }
        long jInsertHistory = this.g.insertHistory(historyBean);
        this.h.insertHistory(HistoryUserBean.valueOfUserBean(historyBean));
        LogUtils.j("visha_ChannelViewModel", "updateHistory, id: " + jInsertHistory);
        return Boolean.TRUE;
    }

    public void V(Context context) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.R((ChannelViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                ChannelViewModel.S((Boolean) obj);
            }
        });
    }

    public void W(LifecycleOwner lifecycleOwner, Observer observer) {
        this.f.observe(lifecycleOwner, observer);
    }

    public void X(int i) {
        MutableLiveData mutableLiveData = (MutableLiveData) this.a.get(Integer.valueOf(i));
        if (mutableLiveData == null || mutableLiveData.getValue() == 0) {
            return;
        }
        ((List) mutableLiveData.getValue()).clear();
    }

    public void Y(LifecycleOwner lifecycleOwner) {
        this.f.removeObservers(lifecycleOwner);
    }

    public void Z(final int i, final List list) {
        mc7.K(this).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ChannelViewModel.T(list, i, (ChannelViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public void a0(Context context, final HistoryBean historyBean) {
        if (!com.transsion.palmsdk.b.s() || historyBean.getmIsYoutube() == 1) {
            mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.U(historyBean, (ChannelViewModel) obj);
                }
            }).M(vb.a()).d0(k29.c()).Z(new d(context));
        } else {
            HistoryManager.o(new HistoryUserBean[]{HistoryUserBean.valueOfUserBean(historyBean)}, com.transsion.palmsdk.b.k());
        }
    }

    public void r(Context context) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.I((ChannelViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public void s(Context context, final List list) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.J(list, (ChannelViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public final void t(int i, int i2, int i3, List list, List list2, int i4) {
        if (i == 1) {
            list2.clear();
            Z(i2, list);
        }
        list2.addAll(list);
        if (i >= ((int) Math.ceil(i4 / i3))) {
            ((MutableLiveData) this.a.get(Integer.valueOf(i2))).postValue(list2);
            ((MutableLiveData) this.e.get(Integer.valueOf(i2))).postValue(1);
        } else {
            ((MutableLiveData) this.a.get(Integer.valueOf(i2))).postValue(list2);
            ((MutableLiveData) this.e.get(Integer.valueOf(i2))).postValue(0);
        }
    }

    public final void u(int i, int i2, int i3, List list, List list2, int i4, TopicBean topicBean, long j2, long j3, int i5, String str) {
        j = System.currentTimeMillis();
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getAlgorithmRecommend(j2, j3, i5, str, topicBean.getBiz_group_id()).d0(k29.c()).M(vb.a()).subscribe(new b(topicBean, list, i, i2, i3, list2, i4));
    }

    public void w(Context context, final long j2, final int i, final boolean z) {
        LogUtils.j("visha_ChannelViewModel", "getHistoryBeans: vid= " + j2 + " from = " + i + " isLogIn = " + z);
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.L(z, i, j2, (ChannelViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                ChannelViewModel.K((Boolean) obj);
            }
        });
    }

    public LiveData x() {
        return this.d;
    }

    public void y(Context context, final long j2, final boolean z) {
        if (context == null || !(context instanceof BaseActivity)) {
            LogUtils.O("visha_ChannelViewModel", "getHistoryBeansByVideoId: skip, context is null or not BaseActivity");
        } else {
            mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.M(z, j2, (ChannelViewModel) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    ChannelViewModel.N((Boolean) obj);
                }
            });
        }
    }

    public void z() {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getHistoryRecommend().O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new e());
    }
}
