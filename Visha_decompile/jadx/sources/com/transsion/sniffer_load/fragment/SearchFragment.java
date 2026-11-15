package com.transsion.sniffer_load.fragment;

import android.content.Intent;
import android.graphics.drawable.InsetDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.sniff.SearchKey;
import com.transsion.livecaption.constant.ICode;
import com.transsion.moduleservice.IBtDownloadService;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.SearchActivity;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.HistoryAdapter;
import com.transsion.sniffer_load.adapter.HotKeyAdapter;
import com.transsion.sniffer_load.fragment.SearchFragment;
import com.transsion.sniffer_load.sniffservice.SniffTorrentUtil;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgetslib.util.search.SearchAnimManager;
import com.transsion.widgetslib.widget.SearchBar;
import com.transsion.widgetthemes.util.Utils;
import defpackage.a64;
import defpackage.ag5;
import defpackage.dz5;
import defpackage.e16;
import defpackage.f5;
import defpackage.fi1;
import defpackage.p06;
import defpackage.se;
import defpackage.w6c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class SearchFragment extends PlayBaseFragment implements ag5.e {
    public SearchBar l;
    public HistoryAdapter n;
    public HotKeyAdapter o;
    public RecyclerView p;
    public TextView q;
    public MainViewModel s;
    public View t;
    public View u;
    public SearchKey.Key v;
    public List m = new ArrayList();
    public boolean r = true;
    public Map w = new ConcurrentHashMap();
    public Map x = new ConcurrentHashMap();
    public final Runnable y = new Runnable() {
        @Override
        public void run() {
            InputMethodManager inputMethodManager;
            SearchFragment.this.l.getEditText().requestFocus();
            if (SearchFragment.this.getContext() == null || (inputMethodManager = (InputMethodManager) se.a().getSystemService(InputMethodManager.class)) == null) {
                return;
            }
            inputMethodManager.showSoftInput(SearchFragment.this.l.getEditText(), 0);
        }
    };

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            p06.f0(null, "dl_brower_address_input", 9324L);
        }
    }

    public class b implements View.OnClickListener {
        public final View b;

        public b(View view) {
            this.b = view;
        }

        @Override
        public void onClick(View view) {
            if (MainApp.p) {
                MainApp.p = false;
                w6c.r(SearchFragment.this.getContext(), "private_browsing", false);
                ToastUtils.s(R.string.load_privacy_browsing_setting_hint);
                dz5.f(2, 0);
            } else {
                MainApp.p = true;
                w6c.r(SearchFragment.this.getContext(), "private_browsing", true);
                ToastUtils.s(R.string.visha_not_save_search_and_view_history);
                dz5.f(2, 1);
            }
            SearchFragment searchFragment = SearchFragment.this;
            searchFragment.r0(searchFragment.m.size() == 0);
            ((TextView) this.b.findViewById(com.transsion.magicvideo.R.id.tv_privacy_browse)).setText(MainApp.p ? com.transsion.magicvideo.R.string.download_privacy_browsing_turn_off : com.transsion.magicvideo.R.string.download_privacy_browsing_turn_on);
        }
    }

    public void A0(View view) {
        p06.f0(null, "dl_brower_back_cl", 9324L);
        if (!u0()) {
            this.mActivity.onBackPressed();
        } else {
            getActivity().setResult(1245);
            this.mActivity.onBackPressed();
        }
    }

    public static SearchFragment D0(BaseActivity baseActivity, String str, SearchKey.Key key) {
        SearchFragment searchFragment = (SearchFragment) new SearchFragment().setBaseActivity(baseActivity);
        Bundle bundle = new Bundle();
        bundle.putString("from", str);
        bundle.putParcelable("key", key);
        searchFragment.setArguments(bundle);
        return searchFragment;
    }

    public void r0(boolean z) {
        if (this.t == null) {
            this.t = ((ViewStub) getView().findViewById(com.transsion.magicvideo.R.id.empty_view)).inflate();
        }
        this.t.setVisibility((MainApp.p && z) ? 0 : 8);
        RecyclerView recyclerView = (RecyclerView) getView().findViewById(com.transsion.magicvideo.R.id.rv_history);
        if (!MainApp.p || this.m.size() > 0) {
            recyclerView.setVisibility(0);
        } else {
            recyclerView.setVisibility(8);
        }
    }

    public static int y0(SearchKey.Key key, SearchKey.Key key2) {
        int i = key.getSort().equals(key2.getSort()) ? 0 : key.getSort().intValue() > key2.getSort().intValue() ? 1 : 0;
        if (key.getSort().intValue() < key2.getSort().intValue()) {
            return -1;
        }
        return i;
    }

    public final boolean B0(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3) {
            InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(textView.getApplicationWindowToken(), 0);
            }
            String string = this.l.getEditText().getText().toString();
            if (TextUtils.isEmpty(string)) {
                SearchKey.Key key = this.v;
                if (key != null && !TextUtils.isEmpty(key.getContent())) {
                    E0(this.v.getValue());
                    e16.b(this.v.getValue());
                }
            } else {
                if (string.trim().length() == 0) {
                    return false;
                }
                H0(string);
                p06.R(string);
                E0(string);
            }
        }
        return false;
    }

    public void C0() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", getArguments().getString("from"));
        List list = this.m;
        bundle.putInt("history_num", list != null ? list.size() : 0);
        bundle.putString("history_address", q0(this.m));
        trackData.add("from", getArguments().getString("from"));
        List list2 = this.m;
        trackData.add("history_num", list2 != null ? list2.size() : 0);
        trackData.add("history_address", q0(this.m));
        p06.q0(trackData, bundle, "dl_brower_show", 9324L);
    }

    public final void E0(String str) {
        IBtDownloadService service = IBtDownloadService.ServiceInstance.getService();
        if (SniffTorrentUtil.isTorrentSource(Uri.parse(str))) {
            if (service != null) {
                service.sniffTorrent(getContext(), getView(), Uri.parse(str), "");
                return;
            }
            return;
        }
        H0(str);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("history_address", str);
        trackData.add("history_address", str);
        p06.q0(trackData, bundle, "dl_brower_history_cl", 9324L);
        if (u0()) {
            Intent intent = new Intent();
            intent.putExtra("search_result_url", str);
            intent.putExtra("web_url_from", "dl_brower_cycle_search");
            getActivity().setResult(1245, intent);
            F0(false);
            getActivity().onBackPressed();
            return;
        }
        Intent intent2 = new Intent(getContext(), (Class<?>) WebActivity.class);
        intent2.putExtra(VkConstant.URL, str);
        intent2.putExtra("web_url_from", "dl_brower_cycle_search");
        if (u0()) {
            f5.b(intent2, 1242, getActivity());
            return;
        }
        f5.c(intent2, getContext());
        F0(false);
        a64.a((BaseActivity) getActivity());
        try {
            SearchAnimManager.getInstance().f();
        } catch (Exception e) {
            Log.e("SearchFragment", "SearchAnimManager exitSearch " + e.getMessage());
        }
    }

    public final void F0(boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
        if (inputMethodManager != null) {
            if (z) {
                inputMethodManager.showSoftInputFromInputMethod(this.l.getWindowToken(), 0);
            } else {
                inputMethodManager.hideSoftInputFromWindow(this.l.getWindowToken(), 0);
            }
        }
    }

    public final void G0(int i, boolean z) {
        if (this.u == null) {
            return;
        }
        if (getActivity() instanceof SearchActivity) {
            applyBottomMarginNavInset(this.u, 0);
        } else {
            if (z) {
                applyBottomMarginNavInset(this.u, i);
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.u.getLayoutParams();
            layoutParams.bottomMargin = i;
            this.u.setLayoutParams(layoutParams);
        }
    }

    public void H0(String str) {
        if (MainApp.p) {
            return;
        }
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.remove(str);
        this.m.add(0, str);
        if (this.m.size() > 10) {
            this.m.remove(10);
        }
        w6c.w(getContext(), "search_url_history", this.m);
    }

    public void initList() {
        List list = (List) w6c.f(getContext(), "search_url_history");
        this.m = list;
        if (list == null) {
            this.m = new ArrayList();
        }
        C0();
        RecyclerView recyclerView = (RecyclerView) getView().findViewById(com.transsion.magicvideo.R.id.rv_history);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        HistoryAdapter historyAdapter = new HistoryAdapter();
        this.n = historyAdapter;
        historyAdapter.setNewData(this.m);
        r0(this.m.size() == 0);
        recyclerView.setAdapter(this.n);
        this.n.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.v0(baseQuickAdapter, view, i);
            }
        });
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.rv_search_history_header, (ViewGroup) recyclerView, false);
        ((ImageView) viewInflate.findViewById(R.id.iv_clear_history)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.w0(view);
            }
        });
        this.n.setHeaderView(viewInflate);
        if (this.m.size() <= 3 || !this.r) {
            this.n.removeAllFooterView();
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.m.subList(0, 3));
            this.n.setNewData(arrayList);
            View viewInflate2 = LayoutInflater.from(getContext()).inflate(R.layout.rv_search_history_footer, (ViewGroup) recyclerView, false);
            ((TextView) viewInflate2.findViewById(R.id.all_history)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.x0(view);
                }
            });
            this.n.setFooterView(viewInflate2);
        }
        if (this.m.size() == 0) {
            this.n.removeAllFooterView();
            this.n.removeAllHeaderView();
        }
    }

    @Override
    public void k(int i) {
        if (i > 0) {
            G0(i, false);
        } else {
            G0(Boolean.TRUE.equals(this.s.g.getValue()) ? com.transsion.utils.a.d(MainApp.f(), 85.0f) : 0, true);
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == com.transsion.magicvideo.R.id.search_bar_title) {
            this.l.getEditText().setCursorVisible(true);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ag5.l(this.mActivity);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.l.removeCallbacks(this.y);
        ag5.l(this.mActivity);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_web_search;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.l.removeCallbacks(this.y);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l.removeCallbacks(this.y);
        this.l.postDelayed(this.y, 200L);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        SearchBar searchBar = (SearchBar) view.findViewById(com.transsion.magicvideo.R.id.search_bar_file);
        this.l = searchBar;
        searchBar.getBackView().setRotationY(Utils.isRtl() ? 180.0f : 0.0f);
        this.l.getEditText().setGravity(8388627);
        this.l.getEditText().setTextDirection(5);
        this.p = (RecyclerView) view.findViewById(com.transsion.magicvideo.R.id.tags);
        this.q = (TextView) view.findViewById(com.transsion.magicvideo.R.id.tag_tip);
        this.l.setOnClickListener(this);
        this.l.getLinearRootView().setBackgroundColor(getResources().getColor(com.transsion.magicvideo.R.color.transparent));
        ((InsetDrawable) this.l.getEditText().getBackground()).setAlpha(234);
        this.l.setBackClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.A0(view2);
            }
        });
        this.l.getEditText().setHint(getArguments().getString("web_start_url"));
        SearchKey.Key key = (SearchKey.Key) requireArguments().getParcelable("key");
        this.v = key;
        if (key != null && !TextUtils.isEmpty(key.getContent())) {
            this.l.setHint(this.v.getContent());
            this.x.put(this.v.getContent(), this.v);
        }
        String strL = MMKV.p().l("mmkv_search_keys");
        if (!TextUtils.isEmpty(strL)) {
            t0((SearchKey) fi1.b(strL, SearchKey.class));
        }
        this.s = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.l.addTextWatcher(new a());
        this.l.getEditText().setImeOptions(3);
        this.l.getEditText().setImportantForAutofill(2);
        this.l.setImportantForAutofill(2);
        this.l.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.b.B0(textView, i, keyEvent);
            }
        });
        View viewFindViewById = view.findViewById(com.transsion.magicvideo.R.id.btn_privacy_browse);
        this.u = viewFindViewById;
        applyBottomMarginNavInset(viewFindViewById, 0);
        TextView textView = (TextView) view.findViewById(com.transsion.magicvideo.R.id.tv_privacy_browse);
        textView.setText(MainApp.p ? com.transsion.magicvideo.R.string.download_privacy_browsing_turn_off : com.transsion.magicvideo.R.string.download_privacy_browsing_turn_on);
        textView.setOnClickListener(new b(view));
        initList();
        s0();
        ag5.k(this.mActivity, this);
        if (u0()) {
            this.l.postDelayed(this.y, 300L);
        } else {
            this.l.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        SearchAnimManager.getInstance().b();
                    } catch (Exception e) {
                        Log.e("SearchFragment", "enterSearch " + e);
                    }
                }
            });
        }
    }

    public void p0() {
        this.m.clear();
        this.n.setNewData(this.m);
        w6c.w(getContext(), "search_url_history", this.m);
    }

    public String q0(List list) {
        if (list == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (list.size() == 0) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
            stringBuffer.append("/");
        }
        return stringBuffer.toString();
    }

    public final void s0() {
        if (getArguments() != null) {
            String string = getArguments().getString("web_start_url");
            if (!TextUtils.isEmpty(string)) {
                this.l.setText(string, false);
                this.l.getEditText().selectAll();
            } else if (this.v == null) {
                this.l.setHint(com.transsion.magicvideo.R.string.download_search_hint);
            }
        }
    }

    public final void t0(SearchKey searchKey) {
        if (searchKey == null || searchKey.getHotKeys() == null || searchKey.getHotKeys().getDataList() == null || searchKey.getHotKeys().getDataList().size() == 0) {
            this.q.setVisibility(8);
            this.p.setVisibility(8);
            return;
        }
        this.q.setVisibility(0);
        RecyclerView recyclerView = (RecyclerView) getView().findViewById(com.transsion.magicvideo.R.id.tags);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.o = new HotKeyAdapter(getContext());
        List<SearchKey.Key> dataList = searchKey.getHotKeys().getDataList();
        Collections.sort(dataList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return SearchFragment.y0((SearchKey.Key) obj, (SearchKey.Key) obj2);
            }
        });
        if (dataList.size() > 10) {
            dataList = dataList.subList(0, 10);
        }
        int i = 0;
        while (i < dataList.size()) {
            SearchKey.Key key = dataList.get(i);
            i++;
            key.setSort(Integer.valueOf(i));
        }
        this.o.setNewData(dataList);
        recyclerView.setAdapter(this.o);
        this.p.setVisibility(0);
        int i2 = 1;
        for (SearchKey.Key key2 : dataList) {
            this.w.put(key2.getContent(), i2 + StringUtils.COMMA + key2.getSort());
            this.x.put(key2.getContent(), key2);
            i2++;
        }
        this.o.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i3) {
                this.b.z0(baseQuickAdapter, view, i3);
            }
        });
        e16.c();
    }

    public final boolean u0() {
        if (getArguments() != null) {
            return TextUtils.equals(getArguments().getString("page_tag"), "visha_WebActivity");
        }
        return false;
    }

    public final void v0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        E0((String) this.m.get(i));
    }

    public final void w0(View view) {
        this.r = true;
        p0();
        this.n.removeAllHeaderView();
        this.n.removeAllFooterView();
        r0(this.m.size() == 0);
        p06.d0("dl_brower_clear_cl");
    }

    public final void x0(View view) {
        p06.d0("dl_brower_allhis_cl");
        this.r = false;
        initList();
        F0(false);
    }

    public final void z0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        String content = this.o.getData().get(i).getContent();
        SearchKey.Key key = (SearchKey.Key) this.x.get(content);
        if (key != null) {
            E0(key.getValue());
            HashMap map = new HashMap();
            String[] strArrSplit = this.w.get(content).toString().split(StringUtils.COMMA);
            map.put("queue", strArrSplit[1]);
            map.put(ICode.CALL.CALL_KEY_CONTENT, content);
            map.put("index", strArrSplit[0]);
            p06.b0("dl_brower_hot_cl", map);
        }
    }
}
