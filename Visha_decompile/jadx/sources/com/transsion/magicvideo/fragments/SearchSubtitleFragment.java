package com.transsion.magicvideo.fragments;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.SubtitleListAdapter;
import com.transsion.magicvideo.fragments.SearchSubtitleFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.FileInfo;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.playercommon.widgets.BreadcrumbsView;
import com.transsion.utils.CustomLinearLayoutManager;
import defpackage.av3;
import defpackage.hk3;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class SearchSubtitleFragment extends BaseFragment {
    public String l;
    public String m;
    public BreadcrumbsView n;
    public View o;
    public RecyclerView p;
    public SubtitleListAdapter r;
    public TextView s;
    public View t;
    public View u;
    public MountPointManager v;
    public Handler w;
    public boolean x;
    public ArrayList q = new ArrayList();
    public Runnable y = new Runnable() {
        @Override
        public final void run() {
            this.b.g0();
        }
    };
    public BreadcrumbsView.a z = new BreadcrumbsView.a() {
        @Override
        public final void a(String str) {
            this.a.h0(str);
        }
    };

    public static SearchSubtitleFragment i0(String str) {
        SearchSubtitleFragment searchSubtitleFragment = new SearchSubtitleFragment();
        Bundle bundle = new Bundle();
        bundle.putString("subtitle_media_path", str);
        searchSubtitleFragment.setArguments(bundle);
        return searchSubtitleFragment;
    }

    private void initList() {
        this.r = new SubtitleListAdapter(R.layout.item_subtitle_list, this.mContext);
        this.p.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        this.p.setAdapter(this.r);
        h0(this.m);
        this.r.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.c0(baseQuickAdapter, view, i);
            }
        });
    }

    private void initTitle() {
        this.s.setText(R.string.select_local_subtitle);
        this.o.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.f0(view);
            }
        });
    }

    public final void X() {
        File file = new File(this.m);
        if (!this.x && !file.exists()) {
            h0("/storage");
            this.n.refreshTab("/storage");
        } else if (this.x) {
            h0("/storage");
        }
    }

    public final void h0(final String str) {
        this.m = str;
        mc7.K(this.mActivity).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.a0(str, (BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.b0((Boolean) obj);
            }
        });
    }

    public final void g0() {
        mc7.K(this).i(800L, TimeUnit.MILLISECONDS).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.d0((SearchSubtitleFragment) obj);
            }
        }).d0(k29.c()).d0(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.e0((Boolean) obj);
            }
        });
    }

    public final Boolean a0(String str, BaseActivity baseActivity) {
        return Boolean.valueOf(m0(str));
    }

    public final void b0(Boolean bool) {
        this.r.setNewData(this.q);
        n0();
    }

    public final void c0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.q.size() == 0) {
            return;
        }
        try {
            File file = ((FileInfo) this.q.get(i)).getFile();
            if (file == null) {
                return;
            }
            String path = file.getPath();
            if (file.isDirectory()) {
                h0(path);
                this.n.refreshTab(path + "/");
            } else if (file.isFile()) {
                Intent intent = new Intent();
                intent.putExtra("subtitle_result", path);
                l0(true, intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final Boolean d0(SearchSubtitleFragment searchSubtitleFragment) {
        this.v.k(this.mContext);
        return Boolean.TRUE;
    }

    public final void e0(Boolean bool) {
        X();
    }

    public final void f0(View view) {
        l0(false, null);
    }

    public void j0() {
        this.w.removeCallbacks(this.y);
        this.w.postDelayed(this.y, 300L);
    }

    @Override
    public SearchSubtitleFragment setBaseActivity(BaseActivity baseActivity) {
        super.setBaseActivity(baseActivity);
        return this;
    }

    public final void l0(boolean z, Intent intent) {
        this.mActivity.setResult(z ? -1 : 0, intent);
        this.mActivity.finish();
    }

    public final boolean m0(String str) {
        boolean zEquals = "/storage".equals(str);
        this.x = zEquals;
        if (zEquals) {
            this.q.clear();
            for (MountPointManager.b bVar : MountPointManager.f().g()) {
                FileInfo fileInfo = new FileInfo(bVar.b);
                fileInfo.setName(bVar.a);
                fileInfo.setIsMountPoint(true);
                fileInfo.srcId = bVar.c;
                this.q.add(fileInfo);
            }
        } else {
            File[] fileArrListFiles = new File(str).listFiles();
            this.q.clear();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        String path = file.getPath();
                        if (hk3.e.contains(path.substring(path.lastIndexOf(Consts.DOT)))) {
                            this.q.add(new FileInfo(file));
                        }
                    } else if (file.isDirectory()) {
                        this.q.add(new FileInfo(file));
                    }
                }
            }
        }
        return true;
    }

    public void n0() {
        View view;
        if (this.u == null && (view = this.t) != null) {
            this.u = ((ViewStub) view.findViewById(R.id.file_empty_view)).inflate();
        }
        if (this.u != null) {
            boolean z = this.q.size() == 0;
            this.u.setVisibility(z ? 0 : 8);
            this.p.setVisibility(z ? 8 : 0);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String strU = av3.u(arguments.getString("subtitle_media_path"));
            this.l = strU;
            this.m = strU;
        }
        MountPointManager mountPointManagerF = MountPointManager.f();
        this.v = mountPointManagerF;
        mountPointManagerF.k(Utils.a());
        this.w = new Handler();
        this.x = "/storage".equals(this.l);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.search_subtitles_fragment, viewGroup, false);
        this.t = viewInflate;
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.w.removeCallbacks(this.y);
    }

    @Override
    public void onResume() {
        super.onResume();
        X();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        BreadcrumbsView breadcrumbsView = (BreadcrumbsView) view.findViewById(R.id.bv_path_navigation);
        this.n = breadcrumbsView;
        breadcrumbsView.addItemClickListener(this.z);
        this.o = view.findViewById(R.id.title_bar_back);
        this.p = (RecyclerView) view.findViewById(R.id.rv_subtitle_list);
        this.s = (TextView) view.findViewById(R.id.title_bar_title);
        initTitle();
        initList();
        this.n.refreshTab(this.m);
    }
}
