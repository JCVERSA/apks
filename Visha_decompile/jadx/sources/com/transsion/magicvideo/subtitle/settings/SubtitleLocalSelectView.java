package com.transsion.magicvideo.subtitle.settings;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lzy.okgo.model.Progress;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.SubtitleItemAdapter;
import com.transsion.magicvideo.adapter.SubtitleListAdapter;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.magicvideo.subtitle.settings.SubtitleLocalSelectView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.FileInfo;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.playercommon.widgets.BreadcrumbsView;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.popup.ISelectCallback;
import defpackage.cc0;
import defpackage.f16;
import defpackage.fm9;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.n7c;
import defpackage.p06;
import defpackage.t74;
import defpackage.vb;
import defpackage.x5a;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class SubtitleLocalSelectView extends LinearLayout {
    public Context b;
    public VideoSubtitleViewModel c;
    public View d;
    public View e;
    public RecyclerView f;
    public ArrayList g;
    public SubtitleItemAdapter h;
    public SubtitleListAdapter i;
    public SubtitleSelectView.c j;
    public int k;
    public View l;
    public ImageView m;
    public CustomLinearLayoutManager n;
    public String o;
    public BreadcrumbsView p;
    public ArrayList q;
    public boolean r;
    public MountPointManager s;
    public int t;
    public int u;
    public boolean v;
    public ArrayList w;
    public final Observer x;
    public BreadcrumbsView.a y;

    public class a implements ISelectCallback {
        public a() {
        }

        @Override
        public void selectCallback(x5a x5aVar) {
            MMKV.p().t("select_subtitle_mode", x5aVar.a());
            SubtitleLocalSelectView.this.v = x5aVar.a() == 1;
            hb0.markTrackSingle("vd_cp_subtitlepop_select_model", CommonUrlParts.MODEL, SubtitleLocalSelectView.this.v ? TtmlNode.COMBINE_ALL : Progress.FOLDER);
            SubtitleLocalSelectView.this.F();
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public b() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            SubtitleLocalSelectView.this.t(baseQuickAdapter, view, i);
        }
    }

    public class c implements BaseQuickAdapter.OnItemChildClickListener {
        public c() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            SubtitleLocalSelectView.this.t(baseQuickAdapter, view, i);
        }
    }

    public SubtitleLocalSelectView(Context context) {
        this(context, null);
    }

    private List<x5a> getSubtitleSwitchModeItems() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new x5a(!this.v, getResources().getString(R.string.show_as_file), 0));
        arrayList.add(new x5a(this.v, getResources().getString(R.string.show_all_subtitles), 1));
        return arrayList;
    }

    public final void A(View view) {
        hb0.markDirect("vd_cp_subtitlepop_select_model");
        List<x5a> subtitleSwitchModeItems = getSubtitleSwitchModeItems();
        new fm9(this.b, this.m, 10, true, -2, -2).i(subtitleSwitchModeItems, subtitleSwitchModeItems.get(this.v ? 1 : 0), new a());
    }

    public final void B(BaseQuickAdapter baseQuickAdapter, View view, int i) {
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
                r(path, false);
                this.p.refreshTab(path + "/");
            } else if (file.isFile()) {
                hb0.markDirect("vd_cp_subtitle_pop_addlocalsub_cl");
                this.c.firstCurData.getValue();
                this.c.secondCurData.getValue();
                View viewFindViewById = findViewById(R.id.title_bar_back);
                this.j.d(new SubtitleTrackInfo(path), this.k);
                viewFindViewById.performClick();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        BreadcrumbsView breadcrumbsView = this.p;
        if (breadcrumbsView != null) {
            this.t = breadcrumbsView.getItemViewCount();
        }
    }

    public final void C(String str) {
        r(str, false);
        BreadcrumbsView breadcrumbsView = this.p;
        int itemViewCount = breadcrumbsView != null ? breadcrumbsView.getItemViewCount() : 0;
        p06.n0("vd_cp_setting_sub_path_back", "tier", (this.t - itemViewCount) - 1);
        this.t = itemViewCount;
    }

    public final void D(View view) {
        SubtitleSelectView.c cVar = this.j;
        if (cVar != null) {
            cVar.b();
        }
    }

    public final void E(BaseQuickAdapter baseQuickAdapter, List list) {
        cc0.c(this.f, baseQuickAdapter, list);
    }

    public final void F() {
        I();
        if (this.v) {
            G();
        } else {
            H();
        }
        K();
    }

    public final void G() {
        this.f.setAdapter(this.h);
    }

    public final void H() {
        this.f.setAdapter(this.i);
    }

    public final void I() {
        if (!this.v) {
            this.p.setVisibility(0);
            return;
        }
        SubtitleListAdapter subtitleListAdapter = this.i;
        if (subtitleListAdapter == null || subtitleListAdapter.getData() == null || this.i.getData().size() <= 0) {
            this.p.setVisibility(4);
        } else {
            this.p.setVisibility(8);
        }
    }

    public final boolean J(String str) {
        this.u = 0;
        this.r = "/storage".equals(str);
        ArrayList arrayList = new ArrayList(this.q);
        this.w = arrayList;
        if (this.r) {
            arrayList.clear();
            for (MountPointManager.b bVar : MountPointManager.f().g()) {
                FileInfo fileInfo = new FileInfo(bVar.b);
                fileInfo.setName(bVar.a);
                fileInfo.setIsMountPoint(true);
                fileInfo.srcId = bVar.c;
                this.w.add(fileInfo);
            }
        } else {
            new File(str);
            File[] fileArrListFiles = new File(str).listFiles();
            this.w.clear();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        String path = file.getPath();
                        if (path.contains(Consts.DOT)) {
                            String strSubstring = path.substring(path.lastIndexOf(Consts.DOT));
                            if (n7c.b(strSubstring) && !strSubstring.equals(".sub")) {
                                if (!strSubstring.equals(".idx")) {
                                    this.u++;
                                    this.w.add(new FileInfo(file));
                                } else if (s(path)) {
                                    this.u++;
                                    this.w.add(new FileInfo(file));
                                }
                            }
                        }
                    } else if (file.isDirectory()) {
                        this.w.add(new FileInfo(file));
                    }
                }
            }
        }
        return true;
    }

    public void K() {
        boolean zIsEmpty;
        View view;
        if (this.e == null && (view = this.d) != null) {
            this.e = ((ViewStub) view.findViewById(R.id.file_empty_view)).inflate();
        }
        if (this.e != null) {
            if (this.v) {
                zIsEmpty = this.g.size() == 0;
            } else {
                zIsEmpty = this.q.isEmpty();
            }
            this.e.setVisibility(zIsEmpty ? 0 : 8);
            this.f.setVisibility(zIsEmpty ? 8 : 0);
            this.e.findViewById(R.id.tv_download).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.D(view2);
                }
            });
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c.getSystemSubtitlesLiveData().removeObserver(this.x);
    }

    public final void r(final String str, final boolean z) {
        this.o = str;
        Log.e("SubtitleSelectView", "checkPathItems " + str);
        mc7.K(this).g(((BaseActivity) this.b).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.y(str, (SubtitleLocalSelectView) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.z(z, (Boolean) obj);
            }
        });
    }

    public final boolean s(String str) {
        int iLastIndexOf;
        if (str == null || str.isEmpty() || (iLastIndexOf = str.lastIndexOf(46)) == -1) {
            return false;
        }
        return new File(str.substring(0, iLastIndexOf) + ".sub").exists();
    }

    public void setCurrentPath(String str) {
        r(str, true);
        this.p.refreshTab(this.o);
        this.t = this.p.getItemViewCount();
    }

    public void setSubtitleOperateListener(SubtitleSelectView.c cVar) {
        this.j = cVar;
    }

    public void setTrackValue(int i) {
        this.k = i;
    }

    public final void t(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        SubtitleTrackInfo subtitleTrackInfo = (SubtitleTrackInfo) this.g.get(i);
        Log.e("VishaTranPlaye", "position:" + i + StringUtils.COMMA + subtitleTrackInfo);
        if (this.j != null) {
            f16.f(this.k + 1);
            this.j.d(subtitleTrackInfo, this.k);
        }
        this.h.r(i);
        this.h.notifyDataSetChanged();
        this.l.performClick();
    }

    public final void u() {
        this.v = MMKV.p().g("select_subtitle_mode", 0) == 1;
        this.d = LayoutInflater.from(this.b).inflate(R.layout.subtitle_local_select_layout, (ViewGroup) this, true);
        this.l = findViewById(R.id.title_bar_back);
        ImageView imageView = (ImageView) findViewById(R.id.iv_switch_subtitle);
        this.m = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.A(view);
            }
        });
        BreadcrumbsView breadcrumbsView = (BreadcrumbsView) this.d.findViewById(R.id.bv_path_navigation);
        this.p = breadcrumbsView;
        breadcrumbsView.addItemClickListener(this.y);
        View view = this.d;
        int i = R.id.rv_subtitle_list;
        this.f = (RecyclerView) view.findViewById(i);
        MountPointManager mountPointManagerF = MountPointManager.f();
        this.s = mountPointManagerF;
        mountPointManagerF.k(Utils.a());
        SubtitleItemAdapter subtitleItemAdapter = new SubtitleItemAdapter(this.b);
        this.h = subtitleItemAdapter;
        subtitleItemAdapter.g(true);
        this.i = new SubtitleListAdapter();
        this.f = (RecyclerView) this.d.findViewById(i);
        CustomLinearLayoutManager customLinearLayoutManager = new CustomLinearLayoutManager(this.b);
        this.n = customLinearLayoutManager;
        this.f.setLayoutManager(customLinearLayoutManager);
        v();
        w();
        x();
        F();
    }

    public final void v() {
        this.h.setOnItemClickListener(new b());
        this.h.setOnItemChildClickListener(new c());
    }

    public final void w() {
        this.i.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.B(baseQuickAdapter, view, i);
            }
        });
    }

    public final void x() {
        Log.e("SubtitleSelectView", "initViewModel");
        VideoSubtitleViewModel videoSubtitleViewModel = (VideoSubtitleViewModel) new ViewModelProvider((BaseActivity) this.b, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(VideoSubtitleViewModel.class);
        this.c = videoSubtitleViewModel;
        videoSubtitleViewModel.getSystemSubtitlesLiveData().observe((BaseActivity) this.b, this.x);
        this.c.querySystemSubtitles((BaseActivity) this.b);
    }

    public final Boolean y(String str, SubtitleLocalSelectView subtitleLocalSelectView) {
        return Boolean.valueOf(J(str));
    }

    public final void z(boolean z, Boolean bool) {
        ArrayList arrayList = this.w;
        this.q = arrayList;
        E(this.i, arrayList);
        I();
        K();
        if (z) {
            p06.n0("vd_cp_setting_sub_path_show_p", hb0.KEY_NAME_NUM, this.u);
        }
        hb0.markTrackSingle("vd_cp_subtitle_pop_addlocalsub_show", hb0.KEY_NAME_NUM, Integer.valueOf(this.g.size()));
    }

    public SubtitleLocalSelectView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleLocalSelectView(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SubtitleLocalSelectView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.g = new ArrayList();
        this.q = new ArrayList();
        this.t = 0;
        this.u = 0;
        this.w = new ArrayList();
        this.x = new Observer() {
            @Override
            public void onChanged(List list) {
                SubtitleTrackInfo value = (SubtitleLocalSelectView.this.k == 0 ? SubtitleLocalSelectView.this.c.firstCurData : SubtitleLocalSelectView.this.c.secondCurData).getValue();
                SubtitleLocalSelectView.this.g.clear();
                SubtitleLocalSelectView.this.g.addAll(list);
                SubtitleLocalSelectView.this.K();
                final int i3 = 0;
                if (value == null) {
                    SubtitleLocalSelectView.this.h.r(0);
                } else {
                    int i4 = 0;
                    for (int i5 = 0; i5 < SubtitleLocalSelectView.this.g.size(); i5++) {
                        SubtitleTrackInfo subtitleTrackInfo = (SubtitleTrackInfo) SubtitleLocalSelectView.this.g.get(i5);
                        if (subtitleTrackInfo.isInnerSubtitle ? subtitleTrackInfo.sub_inner_id == value.sub_inner_id : TextUtils.equals(subtitleTrackInfo.path, value.path)) {
                            SubtitleLocalSelectView.this.h.r(i5);
                            i4 = i5;
                        }
                    }
                    i3 = i4;
                }
                SubtitleLocalSelectView subtitleLocalSelectView = SubtitleLocalSelectView.this;
                subtitleLocalSelectView.E(subtitleLocalSelectView.h, SubtitleLocalSelectView.this.g);
                SubtitleLocalSelectView.this.f.scrollToPosition(i3);
                SubtitleLocalSelectView.this.f.post(new Runnable() {
                    @Override
                    public void run() {
                        View viewFindViewByPosition = SubtitleLocalSelectView.this.n.findViewByPosition(i3);
                        if (viewFindViewByPosition != null) {
                            SubtitleLocalSelectView.this.n.scrollToPositionWithOffset(i3, (SubtitleLocalSelectView.this.f.getHeight() / 2) - (viewFindViewByPosition.getHeight() / 2));
                        }
                    }
                });
            }
        };
        this.y = new BreadcrumbsView.a() {
            @Override
            public final void a(String str) {
                this.a.C(str);
            }
        };
        this.b = context;
        u();
    }
}
