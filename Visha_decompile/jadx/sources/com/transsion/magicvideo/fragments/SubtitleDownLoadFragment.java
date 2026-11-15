package com.transsion.magicvideo.fragments;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.NetState;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.core.log.LogUtils;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.subtitle.OpenSubtitle;
import com.transsion.dbdata.beans.subtitle.SubtitleLanguage;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.SubtitleManagerActivity;
import com.transsion.magicvideo.adapter.SearchSubtitleAdapter;
import com.transsion.magicvideo.fragments.SubtitleDownLoadFragment;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.vishaapis.opensubtitle.SubTitleService;
import com.transsion.playercommon.vishaapis.opensubtitle.SubTitleServiceManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BadgeView;
import com.transsion.widgets.popup.ISelectCallback;
import com.transsion.widgetslib.widget.SearchBar;
import defpackage.av3;
import defpackage.ay9;
import defpackage.bg5;
import defpackage.fc7;
import defpackage.fm9;
import defpackage.gu8;
import defpackage.hb0;
import defpackage.jq0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pp3;
import defpackage.sz2;
import defpackage.t74;
import defpackage.tpb;
import defpackage.tq0;
import defpackage.vb;
import defpackage.w6c;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import retrofit2.HttpException;

public class SubtitleDownLoadFragment extends BaseFragment {
    public static final String G = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Download/VishaSubtitles";
    public BadgeView A;
    public TextView B;
    public TextView C;
    public LinearLayout D;
    public int E;
    public final Map F = new HashMap();
    public ImageView l;
    public SearchBar m;
    public AppCompatTextView n;
    public AppCompatTextView o;
    public ImageView p;
    public View q;
    public View r;
    public View s;
    public RecyclerView t;
    public SearchSubtitleAdapter u;
    public String v;
    public boolean w;
    public SubtitleManagerActivity x;
    public VideoSubtitleViewModel y;
    public String z;

    public class a implements ISelectCallback {
        public a() {
        }

        @Override
        public void selectCallback(SubtitleLanguage subtitleLanguage) {
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_language", "language", subtitleLanguage.displayText());
            SubtitleDownLoadFragment.this.y.selectLanguage.setValue(subtitleLanguage);
        }
    }

    public class b extends RecyclerView.ItemDecoration {
        public b() {
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.bottom = com.transsion.utils.a.d(SubtitleDownLoadFragment.this.x, 15.0f);
            rect.bottom = com.transsion.utils.a.d(SubtitleDownLoadFragment.this.x, 15.0f);
        }
    }

    public class c implements sz2 {
        public final List a;
        public final int b;

        public c(List list, int i) {
            this.a = list;
            this.b = i;
        }

