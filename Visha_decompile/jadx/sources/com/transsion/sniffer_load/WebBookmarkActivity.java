package com.transsion.sniffer_load;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.dbdata.beans.sniff.BookmarkRequest;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.sniffer_load.WebBookmarkActivity;
import com.transsion.sniffer_load.adapter.BookmarkListAdapter;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModel;
import com.transsion.sniffer_load.widgets.BookmarkFootOperateBar;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.widget.FootOperationBar;
import com.transsion.widgetslib.widget.editext.ExtendedEditText;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.p06;
import defpackage.r06;
import defpackage.woc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WebBookmarkActivity extends BaseActivity implements BookmarkListAdapter.b, View.OnClickListener, FootOperationBar.n {
    public RecyclerView N;
    public BookmarkListAdapter O;
    public BookmarksViewModel P;
    public final List Q = new ArrayList();
    public final List R = new ArrayList();
    public final List S = new ArrayList();
    public View T;
    public ImageView U;
    public TextView V;
    public CheckBox W;
    public boolean X;
    public int Y;
    public BookmarkFootOperateBar Z;
    public WindowManager.LayoutParams a0;
    public LinearLayout b0;
    public boolean c0;
    public boolean d0;
    public String e0;
    public String f0;

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(woc wocVar) {
            if (WebBookmarkActivity.this.Z != null) {
                WebBookmarkActivity.this.Z.setVisibility(WebBookmarkActivity.this.X ? 0 : 8);
            }
        }
    }

    public class b implements TextWatcher {
        public final OSMaterialEditText b;
        public final OSMaterialEditText c;
        public final Button d;

        public b(OSMaterialEditText oSMaterialEditText, OSMaterialEditText oSMaterialEditText2, Button button) {
            this.b = oSMaterialEditText;
            this.c = oSMaterialEditText2;
            this.d = button;
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String strTrim = WebBookmarkActivity.this.e0;
            boolean z = false;
            if (this.b.getEditText().getText() != null) {
                strTrim = this.b.getEditText().getText().toString().trim();
                WebBookmarkActivity.this.c0 = strTrim.length() == 0;
            }
            String strTrim2 = WebBookmarkActivity.this.f0;
            if (this.c.getEditText().getText() != null) {
                strTrim2 = this.c.getEditText().getText().toString().trim();
                WebBookmarkActivity.this.d0 = strTrim2.length() == 0;
            }
            Button button = this.d;
            if (!WebBookmarkActivity.this.c0 && !WebBookmarkActivity.this.d0 && (!strTrim2.equals(WebBookmarkActivity.this.f0) || !strTrim.equals(WebBookmarkActivity.this.e0))) {
                z = true;
            }
            button.setEnabled(z);
        }
    }

    private void L0() {
    }

    private void Q0() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.a0 = attributes;
        updateWebWindowParams(attributes);
    }

    public void W0(List list) {
        this.S.clear();
        this.S.addAll(list);
        this.U.setVisibility(list.size() == 0 ? 8 : 0);
        J0();
        p06.n0("dl_brower_rp_more_bm_show", "bookmark_num", list.size());
    }

    public static void Z0(DialogInterface dialogInterface, int i) {
        p06.d0("dl_brower_rp_more_bm_multi_del_popup_cancel_cl");
        dialogInterface.dismiss();
    }

    public static void a1(DialogInterface dialogInterface, int i) {
        p06.d0("dl_brower_rp_more_bm_multi_edit_popup_cancel_cl");
        if (dialogInterface != null) {
            dialogInterface.dismiss();
        }
    }

    public final void J0() {
        this.Q.clear();
        this.Q.addAll(this.S);
        this.O.setNewData(this.Q);
        this.U.setVisibility((this.Q.size() == 0 || this.S.size() == 0) ? 8 : 0);
        this.b0.setVisibility(this.Q.size() != 0 ? 8 : 0);
        h1(this.X);
    }

    public void K0() {
        this.O.setOnSelectListener(this);
        this.O.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.R0(baseQuickAdapter, view, i);
            }
        });
        this.O.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.S0(baseQuickAdapter, view, i);
            }
        });
        this.O.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.T0(baseQuickAdapter, view, i);
            }
        });
    }

    public void M0() {
        this.O = new BookmarkListAdapter();
        this.N.setLayoutManager(new LinearLayoutManager(this));
        this.N.setAdapter(this.O);
    }

    public void N0() {
        this.b0 = (LinearLayout) findViewById(R.id.no_bookmark_Layout);
        this.mActivityNavigationColor = getWindow().getNavigationBarColor();
    }

    public void O0() {
        View viewFindViewById = findViewById(R.id.title_bar_back);
        this.T = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.U0(view);
            }
        });
        TextView textView = (TextView) findViewById(R.id.title_bar_title);
        this.V = textView;
        textView.setText(R.string.download_main_tab_bookmark);
        this.W = (CheckBox) findViewById(R.id.title_bar_checkBox);
        ImageView imageView = (ImageView) findViewById(R.id.iv_bookmark_edit);
        this.U = imageView;
        imageView.setVisibility(0);
        this.U.setImageResource(R.drawable.ic_bookmark_edit);
        this.U.setOnClickListener(this);
        this.W.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.V0(view);
            }
        });
    }

    public void P0() {
        BookmarksViewModel bookmarksViewModel = (BookmarksViewModel) getViewModel(BookmarksViewModel.class);
        this.P = bookmarksViewModel;
        bookmarksViewModel.F().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.W0((List) obj);
            }
        });
        this.P.G().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.X0((BookmarkRequest) obj);
            }
        });
        this.P.H(this, CountryInfoUtil.m());
    }

    public final void R0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Bookmark bookmark = (Bookmark) this.Q.get(i);
        if (this.X) {
            if (bookmark.isLoadFromCode()) {
                return;
            }
            d1(baseQuickAdapter, view, i, false);
        } else {
            Intent intent = new Intent();
            intent.putExtra("url", bookmark.getUri());
            setResult(1240, intent);
            onBackPressed();
        }
    }

    public final boolean S0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Bookmark bookmark = (Bookmark) this.Q.get(i);
        if (this.X) {
            if (!bookmark.isLoadFromCode()) {
                d1(baseQuickAdapter, view, i, false);
            }
        } else {
            if (this.O.getData().size() == this.R.size()) {
                return false;
            }
            h1(true);
            p06.d0("dl_brower_rp_more_bm_multi_lp");
            this.O.i(bookmark, true, i);
        }
        return true;
    }

    public final void T0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!this.X || ((Bookmark) this.Q.get(i)).isLoadFromCode()) {
            return;
        }
        d1(baseQuickAdapter, view, i, true);
    }

    public final void U0(View view) {
        onBackPressed();
    }

    public final void V0(View view) {
        this.O.h(this.W.isChecked());
    }

    public final void X0(BookmarkRequest bookmarkRequest) {
        this.R.clear();
        BookmarkRequest.EntryKeysBean prefabricateBookmarkKeys = bookmarkRequest.getPrefabricateBookmarkKeys();
        if (prefabricateBookmarkKeys != null && prefabricateBookmarkKeys.getDataList() != null && prefabricateBookmarkKeys.getDataList().size() > 0) {
            this.R.addAll(prefabricateBookmarkKeys.getDataList());
        }
        J0();
    }

    public final void Y0(List list, DialogInterface dialogInterface, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.P.E(((Bookmark) it.next()).id, this);
        }
        h1(false);
        p06.d0("dl_brower_rp_more_bm_multi_del_popup_ok_cl");
    }

    @Override
    public void b(int i) {
        setTitle(i);
    }

    public final void b1(Bookmark bookmark, OSMaterialEditText oSMaterialEditText, OSMaterialEditText oSMaterialEditText2, d dVar, View view) {
        bookmark.setName(oSMaterialEditText.getEditText().getText().toString());
        bookmark.setUri(oSMaterialEditText2.getEditText().getText().toString());
        this.P.l0(bookmark, this);
        dVar.dismiss();
        h1(false);
        p06.d0("dl_brower_rp_more_bm_multi_edit_popup_ok_cl");
    }

    @Override
    public void c(boolean z) {
        setTitle(z ? this.S.size() : 0);
    }

    public final void c1(boolean z, View view) {
        if (z) {
            h1(false);
        } else {
            onBackPressed();
        }
    }

    public void d1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() == 0) {
            return;
        }
        ((BookmarkListAdapter) baseQuickAdapter).i((Bookmark) baseQuickAdapter.getData().get(i), z == ((CheckBox) view.findViewById(R.id.iv_bookmark_checkBox)).isChecked(), i);
    }

    public final void e1(d dVar, OSMaterialEditText oSMaterialEditText) {
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

    public void f1(final List list) {
        new d.a(this).k(list.size() > 1 ? getString(R.string.download_bookmarks_remove_hint, Integer.valueOf(list.size())) : getString(R.string.download_bookmark_remove_hint)).u(R.string.remove, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.Y0(list, dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                WebBookmarkActivity.Z0(dialogInterface, i);
            }
        }).F();
        p06.d0("dl_brower_rp_more_bm_multi_del_popup_show");
    }

    public void g1(final Bookmark bookmark) {
        p06.d0("dl_brower_rp_more_bm_multi_edit_popup_show");
        View viewInflate = View.inflate(this, R.layout.create_bookmark_dialog, null);
        final OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) viewInflate.findViewById(R.id.et_name);
        final OSMaterialEditText oSMaterialEditText2 = (OSMaterialEditText) viewInflate.findViewById(R.id.et_url);
        final d dVarA = new d.a(this).B(getString(R.string.download_edit_bookmark)).E(viewInflate).u(R.string.Save, null).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                WebBookmarkActivity.a1(dialogInterface, i);
            }
        }).a();
        dVarA.show();
        Button buttonE = dVarA.e(-1);
        buttonE.setEnabled(false);
        oSMaterialEditText.getEditText().setText(bookmark.getName());
        e1(dVarA, oSMaterialEditText);
        oSMaterialEditText2.getEditText().setText(bookmark.getUri());
        this.e0 = oSMaterialEditText.getEditText().getText() != null ? oSMaterialEditText.getEditText().getText().toString() : "";
        this.f0 = oSMaterialEditText2.getEditText().getText() != null ? oSMaterialEditText2.getEditText().getText().toString() : "";
        b bVar = new b(oSMaterialEditText, oSMaterialEditText2, buttonE);
        oSMaterialEditText.getEditText().addTextChangedListener(bVar);
        oSMaterialEditText2.getEditText().addTextChangedListener(bVar);
        buttonE.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.b1(bookmark, oSMaterialEditText, oSMaterialEditText2, dVarA, view);
            }
        });
    }

    public void h1(final boolean z) {
        BookmarkListAdapter bookmarkListAdapter;
        this.X = z;
        this.O.j(z);
        this.O.notifyDataSetChanged();
        this.U.setVisibility((z || !((bookmarkListAdapter = this.O) == null || bookmarkListAdapter.getData() == null || this.O.getData().size() != 0)) ? 8 : 0);
        this.W.setVisibility(z ? 0 : 8);
        View view = this.T;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? com.transsion.playercommon.R.string.os_close : com.transsion.playercommon.R.string.os_back);
            this.T.setContentDescription(getString(z ? com.transsion.playercommon.R.string.talkback_close : com.transsion.playercommon.R.string.talkback_back));
        }
        this.T.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.c1(z, view2);
            }
        });
        inflateOperationBar();
        this.Z.setVisibility(z ? 0 : 8);
        if (z) {
            this.O.h(false);
        }
        this.V.setText(getString(z ? com.transsion.magicvideo.R.string.none_select : R.string.download_main_tab_bookmark));
        resetNavigationBarColor(!z);
        RecyclerView recyclerView = this.N;
        if (recyclerView != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) recyclerView.getLayoutParams();
            if (z) {
                layoutParams.addRule(2, R.id.bottom_bar);
            } else {
                layoutParams.removeRule(2);
            }
            this.N.setLayoutParams(layoutParams);
        }
    }

    public void inflateOperationBar() {
        if (this.Z == null) {
            BookmarkFootOperateBar bookmarkFootOperateBar = (BookmarkFootOperateBar) ((ViewStub) findViewById(R.id.bottom_action_bar)).inflate();
            this.Z = bookmarkFootOperateBar;
            bookmarkFootOperateBar.setOnFootOptBarClickListener(this);
        }
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onBackPressed() {
        if (this.X) {
            h1(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.iv_bookmark_edit) {
            h1(true);
            p06.d0("dl_brower_rp_more_bm_multi_cl");
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        BookmarkFootOperateBar bookmarkFootOperateBar = this.Z;
        if (bookmarkFootOperateBar != null) {
            bookmarkFootOperateBar.setVisibility(this.X ? 0 : 8);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_web_bookmark);
        this.N = (RecyclerView) findViewById(R.id.rv_bookmark_list);
        setFinishOnTouchOutside(true);
        Q0();
        N0();
        O0();
        M0();
        P0();
        K0();
        L0();
        resetNavigationBarColor(true);
        clearWindowDimFlag(true);
        this.mWindowInfoViewModel.a.observe(this, new a());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.Z = null;
    }

    @Override
    public void onItemClick(int i) {
        ArrayList arrayListG = this.O.g();
        if (arrayListG.isEmpty()) {
            return;
        }
        if (i == 0) {
            g1((Bookmark) arrayListG.get(0));
            p06.d0("dl_brower_rp_more_bm_multi_edit_cl");
        } else {
            if (i != 1) {
                return;
            }
            f1(arrayListG);
            p06.d0("dl_brower_rp_more_bm_multi_del_cl");
        }
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        r06.c(screen_type, "dl_brower_rp_more_bm_show");
        updateWebWindowParams(this.a0);
    }

    @Override
    public void setTitle(int i) {
        this.Y = i;
        TextView textView = this.V;
        if (textView != null) {
            if (i == 0) {
                textView.setText(getString(com.transsion.magicvideo.R.string.none_select));
            } else {
                textView.setText(getString(i > 1 ? com.transsion.magicvideo.R.string.items : com.transsion.magicvideo.R.string.item, Integer.valueOf(i)));
            }
        }
        CheckBox checkBox = this.W;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.S.size());
        }
        BookmarkFootOperateBar bookmarkFootOperateBar = this.Z;
        if (bookmarkFootOperateBar != null) {
            bookmarkFootOperateBar.setAllEnable(i != 0);
            this.Z.setEditEnable(i == 1);
        }
    }
}
