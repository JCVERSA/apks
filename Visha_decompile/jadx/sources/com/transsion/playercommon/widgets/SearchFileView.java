package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowInsets;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.SearchResultAdapter;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.widgets.SearchFileView;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgetslib.widget.SearchBar;
import com.transsion.widgetthemes.util.Utils;
import defpackage.ao;
import defpackage.h27;
import defpackage.k29;
import defpackage.lpb;
import defpackage.mc7;
import defpackage.p06;
import defpackage.se;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class SearchFileView extends RelativeLayout implements h27.b {
    public static final int SEARCH_AUDIO = 2;
    public static final int SEARCH_CLOUD = 3;
    public static final int SEARCH_VIDEO = 1;
    public RecyclerView b;
    public SearchBar c;
    public CustomLinearLayoutManager d;
    public int e;
    public int f;
    public final ArrayList g;
    public SearchResultAdapter h;
    public Context i;
    public int j;
    public f k;
    public View l;
    public View m;
    public ImageView n;
    public LinearLayout o;
    public long p;
    public long q;
    public boolean r;
    public boolean s;
    public boolean t;
    public Runnable u;
    public Runnable v;
    public Runnable w;
    public long x;
    public long y;
    public boolean z;

    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            SearchFileView.this.showOrHideKeyboard(false);
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            SearchFileView.this.setVisibility(8);
            if (SearchFileView.this.k != null) {
                SearchFileView.this.k.b();
            }
        }
    }

    public class d implements TextWatcher {
        public d() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            SearchFileView.this.o.setVisibility(editable.length() != 0 ? 0 : 8);
            SearchFileView.this.getClass();
            SearchFileView searchFileView = SearchFileView.this;
            searchFileView.setBackgroundColor(searchFileView.getResources().getColor(editable.length() != 0 ? R.color.transparent : R.color.search_view_cover_color, SearchFileView.this.i.getTheme()));
            if (editable.length() != 0) {
                SearchFileView.this.loadSearchData(editable.toString());
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface e {
    }

    public interface f {
        default void a(MediaItem mediaItem, boolean z) {
        }

        void b();

        default void c(MediaItem mediaItem) {
        }

        default void d(MediaItem mediaItem) {
        }

        default void e(MediaBucket mediaBucket) {
        }
    }

    public SearchFileView(Context context) {
        super(context);
        this.g = new ArrayList();
        this.u = new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
                SearchFileView.this.c.requestFocus();
                inputMethodManager.showSoftInput(SearchFileView.this.c.getEditText(), 0);
            }
        };
        this.v = new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchFileView.this.getContext().getSystemService("input_method");
                SearchFileView.this.c.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(SearchFileView.this.c.getEditText().getWindowToken(), 0);
            }
        };
        this.w = new Runnable() {
            @Override
            public void run() {
                if (SearchFileView.this.c == null || SearchFileView.this.c.getEditText() == null) {
                    return;
                }
                SearchFileView searchFileView = SearchFileView.this;
                searchFileView.loadSearchData(searchFileView.c.getEditText().getText().toString());
            }
        };
        this.x = 0L;
        this.y = 0L;
        initView(context);
    }

    private int A() {
        Window window;
        WindowInsets rootWindowInsets;
        Context context = this.i;
        if (!(context instanceof Activity) || ((Activity) context).getApplicationInfo().targetSdkVersion < 36 || Build.VERSION.SDK_INT < 30 || (window = ((Activity) this.i).getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return 0;
        }
        return rootWindowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
    }

    private void F() {
        View view = this.l;
        if (view != null) {
            view.setPadding(0, 0, 0, ((BaseActivity) this.i).isInMultiWindowMode() ? this.f : this.e);
            E();
        }
    }

    public void v(View view) {
        LinearLayout linearLayout = this.o;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            setVisibility(8);
        }
    }

    public static List w(String str, Integer num) {
        if (str != null && str.contains("%")) {
            str = str.replace("%", "\\%");
        }
        return num.intValue() == 2 ? ao.U().r0(str) : tpb.j0().w(str);
    }

    public final void B(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() == 0) {
            return;
        }
        MediaItem mediaItem = ((SearchBean) baseQuickAdapter.getData().get(i)).getMediaItem();
        if (lpb.h(mediaItem)) {
            return;
        }
        boolean z2 = z == ((CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox)).isChecked();
        f fVar = this.k;
        if (fVar != null) {
            fVar.a(mediaItem, z2);
        }
        baseQuickAdapter.notifyDataSetChanged();
    }

    public void C() {
        boolean z = this.g.size() == 0;
        if (z) {
            o();
        }
        this.b.setVisibility(z ? 8 : 0);
        if (this.n != null) {
            E();
        }
    }

    public final void x(String str, List list) {
        boolean z = this.z;
        this.z = false;
        if (z && this.j == 2 && list != null && !this.g.isEmpty()) {
            z(list);
        }
        this.g.clear();
        this.g.addAll(list);
        this.h.j(str);
        this.h.setNewData(this.g);
        C();
    }

    public final void E() {
        this.n.setImageResource(this.j == 2 ? R.drawable.ic_audio_empty_illustration : R.drawable.ic_video_empty_illustration);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i != 1053 && i != 1055 && i != 1070) {
            if (i == 1072) {
                if (jCurrentTimeMillis - this.y < 500) {
                    return;
                }
                this.y = jCurrentTimeMillis;
                post(this.w);
                return;
            }
            if (i != 1088) {
                if (i != 1110) {
                    return;
                }
                this.z = true;
                return;
            }
        }
        if (jCurrentTimeMillis - this.x < 500) {
            return;
        }
        this.x = jCurrentTimeMillis;
        SearchResultAdapter searchResultAdapter = this.h;
        if (searchResultAdapter != null) {
            searchResultAdapter.notifyDataSetChanged();
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        LinearLayout linearLayout = this.o;
        if ((linearLayout == null || linearLayout.getVisibility() != 0) && motionEvent.getAction() == 1) {
            int left = this.m.getLeft();
            int top = this.m.getTop();
            int right = this.m.getRight();
            int bottom = this.m.getBottom();
            if (motionEvent.getX() < left || motionEvent.getX() > right || motionEvent.getY() < top || motionEvent.getY() > bottom) {
                setVisibility(8);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void initRecyclerView() {
        SearchResultAdapter searchResultAdapter = new SearchResultAdapter(this.i);
        this.h = searchResultAdapter;
        searchResultAdapter.i(this.s);
        CustomLinearLayoutManager customLinearLayoutManager = new CustomLinearLayoutManager(this.i);
        this.d = customLinearLayoutManager;
        this.b.setLayoutManager(customLinearLayoutManager);
        OverScrollDecorHelper.setUpOverScroll(this.b, 0);
        this.b.setAdapter(this.h);
        this.b.addOnScrollListener(new a());
        n();
        this.h.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.r(baseQuickAdapter, view, i);
            }
        });
        this.h.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.s(baseQuickAdapter, view, i);
            }
        });
    }

    public void initSearchView() {
        setOnTouchListener(new b());
        this.c.setBackClickListener(new c());
        this.c.addTextWatcher(new d());
        this.c.getEditText().setImeOptions(3);
        this.c.getEditText().setImportantForAutofill(2);
        this.c.setImportantForAutofill(2);
        this.c.getEditText().setElegantTextHeight(false);
        this.c.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.b.t(textView, i, keyEvent);
            }
        });
        findViewById(R.id.search_content).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.u(view);
            }
        });
    }

    public void initView(Context context) {
        this.i = context;
        View viewInflate = LayoutInflater.from(context).inflate(this.t ? R.layout.search_file_view : R.layout.search_file_view_no_back, (ViewGroup) this, true);
        this.b = (RecyclerView) viewInflate.findViewById(R.id.rv_search_list);
        this.o = (LinearLayout) viewInflate.findViewById(R.id.search_content);
        SearchBar searchBar = (SearchBar) viewInflate.findViewById(R.id.search_bar_file);
        this.c = searchBar;
        searchBar.getBackView().setRotationY(Utils.isRtl() ? 180.0f : 0.0f);
        this.m = viewInflate.findViewById(R.id.search_bar);
        setVisibility(0);
        setBackgroundColor(getResources().getColor(R.color.search_view_cover_color, this.i.getTheme()));
        p();
        initSearchView();
        initRecyclerView();
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v(view);
            }
        });
        SearchBar searchBar2 = this.c;
        if (searchBar2 != null) {
            if (searchBar2.getDeleteAllIconView() != null) {
                this.c.getDeleteAllIconView().setContentDescription(context.getString(R.string.talkback_close));
            }
            if (this.c.getBackView() != null) {
                this.c.getBackView().setContentDescription(context.getString(R.string.talkback_back));
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public void loadSearchData(final String str) {
        mc7.K(Integer.valueOf(this.j)).g(((BaseActivity) this.i).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return SearchFileView.w(str, (Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.x(str, (List) obj);
            }
        });
    }

    public void markPointExpose(boolean z) {
        if (z) {
            this.p = System.currentTimeMillis();
            return;
        }
        if (this.p != 0) {
            this.q = System.currentTimeMillis();
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("type", this.j == 1 ? "video" : "audio");
            trackData.add("type", this.j == 1 ? "video" : "audio");
            p06.D(bundle, trackData, this.p, this.q, "search_s_show", 9324L);
        }
    }

    public void multiWindowModeChanged(boolean z) {
        this.r = z;
        F();
    }

    public final void n() {
        if (this.b == null) {
            return;
        }
        int iA = A();
        this.b.setClipToPadding(false);
        if (this.b.getPaddingBottom() != iA) {
            RecyclerView recyclerView = this.b;
            recyclerView.setPaddingRelative(recyclerView.getPaddingStart(), this.b.getPaddingTop(), this.b.getPaddingEnd(), iA);
        }
        if (iA == 0) {
            Context context = this.i;
            if (!(context instanceof Activity) || ((Activity) context).getApplicationInfo().targetSdkVersion < 36) {
                return;
            }
            this.b.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.q();
                }
            });
        }
    }

    public void o() {
        if (this.l == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.main_empty_view)).inflate();
            this.l = viewInflate;
            this.n = (ImageView) viewInflate.findViewById(R.id.lottie_no_videos_view);
            F();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h27.c().b(this, 1070);
        h27.c().b(this, 1088);
        h27.c().b(this, 1055);
        h27.c().b(this, 1053);
    }

    public void onDestroyView() {
        if (this.s) {
            ConvertingTaskManager.j().E("SearchFileView");
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.u);
        removeCallbacks(this.v);
        removeCallbacks(this.w);
        h27.c().f(this, 1070);
        h27.c().f(this, 1088);
        h27.c().f(this, 1055);
        h27.c().f(this, 1053);
        h27.c().f(this, 1072);
        h27.c().f(this, 1110);
        this.z = false;
        ConvertingTaskManager.j().E("SearchFileView");
    }

    public void onResumed() {
        SearchBar searchBar;
        if (getVisibility() != 0 || (searchBar = this.c) == null) {
            return;
        }
        loadSearchData(searchBar.getEditText().getText().toString());
    }

    public void p() {
        this.e = getContext().getResources().getDimensionPixelSize(R.dimen.main_empty_imgView_marginBottom);
        this.f = getContext().getResources().getDimensionPixelSize(R.dimen.main_empty_imgView_marginBottom_multiWindowMode);
    }

    public final void q() {
        if (A() > 0) {
            n();
        }
    }

    public final void r(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        showOrHideKeyboard(false);
        SearchBean searchBean = (SearchBean) view.getTag();
        int itemType = searchBean.getItemType();
        if (this.k != null) {
            p06.I(this.j);
            if (itemType == 1) {
                this.k.e(searchBean.getMediaBucket());
                return;
            }
            if (itemType != 2) {
                if (itemType != 3) {
                    return;
                }
                this.k.d(searchBean.getMediaItem());
            } else if (this.s) {
                B(baseQuickAdapter, view, i, false);
            } else {
                this.k.c(searchBean.getMediaItem());
            }
        }
    }

    public final void s(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (R.id.iv_bucket_fragment_checkBox == view.getId()) {
            if (this.s) {
                B(baseQuickAdapter, view, i, true);
                return;
            }
            return;
        }
        if (R.id.iv_bucket_fragment_item_more == view.getId()) {
            h27.c().e(1067, ((SearchBean) this.g.get(i)).getMediaItem());
            return;
        }
        if (R.id.iv_item_more == view.getId()) {
            h27.c().e(1077, ((SearchBean) this.g.get(i)).getMediaItem());
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("from", "search_more_cl");
            bundle.putString("TYPE", "audio");
            trackData.add("from", "search_more_cl");
            trackData.add("TYPE", "audio");
            p06.q0(trackData, bundle, "vd_vmore_show", 9324L);
        }
    }

    public void setIsSelectConvertVideoMode(boolean z) {
        this.s = z;
        SearchResultAdapter searchResultAdapter = this.h;
        if (searchResultAdapter != null) {
            searchResultAdapter.i(z);
        }
        if (z) {
            ConvertingTaskManager.j().K("SearchFileView", new ConvertingTaskManager.b() {
                @Override
                public final void q(int i) {
                    this.b.y(i);
                }
            });
        }
    }

    public void setSearchBgVisibleListenr(e eVar) {
    }

    public void setSearchHint(int i) {
        if (i == 1) {
            this.c.setHint(R.string.search_for_videos);
        } else {
            this.c.setHint(R.string.search_for_music);
        }
    }

    public void setSearchSelectCallBack(f fVar) {
        this.k = fVar;
    }

    public void setSearchType(int i) {
        this.j = i;
        setSearchHint(i);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("type", i == 1 ? "video" : "audio");
        trackData.add("type", i == 1 ? "video" : "audio");
        p06.q0(trackData, bundle, "search_s_show", 9324L);
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        SearchBar searchBar = this.c;
        if (searchBar == null) {
            return;
        }
        searchBar.setText("", false);
        if (i == 0) {
            showOrHideKeyboard(true);
            h27.c().b(this, 1072);
            h27.c().b(this, 1110);
            Context context = this.i;
            if (context instanceof BaseActivity) {
                ((BaseActivity) context).resetNavigationBarColor(true);
            }
            n();
            return;
        }
        Context context2 = this.i;
        if (context2 instanceof BaseActivity) {
            ((BaseActivity) context2).resetNavigationBarColor(false);
        }
        showOrHideKeyboard(false);
        f fVar = this.k;
        if (fVar != null) {
            fVar.b();
        }
        h27.c().f(this, 1072);
        h27.c().f(this, 1110);
        this.z = false;
        this.g.clear();
        this.h.setNewData(this.g);
    }

    public void showOrHideKeyboard(boolean z) {
        removeCallbacks(this.u);
        removeCallbacks(this.v);
        postDelayed(z ? this.u : this.v, 200L);
    }

    public final boolean t(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3) {
            showOrHideKeyboard(false);
            if (TextUtils.isEmpty(this.c.getEditText().getText().toString())) {
                setVisibility(8);
            }
        }
        return false;
    }

    public final void u(View view) {
        showOrHideKeyboard(false);
    }

    public final void y(int i) {
        SearchResultAdapter searchResultAdapter = this.h;
        if (searchResultAdapter != null) {
            searchResultAdapter.notifyDataSetChanged();
        }
    }

    public final void z(List list) {
        int i;
        HashMap map = new HashMap();
        SparseArray sparseArray = new SparseArray();
        for (Object obj : this.g) {
            if (obj instanceof SearchBean) {
                MediaItem mediaItem = ((SearchBean) obj).getMediaItem();
                if (mediaItem instanceof AudioItem) {
                    AudioItem audioItem = (AudioItem) mediaItem;
                    if (!TextUtils.isEmpty(audioItem.artistName)) {
                        if (!TextUtils.isEmpty(audioItem.data)) {
                            map.put(audioItem.data, audioItem.artistName);
                        }
                        int i2 = audioItem.id;
                        if (i2 != 0) {
                            sparseArray.put(i2, audioItem.artistName);
                        }
                    }
                }
            }
        }
        if (map.isEmpty() && sparseArray.size() == 0) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem2 = ((SearchBean) it.next()).getMediaItem();
            if (mediaItem2 instanceof AudioItem) {
                AudioItem audioItem2 = (AudioItem) mediaItem2;
                if (TextUtils.isEmpty(audioItem2.artistName)) {
                    String str = !TextUtils.isEmpty(audioItem2.data) ? (String) map.get(audioItem2.data) : null;
                    if (TextUtils.isEmpty(str) && (i = audioItem2.id) != 0) {
                        str = (String) sparseArray.get(i);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        audioItem2.artistName = str;
                    }
                }
            }
        }
    }

    public SearchFileView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new ArrayList();
        this.u = new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
                SearchFileView.this.c.requestFocus();
                inputMethodManager.showSoftInput(SearchFileView.this.c.getEditText(), 0);
            }
        };
        this.v = new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchFileView.this.getContext().getSystemService("input_method");
                SearchFileView.this.c.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(SearchFileView.this.c.getEditText().getWindowToken(), 0);
            }
        };
        this.w = new Runnable() {
            @Override
            public void run() {
                if (SearchFileView.this.c == null || SearchFileView.this.c.getEditText() == null) {
                    return;
                }
                SearchFileView searchFileView = SearchFileView.this;
                searchFileView.loadSearchData(searchFileView.c.getEditText().getText().toString());
            }
        };
        this.x = 0L;
        this.y = 0L;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SearchFileView);
        this.t = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SearchFileView_isBackMode, true);
        typedArrayObtainStyledAttributes.recycle();
        initView(context);
    }

    public SearchFileView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new ArrayList();
        this.u = new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
                SearchFileView.this.c.requestFocus();
                inputMethodManager.showSoftInput(SearchFileView.this.c.getEditText(), 0);
            }
        };
        this.v = new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchFileView.this.getContext().getSystemService("input_method");
                SearchFileView.this.c.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(SearchFileView.this.c.getEditText().getWindowToken(), 0);
            }
        };
        this.w = new Runnable() {
            @Override
            public void run() {
                if (SearchFileView.this.c == null || SearchFileView.this.c.getEditText() == null) {
                    return;
                }
                SearchFileView searchFileView = SearchFileView.this;
                searchFileView.loadSearchData(searchFileView.c.getEditText().getText().toString());
            }
        };
        this.x = 0L;
        this.y = 0L;
        initView(context);
    }
}