        @Override
        public void a(String str) {
            OpenSubtitle openSubtitle = (OpenSubtitle) this.a.get(this.b);
            if (av3.e(str)) {
                String strReplace = str.replace(".gz", "");
                if (TextUtils.isEmpty(strReplace)) {
                    openSubtitle.setSubtitleDownState(0);
                } else {
                    openSubtitle.setSubtitleDownState(2);
                    openSubtitle.setPath(strReplace);
                    tpb.j0().v(SubtitleDownLoadFragment.this.x0(openSubtitle));
                }
            } else {
                openSubtitle.setSubtitleDownState(0);
            }
            SubtitleManagerActivity subtitleManagerActivity = SubtitleDownLoadFragment.this.x;
            final int i = this.b;
            subtitleManagerActivity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.f(i);
                }
            });
        }

        public final void e(int i) {
            SubtitleDownLoadFragment.this.u.notifyItemChanged(i);
        }

        public final void f(int i) {
            SubtitleDownLoadFragment.this.u.notifyItemChanged(i);
            SubtitleDownLoadFragment.this.A.setVisibility(0);
        }

        @Override
        public void onFail(String str) {
            ((OpenSubtitle) this.a.get(this.b)).setSubtitleDownState(0);
            SubtitleManagerActivity subtitleManagerActivity = SubtitleDownLoadFragment.this.x;
            final int i = this.b;
            subtitleManagerActivity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.e(i);
                }
            });
        }
    }

    public class d implements tq0 {
        public final sz2 b;

        public d(sz2 sz2Var) {
            this.b = sz2Var;
        }

        public final void b(gu8 gu8Var, sz2 sz2Var) throws Throwable {
            String path;
            if (!gu8Var.e()) {
                if (sz2Var != null) {
                    sz2Var.onFail("response failed");
                }
                Log.e("SubtitleDownActivity", "onResponse " + gu8Var);
                hb0.markTrackSingle("vd_cp_subtitle_downloadsub_downloadstatue", "statue", 0);
                return;
            }
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_downloadstatue", "statue", 1);
            if (TextUtils.isEmpty(SubtitleDownLoadFragment.this.z)) {
                path = ay9.a(SubtitleDownLoadFragment.this.x).getPath();
            } else if (!SubtitleDownLoadFragment.this.z.contains("/")) {
                path = ay9.b(SubtitleDownLoadFragment.this.x, SubtitleDownLoadFragment.this.z).getPath();
            } else if (Environment.getExternalStorageDirectory().getPath().equals(new File(SubtitleDownLoadFragment.this.z).getParent())) {
                path = SubtitleDownLoadFragment.G;
            } else {
                path = SubtitleDownLoadFragment.this.z.substring(0, SubtitleDownLoadFragment.this.z.lastIndexOf("/")) + System.currentTimeMillis() + File.separator;
            }
            av3.E(path + File.separator + SubtitleDownLoadFragment.this.z0(gu8Var), gu8Var, sz2Var);
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            Log.e("SubtitleDownActivity", "onFailure " + th);
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_downloadstatue", "statue", 0);
            sz2 sz2Var = this.b;
            if (sz2Var != null) {
                sz2Var.onFail(th.getMessage());
            }
        }

        @Override
        public void onResponse(jq0 jq0Var, final gu8 gu8Var) {
            final sz2 sz2Var = this.b;
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.b(gu8Var, sz2Var);
                }
            });
        }
    }

    public static class e {
        public static final int[] a;

        static {
            int[] iArr = new int[NetState.values().length];
            a = iArr;
            try {
                iArr[NetState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[NetState.EFFECTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[NetState.EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[NetState.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void D0() {
        this.y.isAutoSearch.setValue(Boolean.TRUE);
        this.m.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.K0();
            }
        }, 300L);
        this.y.selectLanguage.setValue((SubtitleLanguage) A0().get(0));
        this.y.selectLanguage.observe(this.x, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.L0((SubtitleLanguage) obj);
            }
        });
        this.y.queryVideoSubtitles(this.x.getIntent().getIntExtra("media_id", 0), this.x);
        this.B.setText(this.x.getIntent().getStringExtra("video_name"));
        this.y.deleteSubtitleHistory.observe(this.x, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N0((SubtitleHistory) obj);
            }
        });
        this.y.subtitleHistoryLiveLiveData.observe(this.x, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.I0((List) obj);
            }
        });
        this.y.subtitleListNet.observe(this.x, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.b1((List) obj);
            }
        });
        this.y.netState.observe(this.x, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.J0((NetState) obj);
            }
        });
    }

    public static void G0(Throwable th) {
        LogUtils.e("SubtitleDownActivity", "add subtitle error");
    }

    public static void M0(SubtitleHistory subtitleHistory, OpenSubtitle openSubtitle) {
        if (TextUtils.equals(openSubtitle.getSubId(), subtitleHistory.subId)) {
            openSubtitle.setSubtitleDownState(0);
            openSubtitle.setPath(null);
        }
    }

    public static boolean O0(SubtitleHistory subtitleHistory) {
        return (subtitleHistory == null || TextUtils.isEmpty(subtitleHistory.subId)) ? false : true;
    }

    public void P0(View view) {
        hb0.markDirect("vd_cp_subtitle_pop_downloadsub_fill");
        this.m.getEditText().setText(this.B.getText());
        this.m.getEditText().setSelection(this.B.getText().length());
    }

    public void Q0(View view) {
        w0(0);
    }

    public void R0(View view) {
        SubtitleLanguage value = this.y.selectLanguage.getValue();
        hideSoftPanel(this.m.getEditText());
        new fm9(this.x, view, 10, true).i(A0(), value, new a());
    }

    public static void Z0(DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downlodasub_cl_pop_track", "track", 3);
        dialogInterface.dismiss();
    }

    public static SubtitleDownLoadFragment a1() {
        Bundle bundle = new Bundle();
        SubtitleDownLoadFragment subtitleDownLoadFragment = new SubtitleDownLoadFragment();
        subtitleDownLoadFragment.setArguments(bundle);
        return subtitleDownLoadFragment;
    }

    private void initView(View view) {
        this.l = (ImageView) view.findViewById(R.id.iv_back);
        this.n = (AppCompatTextView) view.findViewById(R.id.tv_search_lang_one);
        this.o = (AppCompatTextView) view.findViewById(R.id.tv_search_lang_two);
        this.p = (ImageView) view.findViewById(R.id.iv_pull_down);
        this.t = (RecyclerView) view.findViewById(R.id.rv_content);
        this.m = (SearchBar) view.findViewById(R.id.search_bar_title);
        this.B = (TextView) view.findViewById(R.id.tv_video_name);
        this.D = (LinearLayout) view.findViewById(R.id.ll_search_hint);
        TextView textView = (TextView) view.findViewById(R.id.tv_fill_btn);
        this.C = textView;
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.P0(view2);
            }
        });
        this.m.setHint(R.string.subtitle_search_hint);
        this.m.getLinearRootView().setBackgroundColor(getResources().getColor(R.color.transparent));
        ((InsetDrawable) this.m.getEditText().getBackground()).setAlpha(234);
        this.A = (BadgeView) view.findViewById(R.id.bv_count);
        view.findViewById(R.id.iv_history).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.lambda$initView$1(view2);
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.Q0(view2);
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.R0(view2);
            }
        });
        this.m.getEditText().setTextDirection(5);
        this.m.getEditText().setImeOptions(3);
        this.m.getEditText().setImportantForAutofill(2);
        this.m.setImportantForAutofill(2);
        this.m.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                return this.b.S0(textView2, i, keyEvent);
            }
        });
    }

    public void lambda$initView$1(View view) {
        hb0.markDirect("vd_cp_subtitle_downloadsub_historycl");
        baseActivity().getSupportFragmentManager().beginTransaction().add(R.id.fragment_content, SubtitleDownHistoryFragment.T0()).addToBackStack(SubtitleDownHistoryFragment.T0().getFragmentTag()).hide(this).commitAllowingStateLoss();
        this.A.setVisibility(8);
    }

    private void u0(final int i, final String str) {
        mc7.K(this).g(this.x.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.E0(i, str, (SubtitleDownLoadFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.F0(i, (Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                SubtitleDownLoadFragment.G0((Throwable) obj);
            }
        });
    }

    private void w0(int i) {
        Intent intent = new Intent();
        intent.putExtra("track_value", i);
        this.x.setResult(this.w ? -1 : 0, intent);
        this.x.finish();
    }

    public final List A0() {
        ArrayList arrayList = new ArrayList();
        String[] stringArray = getResources().getStringArray(R.array.language_entries);
        String[] stringArray2 = getResources().getStringArray(R.array.language_values);
        String[] stringArray3 = getResources().getStringArray(R.array.standard_language_values);
        for (int i = 0; i < stringArray2.length; i++) {
            arrayList.add(new SubtitleLanguage(stringArray[i], stringArray2[i], stringArray3[i]));
        }
        return (List) arrayList.stream().sorted(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Integer.valueOf(((SubtitleLanguage) obj).getIndex());
            }
        }).thenComparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((SubtitleLanguage) obj).getLanguageCode();
            }
        })).collect(Collectors.toList());
    }

    public final String B0() {
        SubtitleLanguage value = this.y.selectLanguage.getValue();
        return fc7.c(value) ? value.getLanguageStandardCode() : Locale.getDefault().getLanguage();
    }

    public final View C0(int i, View view) {
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        return viewFindViewById instanceof ViewStub ? ((ViewStub) viewFindViewById).inflate() : viewFindViewById;
    }

    public final Boolean E0(int i, String str, SubtitleDownLoadFragment subtitleDownLoadFragment) {
        int intExtra = this.x.getIntent().getIntExtra("media_id", 0);
        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
        subtitleTrackInfo.track = i;
        subtitleTrackInfo.path = str;
        return Boolean.valueOf(tpb.j0().t(intExtra, subtitleTrackInfo) > 0);
    }

    public final void F0(int i, Boolean bool) {
        if (bool.booleanValue()) {
            w0(i);
        }
    }

    public final void H0(SubtitleHistory subtitleHistory) {
        this.F.put(subtitleHistory.subId, subtitleHistory);
    }

    public final void I0(List list) {
        this.F.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        list.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return SubtitleDownLoadFragment.O0((SubtitleHistory) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.H0((SubtitleHistory) obj);
            }
        });
    }

    public final void J0(NetState netState) {
        int i = e.a[netState.ordinal()];
        if (i == 1) {
            h1();
            return;
        }
        if (i == 2) {
            e1(this.y.subtitleListNet.getValue());
        } else if (i == 3) {
            f1();
        } else {
            if (i != 4) {
                return;
            }
            g1(this.y.netException.getValue());
        }
    }

    public final void K0() {
        showSoftPanel(this.m.getEditText());
    }

    public final void L0(SubtitleLanguage subtitleLanguage) {
        d1(subtitleLanguage);
        if (Boolean.TRUE.equals(this.y.isAutoSearch.getValue())) {
            return;
        }
        c1(this.v, B0());
    }

    public final void N0(final SubtitleHistory subtitleHistory) {
        Log.i("SubtitleDownActivity", "deleteSubtitle observe subtitleHistory=" + subtitleHistory.subId);
        this.F.remove(subtitleHistory.subId);
        SearchSubtitleAdapter searchSubtitleAdapter = this.u;
        if (searchSubtitleAdapter == null || searchSubtitleAdapter.getData().isEmpty()) {
            return;
        }
        b1((List) this.u.getData().stream().peek(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SubtitleDownLoadFragment.M0(subtitleHistory, (OpenSubtitle) obj);
            }
        }).collect(Collectors.toList()));
    }

    public final boolean S0(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        hideSoftPanel(textView);
        String strTrim = this.m.getEditText().getText().toString().trim();
        this.v = strTrim;
        if (TextUtils.isEmpty(strTrim)) {
            return false;
        }
        hb0.markTrackTwo("vd_cp_subtitle_downladsub_keyword", "word", this.v, "name", this.x.getIntent().getStringExtra("video_name"));
        c1(strTrim, B0());
        this.D.setVisibility(8);
        this.m.getDeleteAllIconView().setVisibility(8);
        return false;
    }

    public final void T0(List list) {
        if (list == null || list.isEmpty()) {
            f1();
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_result", "result", 0);
        } else {
            v0(list);
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_result", "result", 1);
            e1(list);
        }
    }

    public final void U0(List list, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
            return;
        }
        OpenSubtitle openSubtitle = (OpenSubtitle) list.get(i);
        if (view.getId() != R.id.iv_down_success) {
            hb0.markDirect("vd_cp_subtitle_downloadsub_downloadcl");
            openSubtitle.setSubtitleDownState(1);
            this.u.notifyItemChanged(i);
            y0((OpenSubtitle) list.get(i), new c(list, i));
            return;
        }
        hb0.markDirect("vd_cp_subtitle_downloadsub_cl");
        if (pp3.r() && w6c.c(this.x, "tracks_switch", false)) {
            i1(openSubtitle);
        } else {
            this.w = true;
            u0(this.E, openSubtitle.getPath());
        }
    }

    public final void V0(List list, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        OpenSubtitle openSubtitle = (OpenSubtitle) list.get(i);
        if (openSubtitle.getSubtitleState() == 2) {
            hb0.markDirect("vd_cp_subtitle_downloadsub_cl");
            if (pp3.r() && w6c.c(this.x, "tracks_switch", false)) {
                i1(openSubtitle);
            } else {
                this.w = true;
                u0(this.E, openSubtitle.getPath());
            }
        }
    }

    public final void W0(View view) {
        hb0.markDirect("vd_cp_subtitle_downloadsub_retry");
        c1(this.v, B0());
    }

    public final void X0(OpenSubtitle openSubtitle, DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downlodasub_cl_pop_track", "track", 2);
        this.w = true;
        u0(1, openSubtitle.getPath());
    }

    public final void Y0(OpenSubtitle openSubtitle, DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downlodasub_cl_pop_track", "track", 1);
        this.w = true;
        u0(0, openSubtitle.getPath());
    }

    public final void b1(final List list) {
        this.x.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.T0(list);
            }
        });
    }

    public final void c1(String str, String str2) {
        this.y.query(this.x, str, str2);
    }

    public final void d1(SubtitleLanguage subtitleLanguage) {
        if (subtitleLanguage == null) {
            this.n.setVisibility(8);
            this.o.setVisibility(8);
        } else if (!subtitleLanguage.isGroupLanguage()) {
            this.n.setVisibility(0);
            this.n.setText(subtitleLanguage.getLanguageName());
            this.o.setVisibility(8);
        } else {
            this.n.setVisibility(0);
            this.n.setText(subtitleLanguage.getSubLanguages().get(0).getLanguageName());
            this.o.setVisibility(0);
            this.o.setText(subtitleLanguage.getSubLanguages().get(1).getLanguageName());
        }
    }

    public final void e1(final List list) {
        View view = this.s;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.q;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        View view3 = this.r;
        if (view3 != null) {
            view3.setVisibility(8);
        }
        this.t.setVisibility(0);
        this.t.setLayoutManager(new LinearLayoutManager(this.x));
        SearchSubtitleAdapter searchSubtitleAdapter = new SearchSubtitleAdapter(list, this.mContext);
        this.u = searchSubtitleAdapter;
        searchSubtitleAdapter.g(this.v);
        this.t.setAdapter(this.u);
        if (this.t.getItemDecorationCount() == 0) {
            this.t.addItemDecoration(new b());
        }
        this.u.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view4, int i) {
                this.a.U0(list, baseQuickAdapter, view4, i);
            }
        });
        this.u.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view4, int i) {
                this.b.V0(list, baseQuickAdapter, view4, i);
            }
        });
    }

    public final void f1() {
        View viewC0 = C0(R.id.empty_layout, this.q);
        this.q = viewC0;
        if (viewC0 == null) {
            return;
        }
        viewC0.setVisibility(0);
        View view = this.s;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.r;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.t.setVisibility(4);
    }

    public final void g1(Throwable th) {
        boolean z = th instanceof HttpException;
        boolean z2 = z && ((HttpException) th).code() == 503;
        if (MainApp.w != 0 && !z2) {
            Log.w("SubtitleDownActivity", "showErrorLayout " + MainApp.w + StringUtils.COMMA + th);
            f1();
            return;
        }
        View viewC0 = C0(R.id.error_layout, this.r);
        this.r = viewC0;
        if (viewC0 == null) {
            return;
        }
        viewC0.setVisibility(0);
        View view = this.s;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.q;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.t.setVisibility(4);
        TextView textView = (TextView) this.r.findViewById(R.id.tv_error_message);
        if (z) {
            if (((HttpException) th).code() == 503) {
                textView.setText(getText(R.string.open_subtitle_service_error));
                hb0.markTrackSingle("vd_cp_subtitle_downloadsub_result", "result", 3);
            } else {
                hb0.markTrackSingle("vd_cp_subtitle_downloadsub_result", "result", 4);
                textView.setText(getText(R.string.not_available_network));
            }
        } else if (th instanceof SocketTimeoutException) {
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_result", "result", 2);
            textView.setText(getText(R.string.not_available_network));
        } else {
            hb0.markTrackTwo("vd_cp_subtitle_downloadsub_result", "result", 5, "errorMsg", "Device:" + Build.BRAND + " " + Build.MODEL + "\nVersion:" + Build.VERSION.SDK_INT + "\nErrorMessage:" + th.getMessage());
            textView.setText(getText(R.string.not_available_network));
        }
        this.r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.W0(view3);
            }
        });
    }

    public final void h1() {
        View viewC0 = C0(R.id.load_layout, this.s);
        this.s = viewC0;
        if (viewC0 != null) {
            viewC0.setVisibility(0);
        }
        View view = this.q;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.r;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.t.setVisibility(4);
    }

    public final void i1(final OpenSubtitle openSubtitle) {
        SubtitleTrackInfo value = this.y.firstCurData.getValue();
        SubtitleTrackInfo value2 = this.y.secondCurData.getValue();
        Context context = this.mContext;
        int i = R.string.track_one;
        String string = context.getString(i);
        if (value == null) {
            string = this.mContext.getString(i) + this.mContext.getString(R.string.null_subtitle);
        }
        Context context2 = this.mContext;
        int i2 = R.string.track_two;
        String string2 = context2.getString(i2);
        if (value2 == null) {
            string2 = this.mContext.getString(i2) + this.mContext.getString(R.string.null_subtitle);
        }
        new com.transsion.widgetslib.dialog.d.a(this.x).A(R.string.select_subtitle_track).d(true).w(string2, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.b.X0(openSubtitle, dialogInterface, i3);
            }
        }).p(string, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.b.Y0(openSubtitle, dialogInterface, i3);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                SubtitleDownLoadFragment.Z0(dialogInterface, i3);
            }
        }).a().show();
        hb0.markDirect("vd_cp_subtitle_downloadsub_cl_pop");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.x = (SubtitleManagerActivity) getActivity();
        return layoutInflater.inflate(R.layout.fragment_subtitle_download, viewGroup, false);
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        SearchBar searchBar = this.m;
        if (searchBar != null) {
            if (z) {
                bg5.e(searchBar.getEditText());
            } else {
                showSoftPanel(searchBar.getEditText());
            }
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.x.getIntent() != null) {
            this.z = this.x.getIntent().getStringExtra("data");
        }
        this.y = (VideoSubtitleViewModel) getViewModelByActivity(VideoSubtitleViewModel.class);
        this.E = w6c.d(this.mContext, "tracks_value", 0);
        initView(view);
        D0();
    }

    public final void v0(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            OpenSubtitle openSubtitle = (OpenSubtitle) it.next();
            if (openSubtitle != null) {
                SubtitleHistory subtitleHistory = (SubtitleHistory) this.F.get(openSubtitle.getSubId());
                if (subtitleHistory == null || TextUtils.isEmpty(subtitleHistory.subPath) || !new File(subtitleHistory.subPath).exists()) {
                    openSubtitle.setSubtitleDownState(0);
                    if (subtitleHistory == null) {
                        openSubtitle.setPath(null);
                    }
                } else {
                    openSubtitle.setPath(subtitleHistory.subPath);
                    openSubtitle.setSubtitleDownState(2);
                }
            }
        }
    }

    public final SubtitleHistory x0(OpenSubtitle openSubtitle) {
        SubtitleHistory subtitleHistory = new SubtitleHistory();
        subtitleHistory.subId = openSubtitle.getSubId();
        subtitleHistory.subName = openSubtitle.getSubFileName();
        subtitleHistory.subPath = openSubtitle.getPath();
        subtitleHistory.subLanguage = openSubtitle.getLanguageName();
        subtitleHistory.subLanguageId = openSubtitle.getLanguageCode();
        subtitleHistory.subSize = Long.parseLong(openSubtitle.getSubSize());
        return subtitleHistory;
    }

    public final void y0(OpenSubtitle openSubtitle, sz2 sz2Var) {
        ((SubTitleService) SubTitleServiceManager.getInstance().getApi(SubTitleService.class)).downloadFile(openSubtitle.getSubDownloadLink()).enqueue(new d(sz2Var));
    }

    public final String z0(gu8 gu8Var) {
        String str = gu8Var.d().get(HttpHeaders.HEAD_KEY_CONTENT_DISPOSITION);
        if (!TextUtils.isEmpty(str)) {
            str.replace("attachment;filename=", "");
            str.replace("filename*=utf-8", "");
            String[] strArrSplit = str.split("; ");
            if (strArrSplit.length > 1) {
                return strArrSplit[1].replace("filename=", "").replace("\"", "");
            }
        }
        return "";
    }
}
