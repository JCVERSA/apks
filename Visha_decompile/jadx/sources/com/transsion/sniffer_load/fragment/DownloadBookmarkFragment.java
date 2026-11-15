package com.transsion.sniffer_load.fragment;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.BookmarkAdapter;
import com.transsion.sniffer_load.fragment.DownloadBookmarkFragment;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModel;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModelNew;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgetslib.widget.editext.ExtendedEditText;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.f5;
import defpackage.gp3;
import defpackage.p06;
import java.util.ArrayList;
import java.util.List;

public class DownloadBookmarkFragment extends PlayBaseFragment {
    public RecyclerView l;
    public BookmarkAdapter m;
    public boolean n;
    public BookmarksViewModelNew o;
    public MainViewModel p;
    public boolean q = false;
    public final Observer r = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.lambda$new$0((Boolean) obj);
        }
    };
    public com.transsion.widgetslib.dialog.d s;

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(List list) {
            DownloadBookmarkFragment.this.p0(list);
            DownloadBookmarkFragment.this.m.setNewData(list);
        }
    }

    public class b implements TextWatcher {
        public final OSMaterialEditText b;
        public final boolean c;
        public final Bookmark d;
        public final Button e;

        public b(OSMaterialEditText oSMaterialEditText, boolean z, Bookmark bookmark, Button button) {
            this.b = oSMaterialEditText;
            this.c = z;
            this.d = bookmark;
            this.e = button;
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String strTrim = charSequence.toString().trim();
            String strTrim2 = this.b.getEditText().getText().toString().trim();
            this.e.setEnabled((TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2) || (this.c && TextUtils.equals(this.d.getName(), strTrim) && this.c && TextUtils.equals(this.d.getUri(), strTrim2))) ? false : true);
        }
    }

    public class c implements TextWatcher {
        public final OSMaterialEditText b;
        public final boolean c;
        public final Bookmark d;
        public final Button e;

        public c(OSMaterialEditText oSMaterialEditText, boolean z, Bookmark bookmark, Button button) {
            this.b = oSMaterialEditText;
            this.c = z;
            this.d = bookmark;
            this.e = button;
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String strTrim = charSequence.toString().trim();
            String strTrim2 = this.b.getEditText().getText().toString().trim();
            this.e.setEnabled((TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2) || (this.c && TextUtils.equals(this.d.getName(), strTrim) && this.c && TextUtils.equals(this.d.getUri(), strTrim2))) ? false : true);
        }
    }

    public class d implements gp3.b {
        public final Bookmark a;

        public d(Bookmark bookmark) {
            this.a = bookmark;
        }

        @Override
        public void a(Bitmap bitmap) {
            BookmarksViewModel.j0(((BaseFragment) DownloadBookmarkFragment.this).mActivity, this.a.getUri(), bitmap);
        }

        @Override
        public void b() {
        }
    }

    private void A0(com.transsion.widgetslib.dialog.d dVar, OSMaterialEditText oSMaterialEditText) {
        Window window = dVar.getWindow();
        if (window != null) {
            window.setSoftInputMode((window.getAttributes().softInputMode & 240) | 5);
        }
        final ExtendedEditText editText = oSMaterialEditText.getEditText();
        if (editText == null) {
            return;
        }
        oSMaterialEditText.post(new Runnable() {
            int mRetries = 0;

            @Override
            public void run() {
                int i;
                if (editText.isAttachedToWindow()) {
                    editText.selectAll();
                    editText.requestFocus();
                    InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
                    if (inputMethodManager == null || inputMethodManager.showSoftInput(editText, 0) || (i = this.mRetries) >= 10) {
                        return;
                    }
                    this.mRetries = i + 1;
                    editText.postDelayed(this, 50L);
                }
            }
        });
    }

    private void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.p = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.r);
        notifyVideoBarShowStateChange(Boolean.TRUE.equals(this.p.g.getValue()));
    }

    public void lambda$new$0(Boolean bool) {
        notifyVideoBarShowStateChange(Boolean.TRUE.equals(bool));
    }

    private void r0() {
        this.m.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.t0(baseQuickAdapter, view, i);
            }
        });
        this.m.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.u0(baseQuickAdapter, view, i);
            }
        });
        this.m.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.v0(baseQuickAdapter, view, i);
            }
        });
    }

    public void t0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Bookmark bookmark = (Bookmark) baseQuickAdapter.getData().get(i);
        if (!this.n) {
            if (i == 0) {
                B0(false);
                p06.f0(null, "dl_bm_add_cl", 9324L);
                return;
            }
            z0(false, bookmark);
            Intent intent = new Intent(this.mContext, (Class<?>) WebActivity.class);
            intent.putExtra(VkConstant.URL, bookmark.getUri());
            intent.putExtra("need_new_web", true);
            intent.putExtra("web_url_from", "dl_bm_cl");
            f5.b(intent, 1242, this.mActivity);
            return;
        }
        if (!bookmark.isLoadFromCode()) {
            if (i != 0) {
                C0(true, bookmark);
                return;
            } else {
                B0(false);
                p06.f0(null, "dl_bm_add_cl", 9324L);
                return;
            }
        }
        z0(false, bookmark);
        Intent intent2 = new Intent(this.mContext, (Class<?>) WebActivity.class);
        intent2.putExtra(VkConstant.URL, bookmark.getUri());
        intent2.putExtra("need_new_web", true);
        intent2.putExtra("web_url_from", "dl_bm_cl");
        f5.b(intent2, 1242, this.mActivity);
        editMode(false);
    }

    public void u0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        D0((Bookmark) baseQuickAdapter.getData().get(i));
    }

    public boolean v0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (i == 0) {
            return false;
        }
        if (!this.n) {
            if (i == 0) {
                B0(false);
            } else {
                E0(true);
            }
        }
        return true;
    }

    public static void w0(boolean z, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        p06.k(z);
    }

    public void B0(boolean z) {
        C0(false, null);
    }

    public void C0(final boolean z, final Bookmark bookmark) {
        p06.m(z);
        View viewInflate = View.inflate(this.mContext, R.layout.create_bookmark_dialog, null);
        final OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) viewInflate.findViewById(R.id.et_name);
        final OSMaterialEditText oSMaterialEditText2 = (OSMaterialEditText) viewInflate.findViewById(R.id.et_url);
        final com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.mContext).B(getString(z ? R.string.download_edit_bookmark : R.string.download_add_bookmark)).E(viewInflate).u(R.string.done, null).m(R.string.Save, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                DownloadBookmarkFragment.w0(z, dialogInterface, i);
            }
        }).a();
        dVarA.show();
        Button buttonE = dVarA.e(-1);
        A0(dVarA, oSMaterialEditText);
        buttonE.setEnabled(false);
        if (z) {
            oSMaterialEditText.getEditText().setText(bookmark.getName());
            oSMaterialEditText2.getEditText().setText(bookmark.getUri());
            buttonE.setEnabled(true);
        }
        oSMaterialEditText.getEditText().addTextChangedListener(new b(oSMaterialEditText2, z, bookmark, buttonE));
        oSMaterialEditText2.getEditText().addTextChangedListener(new c(oSMaterialEditText2, z, bookmark, buttonE));
        buttonE.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.x0(z, bookmark, oSMaterialEditText, oSMaterialEditText2, dVarA, view);
            }
        });
    }

    public void D0(final Bookmark bookmark) {
        this.s = new com.transsion.widgetslib.dialog.d.a(this.mContext).k(getString(R.string.download_bookmark_remove_hint)).u(R.string.remove, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.y0(bookmark, dialogInterface, i);
            }
        }).m(R.string.cancel, null).F();
    }

    public void E0(boolean z) {
        this.n = z;
        BookmarkAdapter bookmarkAdapter = this.m;
        if (bookmarkAdapter != null) {
            bookmarkAdapter.d(z);
            this.m.notifyDataSetChanged();
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.a(z);
        }
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        if (this.l == null) {
            return;
        }
        applyRecyclerViewBottomPaddingPx(this.l, z ? com.transsion.utils.a.d(this.mContext, 60.0f) : 0);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.q) {
            RecyclerView.LayoutManager layoutManager = this.l.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                ((GridLayoutManager) layoutManager).setSpanCount(q0(configuration));
            }
        }
        com.transsion.widgetslib.dialog.d dVar = this.s;
        if (dVar != null) {
            dVar.g(configuration);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.o = (BookmarksViewModelNew) getViewModelByFragment(BookmarksViewModelNew.class);
        this.m = new BookmarkAdapter(this.mContext);
        this.q = com.transsion.utils.a.A();
        r0();
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_download_bookmark;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_bookmark);
        this.l = recyclerView;
        recyclerView.setAdapter(this.m);
        if (this.q) {
            this.l.setLayoutManager(new CustomGridLayoutManager(this.mContext, q0(getResources().getConfiguration())));
        } else {
            this.l.setLayoutManager(new CustomGridLayoutManager(this.mContext, 4));
        }
        this.o.i().observe(getViewLifecycleOwner(), new a());
        OverScrollDecorHelper.setUpOverScroll(this.l, 0);
        addBottomBarShowStateObserver();
    }

    public final void p0(List list) {
        if (list == null) {
            list = new ArrayList();
        }
        list.add(0, new Bookmark(getString(R.string.add_to_playlist), (String) null, R.drawable.ic_create_new_bookmark));
    }

    public final int q0(Configuration configuration) {
        return configuration.orientation == 2 ? 7 : 4;
    }

    public boolean s0() {
        return this.n;
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
    }

    public final void x0(boolean z, Bookmark bookmark, OSMaterialEditText oSMaterialEditText, OSMaterialEditText oSMaterialEditText2, com.transsion.widgetslib.dialog.d dVar, View view) {
        if (z) {
            bookmark.setName(oSMaterialEditText.getEditText().getText().toString());
            bookmark.setUri(oSMaterialEditText2.getEditText().getText().toString());
            this.o.p(bookmark, this.mActivity);
        } else {
            Bookmark bookmark2 = new Bookmark(oSMaterialEditText.getEditText().getText().toString(), oSMaterialEditText2.getEditText().getText().toString());
            this.o.g(bookmark2, this.mActivity);
            gp3.b().a(bookmark2.getUri(), new d(bookmark2));
        }
        dVar.dismiss();
        p06.l(z);
    }

    public final void y0(Bookmark bookmark, DialogInterface dialogInterface, int i) {
        this.o.h(bookmark.id, this.mActivity);
    }

    public void z0(boolean z, Bookmark bookmark) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(z ? "analysis_name" : "bookmark_name", bookmark.getName());
        bundle.putString(z ? "analysis_address" : "bookmark_address", bookmark.getUri());
        trackData.add(z ? "analysis_name" : "bookmark_name", bookmark.getName());
        trackData.add(z ? "analysis_address" : "bookmark_address", bookmark.getUri());
        if (!z) {
            bundle.putInt("TYPE", !bookmark.isLoadFromCode() ? 1 : 0);
            trackData.add("TYPE", !bookmark.isLoadFromCode() ? 1 : 0);
        }
        p06.q0(trackData, bundle, z ? "dl_analysis_cl" : "dl_bm_cl", 9324L);
    }
}
