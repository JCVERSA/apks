package com.mgtv.ssp.adapter;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.hunantv.imgo.adview.AdTopBar;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.mgmi.ssp.ADSize;
import com.mgmi.ssp.AdError;
import com.mgmi.ssp.NativeExpressAD;
import com.mgmi.ssp.NativeExpressADListener;
import com.mgmi.ssp.NativeExpressADView;
import com.mgmi.ssp.NativeInnerListener;
import com.mgmi.ssp.TParams;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.thirdsdk.playcore.utils.e;
import com.mgtv.thirdsdk.playcore.utils.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class BaseVideoAdapter extends RecyclerView.Adapter<BaseHolder> {
    public static String i = "update_countDown";
    b a;
    a b;
    RecyclerView c;
    protected List<VideoBean> d;
    public int j;
    private boolean l;
    private int n;
    protected HashMap<Integer, NativeExpressADView> e = new HashMap<>();
    protected HashMap<Integer, WeakReference<NativeExpressAD>> f = new HashMap<>();
    protected List<Integer> g = new ArrayList();
    public boolean h = false;
    private String m = "";
    ADSize k = new ADSize(-1, -2);

    public interface a {
        void a(int i);

        void a(int i, View view);

        boolean a();

        void b(int i);
    }

    public interface b {
        void a(int i);

        void b(int i);
    }

    public BaseVideoAdapter(List<VideoBean> list) {
        this.d = list;
    }

    public void l(int i2) {
        try {
            if (this.d.get(i2).getAd() != null) {
                this.d.get(i2).getAd().isClosed = true;
            }
        } catch (Throwable unused) {
        }
    }

    public abstract int a();

    public void a(RecyclerView recyclerView, int i2) {
    }

    public abstract void a(BaseHolder baseHolder, int i2);

    public abstract BaseHolder b(ViewGroup viewGroup, int i2);

    public void c(int i2) {
        try {
            WeakReference<NativeExpressAD> weakReference = this.f.get(Integer.valueOf(i2));
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            Log.v(getClass().getSimpleName(), "resume@ postion =" + i2);
            weakReference.get().preLoadView();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void d(final int i2) {
        e.a(new Runnable() {
            @Override
            public void run() {
                try {
                    BaseVideoAdapter baseVideoAdapter = BaseVideoAdapter.this;
                    if (baseVideoAdapter.d != null) {
                        baseVideoAdapter.l(i2);
                    }
                } catch (Throwable unused) {
                }
            }
        }, 10L);
    }

    public void e(final int i2) {
        e.a(new Runnable() {
            @Override
            public void run() {
                try {
                    if (BaseVideoAdapter.this.e.containsKey(Integer.valueOf(i2))) {
                        BaseVideoAdapter.this.l(i2);
                        BaseVideoAdapter.this.e.remove(Integer.valueOf(i2));
                        BaseVideoAdapter.this.f.remove(Integer.valueOf(i2));
                        BaseVideoAdapter.this.notifyItemRemoved(i2);
                    }
                } catch (Throwable unused) {
                }
            }
        }, 10L);
    }

    public void f(int i2) {
        b bVar = this.a;
        if (bVar != null) {
            bVar.a(i2);
        }
    }

    public void g(int i2) {
        b bVar = this.a;
        if (bVar != null) {
            bVar.b(i2);
        }
    }

    @Override
    public int getItemCount() {
        List<VideoBean> list = this.d;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public int getItemViewType(int i2) {
        int type = this.d.get(i2).getType();
        if (1 == type) {
            return 1;
        }
        if (2 == type) {
            return 2;
        }
        return super.getItemViewType(i2);
    }

    public void h(int i2) {
        try {
            WeakReference<NativeExpressAD> weakReference = this.f.get(Integer.valueOf(i2));
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            Log.v(getClass().getSimpleName(), "pause@ postion =" + i2);
            weakReference.get().paused();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void i(int i2) {
        try {
            WeakReference<NativeExpressAD> weakReference = this.f.get(Integer.valueOf(i2));
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            System.out.println("eeee  startPlay resume  @ postion =" + i2);
            Log.v(getClass().getSimpleName(), "resume@ postion =" + i2);
            weakReference.get().play();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean j(int i2) {
        try {
            if (this.d.get(i2).getAd() != null) {
                return this.d.get(i2).getAd().isClosed;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean k(int i2) {
        NativeExpressADView nativeExpressADView;
        HashMap<Integer, NativeExpressADView> map = this.e;
        if (map == null || (nativeExpressADView = map.get(Integer.valueOf(i2))) == null) {
            return true;
        }
        return nativeExpressADView.isVideoType();
    }

    public void a(boolean z, int i2) {
    }

    public void b(int i2) {
        this.j = i2;
    }

    public HashMap<Integer, NativeExpressADView> d() {
        return this.e;
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2, @NonNull List list) {
        a((BaseHolder) viewHolder, i2, (List<Object>) list);
    }

    @Override
    public void onBindViewHolder(BaseHolder baseHolder, int i2) {
        a(baseHolder, i2, new ArrayList());
    }

    public void b() {
        this.e.clear();
        this.f.clear();
        this.d.clear();
    }

    public VideoBean a(int i2) {
        List<VideoBean> list = this.d;
        if (list != null && i2 < list.size()) {
            return this.d.get(i2);
        }
        return null;
    }

    public void c() {
        try {
            Iterator<Map.Entry<Integer, WeakReference<NativeExpressAD>>> it = this.f.entrySet().iterator();
            while (it.hasNext()) {
                WeakReference<NativeExpressAD> value = it.next().getValue();
                if (value != null && value.get() != null) {
                    value.get().paused();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(boolean z) {
        if ("immersion".equals(this.m)) {
            a(z);
        } else if (z) {
            i(this.j);
        }
    }

    @Override
    @NonNull
    public BaseHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (2 == i2) {
            return new AdHolder(LayoutInflater.from(viewGroup.getContext()).inflate(a(), viewGroup, false));
        }
        return b(viewGroup, i2);
    }

    public void b(int i2, boolean z) {
        if (this.l) {
            this.l = false;
            try {
                WeakReference<NativeExpressAD> weakReference = this.f.get(Integer.valueOf(i2));
                if (weakReference != null && weakReference.get() != null) {
                    System.out.println("eeee noticeScreenChanged@ i =" + i2 + " isLand = " + z);
                    if (z) {
                        weakReference.get().noticeFullScreen();
                    } else {
                        weakReference.get().noticeHarlfScreen();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void a(@NonNull BaseHolder baseHolder, int i2, @NonNull List<Object> list) {
        int i3;
        VideoBean videoBean = this.d.get(i2);
        if (baseHolder instanceof AdHolder) {
            AdHolder adHolder = (AdHolder) baseHolder;
            adHolder.e = i2;
            AdTopBar adTopBar = adHolder.c;
            if (list != null && list.size() != 0) {
                if (!i.equals(list.get(0)) || adTopBar == null || (i3 = this.n) < 0) {
                    return;
                }
                adTopBar.setTvAdCountDownText(i3);
                adTopBar.setTvAdSkipText("广告剩余");
                return;
            }
            adHolder.b.removeAllViews();
            if (this.e.containsKey(Integer.valueOf(i2))) {
                if (this.e.get(Integer.valueOf(i2)) != null) {
                    NativeExpressADView nativeExpressADView = this.e.get(Integer.valueOf(i2));
                    if (nativeExpressADView != null) {
                        adHolder.b.removeAllViews();
                        View view = nativeExpressADView.getView();
                        f.a((ViewGroup) view.getParent(), view);
                        a aVar = this.b;
                        if (aVar != null) {
                            a(i2, aVar.a());
                        }
                        adHolder.a(false);
                        adHolder.b.addView(view);
                        c(i2);
                        return;
                    }
                    a(videoBean, i2, adHolder);
                    return;
                }
                a(videoBean, i2, adHolder);
                return;
            }
            a(videoBean, i2, adHolder);
            return;
        }
        System.out.println("eeee onBindViewHolder position = " + i2);
        a(baseHolder, i2);
    }

    public void c(boolean z) {
        WeakReference<NativeExpressAD> weakReference;
        try {
            int size = this.g.size();
            for (int i2 = 0; i2 < size; i2++) {
                Integer num = this.g.get(i2);
                if (num != null && (weakReference = this.f.get(num)) != null && weakReference.get() != null) {
                    if (z) {
                        weakReference.get().noticeFullScreen();
                    } else {
                        weakReference.get().noticeHarlfScreen();
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(VideoBean videoBean, final int i2, final BaseHolder baseHolder) {
        View view;
        if (baseHolder == null || (view = baseHolder.f) == null || view.getContext() == null) {
            return;
        }
        System.out.println("eeee loadAd " + i2);
        TParams tParams = new TParams();
        tParams.setNid(com.hunantv.imgo.util.b.l(this.m));
        tParams.setPosition(i2);
        tParams.setFrom(this.m);
        String str = MgtvPlayerConstants.MGSDK_PPID;
        String str2 = videoBean.getAd().aid;
        if (videoBean.getAd().isClosed) {
            return;
        }
        NativeExpressAD nativeExpressAD = new NativeExpressAD(com.hunantv.imgo.util.a.a(baseHolder.f.getContext()), this.k, str, str2, new NativeExpressADListener() {
            @Override
            public void onADClicked(NativeExpressADView nativeExpressADView) {
            }

            @Override
            public void onADClosed(NativeExpressADView nativeExpressADView) {
                try {
                    if (BaseVideoAdapter.this.e.containsKey(Integer.valueOf(i2))) {
                        BaseVideoAdapter.this.l(i2);
                        BaseHolder baseHolder2 = baseHolder;
                        if (baseHolder2 instanceof AdHolder) {
                            ((AdHolder) baseHolder2).a(true);
                        }
                        NativeExpressADView nativeExpressADViewRemove = BaseVideoAdapter.this.e.remove(Integer.valueOf(i2));
                        BaseVideoAdapter.this.f.remove(Integer.valueOf(i2));
                        BaseVideoAdapter.this.notifyItemRemoved(i2);
                        a aVar = BaseVideoAdapter.this.b;
                        if (aVar == null || nativeExpressADViewRemove == null) {
                            return;
                        }
                        aVar.a(i2, nativeExpressADViewRemove.getView());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onADExposure(NativeExpressADView nativeExpressADView) {
                com.hunantv.imgo.log.e.b("lyzzzz", "onADExposure", true);
                BaseVideoAdapter.this.a(true, i2);
            }

            @Override
            public void onADLoaded(List<NativeExpressADView> list) {
                System.out.println("eeee onADLoaded ");
                if (list == null || list.size() <= 0) {
                    return;
                }
                BaseVideoAdapter.this.l = true;
                BaseVideoAdapter.this.e.put(Integer.valueOf(i2), list.get(0));
                BaseVideoAdapter baseVideoAdapter = BaseVideoAdapter.this;
                int i3 = i2;
                baseVideoAdapter.a(i3, i3);
            }

            @Override
            public void onNoAd(@NonNull AdError adError) {
                com.hunantv.imgo.log.e.b("lyzzzz", "adError:", true);
                BaseVideoAdapter.this.e.put(Integer.valueOf(i2), null);
                BaseVideoAdapter.this.d(i2);
            }

            @Override
            public void onRenderFail(NativeExpressADView nativeExpressADView) {
                com.hunantv.imgo.log.e.b("lyzzzz", "onRenderFail", true);
                BaseVideoAdapter.this.e(i2);
                BaseVideoAdapter.this.a(false, i2);
            }

            @Override
            public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
                com.hunantv.imgo.log.e.b("lyzzzz", "onRenderSuccess", true);
            }
        }, 5, tParams);
        nativeExpressAD.loadAd(true, 1, -1);
        nativeExpressAD.setADListenerPro(new NativeInnerListener() {
            @Override
            public boolean isFullScreen() {
                a aVar = BaseVideoAdapter.this.b;
                if (aVar != null) {
                    return aVar.a();
                }
                return false;
            }

            @Override
            public void onADFinish() {
                BaseVideoAdapter.this.f(i2);
                com.hunantv.imgo.log.e.b("BaseVideoAdapter", "onADFinish", true);
            }

            @Override
            public void onClickBackButton() {
                a aVar = BaseVideoAdapter.this.b;
                if (aVar != null) {
                    aVar.a(i2);
                }
            }

            @Override
            public void onClickFullScreenButton() {
                a aVar = BaseVideoAdapter.this.b;
                if (aVar != null) {
                    aVar.b(i2);
                }
            }

            @Override
            public void onUpdateAdTime(int i3) {
                BaseVideoAdapter.this.n = i3;
                RecyclerView recyclerView = BaseVideoAdapter.this.c;
                if (recyclerView != null) {
                    recyclerView.post(new Runnable() {
                        @Override
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            BaseVideoAdapter.this.notifyItemChanged(i2, BaseVideoAdapter.i);
                        }
                    });
                }
            }

            @Override
            public void onVideoADStart() {
                BaseVideoAdapter.this.g(i2);
            }
        });
        com.hunantv.imgo.log.e.b("lyzzzz", "nativeAd:position " + i2 + "@@nativeAd", true);
        this.f.put(Integer.valueOf(i2), new WeakReference<>(nativeExpressAD));
        this.g.add(Integer.valueOf(i2));
    }

    public void a(final int i2, int i3) {
        RecyclerView recyclerView;
        System.out.println("eeee updateRange " + i2 + " " + i3);
        if (i2 < 0 || i3 < 0 || i2 > i3) {
            notifyDataSetChanged();
        } else if (i2 == i3 && (recyclerView = this.c) != null) {
            recyclerView.post(new Runnable() {
                @Override
                public void run() {
                    BaseVideoAdapter.this.notifyItemChanged(i2);
                }
            });
        } else {
            notifyItemRangeChanged(i2, (i3 - i2) + 1);
        }
    }

    public void a(b bVar) {
        this.a = bVar;
    }

    public void a(boolean z) {
        NativeExpressADView nativeExpressADView;
        try {
            int size = this.g.size();
            for (int i2 = 0; i2 < size; i2++) {
                Integer num = this.g.get(i2);
                if (num != null && Math.abs(num.intValue() - this.j) <= 1 && (nativeExpressADView = this.e.get(num)) != null && nativeExpressADView.getView() != null && !f.a(nativeExpressADView.getView())) {
                    if (z) {
                        i(num.intValue());
                        break;
                    } else {
                        h(num.intValue());
                        break;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(int i2, boolean z) {
        try {
            WeakReference<NativeExpressAD> weakReference = this.f.get(Integer.valueOf(i2));
            if (weakReference != null && weakReference.get() != null) {
                System.out.println("eeee noticeScreenChanged@ postion =" + i2 + " isLand = " + z);
                if (z) {
                    weakReference.get().noticeFullScreen();
                } else {
                    weakReference.get().noticeHarlfScreen();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(String str) {
        this.m = str;
    }

    public void a(RecyclerView recyclerView) {
        this.c = recyclerView;
    }
}
