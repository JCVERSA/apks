package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ui.FSSelect;
import ru.zdevs.zarchiver.ui.text.EditPassword;

public final class p extends i implements FSSelect.c, d0.h.a, FSSelect.b, DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    public AlertDialog f1020g;

    public int f1021h;

    public FrameLayout f1022i;

    public ListPopupWindow f1023j;

    public final int f1024k;

    public final String f1025l;

    public String f1026m;

    public final boolean f1027n;

    public final int f1028o;

    public boolean f1029p;

    public class a implements f1.b.e {

        public final ru.zdevs.zarchiver.b f1030a;

        public final FSSelect f1031b;

        public a(ru.zdevs.zarchiver.b bVar, FSSelect fSSelect) {
            this.f1030a = bVar;
            this.f1031b = fSSelect;
        }

        @Override
        public final void a(int i2, int i3, boolean z2) {
            ru.zdevs.zarchiver.b bVar = this.f1030a;
            bVar.f1657g = i2;
            bVar.f1659i = z2;
            bVar.f1658h = i3;
            FSSelect fSSelect = this.f1031b;
            fSSelect.setPath(fSSelect.getPath());
        }
    }

    public class b implements AdapterView.OnItemClickListener {
        public b() {
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            p pVar;
            FrameLayout frameLayout;
            if (adapterView == null || (frameLayout = (pVar = p.this).f1022i) == null) {
                return;
            }
            FSSelect fSSelect = (FSSelect) frameLayout.findViewById(R.id.fss_file_list);
            c0.e eVar = (c0.e) adapterView.getItemAtPosition(i2);
            if (fSSelect != null && eVar != null) {
                fSSelect.setPath(new h0.h(eVar.f411c));
                pVar.y();
            }
            ListPopupWindow listPopupWindow = pVar.f1023j;
            if (listPopupWindow != null) {
                listPopupWindow.dismiss();
                pVar.f1023j = null;
            }
        }
    }

    public class c implements PopupWindow.OnDismissListener {
        public c() {
        }

        @Override
        public final void onDismiss() {
            p.this.f1023j = null;
        }
    }

    public p(ru.zdevs.zarchiver.d dVar, Context context, int i2, int i3, boolean z2, int i4) {
        this.f965f = dVar;
        this.f1024k = i3;
        this.f1025l = context.getString(R.string.ADD_SELECTED_FILES);
        this.f1027n = z2;
        this.f1028o = i4;
        u(context, i2, false, z2);
        c();
    }

    @Override
    public final void d(int i2, int i3, boolean z2) {
        if (this.f1020g != null) {
            ((TextView) this.f1022i.findViewById(R.id.tv_info)).setText(this.f1025l.replace("%1", "" + i3));
        }
    }

    @Override
    public final void e() {
        ListPopupWindow listPopupWindow = this.f1023j;
        if (listPopupWindow != null) {
            listPopupWindow.dismiss();
            this.f1023j = null;
        }
        AlertDialog alertDialog = this.f1020g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f1020g = null;
        }
        FrameLayout frameLayout = this.f1022i;
        if (frameLayout != null) {
            ((FSSelect) frameLayout.findViewById(R.id.fss_file_list)).e();
            this.f1022i = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 7;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        if (this.f1020g == null) {
            return;
        }
        int i2 = configuration.orientation == 2 ? R.layout.dlg_select_file_land : R.layout.dlg_select_file;
        if (this.f1021h != i2) {
            this.f1021h = i2;
            View viewInflate = LayoutInflater.from(context).inflate(this.f1021h, (ViewGroup) null, false);
            i.m(this.f1022i, viewInflate);
            FSSelect fSSelect = (FSSelect) this.f1022i.findViewById(R.id.fss_file_list);
            fSSelect.e();
            FSSelect fSSelect2 = (FSSelect) viewInflate.findViewById(R.id.fss_file_list);
            fSSelect2.d();
            ru.zdevs.zarchiver.b bVar = fSSelect.f1737d;
            int i3 = bVar.f1657g;
            ru.zdevs.zarchiver.b bVar2 = fSSelect2.f1737d;
            bVar2.f1657g = i3;
            bVar2.f1659i = bVar.f1659i;
            bVar2.f1658h = bVar.f1658h;
            fSSelect2.setPath(fSSelect.getPath());
            ((CheckBox) viewInflate.findViewById(R.id.cb_encrypt)).setOnCheckedChangeListener(this);
            ((CheckBox) viewInflate.findViewById(R.id.cb_level)).setOnCheckedChangeListener(this);
            View viewFindViewById = viewInflate.findViewById(R.id.sv_bar);
            if (viewFindViewById != null && this.f1022i.findViewById(R.id.cb_encrypt).getVisibility() == 0 && this.f1022i.findViewById(R.id.cb_level).getVisibility() == 0) {
                viewFindViewById.setVisibility(0);
            }
            ((RelativeLayout) viewInflate.findViewById(R.id.rl_pwd)).setVisibility(this.f1022i.findViewById(R.id.rl_pwd).getVisibility());
            ((Spinner) viewInflate.findViewById(R.id.spn_level)).setVisibility(this.f1022i.findViewById(R.id.spn_level).getVisibility());
            this.f1022i.removeAllViews();
            this.f1022i.addView(viewInflate);
            t();
            if (this.f1020g.getWindow() != null) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.copyFrom(this.f1020g.getWindow().getAttributes());
                layoutParams.width = (viewFindViewById == null || viewFindViewById.getVisibility() != 0) ? -2 : -1;
                this.f1020g.getWindow().setAttributes(layoutParams);
            }
        }
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        if (compoundButton.getId() == R.id.cb_encrypt) {
            ((RelativeLayout) this.f1022i.findViewById(R.id.rl_pwd)).setVisibility(z2 ? 0 : 8);
        } else if (compoundButton.getId() == R.id.cb_level) {
            ((Spinner) this.f1022i.findViewById(R.id.spn_level)).setVisibility(z2 ? 0 : 8);
        }
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        i.d dVar;
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onFileSelect(String str, String str2, int i2) {
        int i3 = this.f1024k;
        if ((i3 & 2) == 0) {
            return;
        }
        if ((i3 & 8) == 8) {
            String strS = a0.c.s(str2);
            if (!(strS.equals("gz") || strS.equals("bz2") || strS.equals("xz") || strS.equals("lz4") || strS.equals("zstd") ? str2.indexOf(".tar.") > str2.length() + (-10) : strS.equals("apk") || strS.equals("zip") || strS.equals("7z") || strS.equals("tar") || strS.equals("jar") || strS.equals("wim"))) {
                return;
            }
        }
        this.f1026m = str2;
        i.d dVar = this.f961b;
        if (dVar != null) {
            dVar.a(this);
        }
        e();
    }

    @Override
    public final void onPathChange(h0.h hVar) {
        if (this.f1022i != null) {
            y();
        }
    }

    public final void t() {
        FSSelect fSSelect = (FSSelect) this.f1022i.findViewById(R.id.fss_file_list);
        int i2 = this.f1024k;
        fSSelect.setMultiSelect((i2 & 1) == 1);
        fSSelect.setOnPathChangeListener(this);
        fSSelect.setOnItemSelectChanged(this);
        if ((i2 & 1) == 0 && (i2 & 2) == 2) {
            fSSelect.setOnFileClickListener(this);
        }
        onPathChange(fSSelect.getPath());
        ((RelativeLayout) this.f1022i.findViewById(R.id.rlNavigation)).setOnClickListener(this);
        this.f1022i.findViewById(R.id.iv_view_mode).setOnClickListener(this);
        fSSelect.setEmptyText((TextView) this.f1022i.findViewById(R.id.tv_empty_list));
        TextView textView = (TextView) this.f1022i.findViewById(R.id.tv_info);
        if ((i2 & 1) == 0) {
            textView.setText((CharSequence) null);
            textView.setHeight(1);
        }
    }

    public final void u(Context context, int i2, boolean z2, boolean z3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(i2);
        this.f1021h = context.getResources().getConfiguration().orientation == 2 ? R.layout.dlg_select_file_land : R.layout.dlg_select_file;
        View viewInflate = LayoutInflater.from(context).inflate(this.f1021h, (ViewGroup) null, false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f1022i = frameLayout;
        frameLayout.addView(viewInflate);
        builder.setView(this.f1022i);
        ((FSSelect) this.f1022i.findViewById(R.id.fss_file_list)).setPath(new h0.h(t0.b.f2081b[0]));
        t();
        View viewFindViewById = viewInflate.findViewById(R.id.sv_bar);
        this.f1029p = false;
        if (z3) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
                this.f1029p = true;
            }
            CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_encrypt);
            checkBox.setVisibility(0);
            checkBox.setOnCheckedChangeListener(this);
            int i3 = this.f1028o;
            if (i3 == 1) {
                ((Spinner) viewInflate.findViewById(R.id.spn_encrypt)).setVisibility(8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_enc);
                if (textView != null) {
                    textView.setVisibility(8);
                }
            } else if (i3 == 2) {
                CheckBox checkBox2 = (CheckBox) viewInflate.findViewById(R.id.cb_level);
                checkBox2.setVisibility(0);
                checkBox2.setOnCheckedChangeListener(this);
                c0.j jVar = new c0.j(context);
                for (String str : context.getResources().getStringArray(R.array.CMP_LIST_LEVELS)) {
                    jVar.f437b.add(str);
                    jVar.f438c.add(Boolean.TRUE);
                }
                Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spn_level);
                spinner.setAdapter((SpinnerAdapter) jVar);
                int i4 = (((t0.b.f2085f & 983040) >> 16) + 1) / 2;
                if (i4 < spinner.getCount() && jVar.isEnabled(i4)) {
                    spinner.setSelection(i4);
                }
            }
        } else if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        builder.setPositiveButton(z2 ? R.string.BTN_OK : R.string.BTN_ADD, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f1020g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f1020g);
        d(0, 0, false);
    }

    public final int v() {
        if (this.f1028o != 2 || this.f1020g == null) {
            return -1;
        }
        Spinner spinner = (Spinner) this.f1022i.findViewById(R.id.spn_level);
        if (spinner.getVisibility() != 0) {
            return -1;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        return selectedItemPosition > 0 ? (selectedItemPosition * 2) - 1 : selectedItemPosition;
    }

    public final String w(boolean z2) {
        if (!this.f1027n || this.f1020g == null || !((CheckBox) this.f1022i.findViewById(R.id.cb_encrypt)).isChecked()) {
            return "";
        }
        EditPassword editPassword = (EditPassword) this.f1022i.findViewById(R.id.edt_password);
        return z2 ? editPassword.getText().toString().replace("\\", "\\\\") : editPassword.getText().toString();
    }

    public final h0.h x() {
        if (this.f1020g == null) {
            return null;
        }
        return ((FSSelect) this.f1022i.findViewById(R.id.fss_file_list)).getPath();
    }

    public final void y() {
        int i2;
        FSSelect fSSelect = (FSSelect) this.f1022i.findViewById(R.id.fss_file_list);
        String str = fSSelect.getPath().j() ? fSSelect.getPath().f1108c : "";
        int iLastIndexOf = str.lastIndexOf(47);
        String strSubstring = "/";
        if (iLastIndexOf >= 0 && str.length() > (i2 = iLastIndexOf + 1)) {
            String strSubstring2 = str.substring(i2);
            strSubstring = iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : "/";
            str = strSubstring2;
        }
        TextView textView = (TextView) this.f1022i.findViewById(R.id.nTitle);
        TextView textView2 = (TextView) this.f1022i.findViewById(R.id.nSubtitle);
        if (textView2 != null) {
            try {
                textView2.setText(strSubstring);
            } catch (ArrayIndexOutOfBoundsException unused) {
                textView2.setEllipsize(null);
                textView2.setGravity(8388613);
                textView2.setText(strSubstring);
            }
        }
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void z() {
        AlertDialog alertDialog = this.f1020g;
        if (alertDialog == null) {
            return;
        }
        if (i.s(alertDialog) && this.f1029p) {
            i.q(this.f1020g, true);
        }
        ((FSSelect) this.f1022i.findViewById(R.id.fss_file_list)).d();
    }

    @Override
    public final void onClick(View view) {
        if (view.getId() == R.id.iv_view_mode) {
            if (this.f1020g == null) {
                return;
            }
            FSSelect fSSelect = (FSSelect) this.f1022i.findViewById(R.id.fss_file_list);
            ru.zdevs.zarchiver.b bVar = fSSelect.f1737d;
            f1.b bVar2 = new f1.b(view.getContext(), bVar.f1657g, bVar.f1659i, bVar.f1658h, 1);
            bVar2.a(this.f1020g.getWindow(), view);
            bVar2.f789h = new a(bVar, fSSelect);
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) this.f1022i.findViewById(R.id.rlNavigation);
        ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        this.f1023j = listPopupWindow;
        listPopupWindow.setAnchorView(relativeLayout);
        this.f1023j.setAdapter(new c0.d(view.getContext(), true, false));
        this.f1023j.setContentWidth((relativeLayout.getWidth() - relativeLayout.getPaddingLeft()) - relativeLayout.getPaddingRight());
        this.f1023j.setOnItemClickListener(new b());
        this.f1023j.setOnDismissListener(new c());
        this.f1023j.setModal(true);
        this.f1023j.show();
    }

    public p(ru.zdevs.zarchiver.d dVar, Context context) {
        this.f965f = dVar;
        this.f1024k = 14;
        this.f1025l = context.getString(R.string.ADD_SELECTED_FILES);
        this.f1027n = false;
        this.f1028o = 0;
        u(context, R.string.CMP_TTL_COMPRESS, true, false);
        c();
    }
}
