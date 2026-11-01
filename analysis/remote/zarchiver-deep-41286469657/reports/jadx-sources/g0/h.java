package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ui.FSSelect;
import ru.zdevs.zarchiver.ui.text.BtnEditText;
import ru.zdevs.zarchiver.ui.text.EditPassword;

public final class h extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, CompoundButton.OnCheckedChangeListener, i.d {

    public AlertDialog f943g;

    public int f944h;

    public final ScrollView f945i;

    public z0.d f946j;

    public final String f947k;

    public int f948l;

    public final c0.j f949m;

    public final c0.j f950n;

    public String f951o;

    public int f952p;

    public boolean f953q;

    public boolean f954r;

    public boolean f955s;

    public String f956t;

    public final int f957u;

    public String f958v;

    public String f959w;

    public h(int i2, Context context, String str, ru.zdevs.zarchiver.d dVar) {
        this.f965f = dVar;
        this.f947k = str;
        if (a0.c.K(i2, 1)) {
            this.f947k = str + ".eXt";
        }
        if (a0.c.K(i2, 16) && !this.f947k.startsWith("/") && t0.b.f2080a == null) {
            this.f947k = t0.b.f2081b[dVar.f1685e] + "/" + this.f947k;
        }
        this.f955s = t0.b.f(2);
        this.f948l = 0;
        this.f952p = -1;
        this.f957u = i2;
        this.f959w = "";
        this.f958v = "";
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        if (Build.VERSION.SDK_INT >= 22) {
            z0.e.i(builder, R.string.CMP_TTL_COMPRESS, R.menu.menu_compression, new d(this)).findItem(R.id.bSolid).setChecked(this.f955s);
        } else {
            builder.setTitle(R.string.CMP_TTL_COMPRESS);
        }
        Configuration configuration = context.getResources().getConfiguration();
        this.f944h = (configuration.orientation != 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_compress : R.layout.dlg_compress_land;
        View viewInflate = LayoutInflater.from(context).inflate(this.f944h, (ViewGroup) null, false);
        ScrollView scrollView = new ScrollView(context);
        this.f945i = scrollView;
        scrollView.addView(viewInflate);
        builder.setView(scrollView);
        BtnEditText btnEditText = (BtnEditText) viewInflate.findViewById(R.id.edt_name);
        btnEditText.setInputType(262145);
        btnEditText.setText(this.f947k);
        btnEditText.setOnBtnClickListener(this);
        ((Button) viewInflate.findViewById(R.id.btn_path)).setOnClickListener(this);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_deletefile);
        if (a0.c.K(i2, 4)) {
            checkBox.setEnabled(false);
            checkBox.setChecked(false);
        }
        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spn_level);
        c0.j jVar = new c0.j(context);
        this.f949m = jVar;
        for (String str2 : context.getResources().getStringArray(R.array.CMP_LIST_LEVELS)) {
            jVar.f437b.add(str2);
            jVar.f438c.add(Boolean.TRUE);
        }
        spinner.setAdapter((SpinnerAdapter) jVar);
        Spinner spinner2 = (Spinner) viewInflate.findViewById(R.id.spn_encrypt);
        EditPassword editPassword = (EditPassword) viewInflate.findViewById(R.id.edt_password);
        editPassword.setHint(R.string.CMP_ENTER_PASSWORD);
        editPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(1024)});
        Spinner spinner3 = (Spinner) viewInflate.findViewById(R.id.spn_format);
        if (!a0.c.K(i2, 2) || a0.c.K(i2, 1)) {
            ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(context, R.array.CMP_LIST_FORMATS_ANY, android.R.layout.simple_spinner_item);
            arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            spinner3.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        } else {
            String str3 = this.f947k;
            int iLastIndexOf = str3.lastIndexOf(46);
            if (".tar".equals(iLastIndexOf > 0 ? v0.h.i(str3.substring(iLastIndexOf)) : null)) {
                ArrayAdapter<CharSequence> arrayAdapterCreateFromResource2 = ArrayAdapter.createFromResource(context, R.array.CMP_LIST_FORMATS_TAR, android.R.layout.simple_spinner_item);
                arrayAdapterCreateFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                spinner3.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource2);
            }
        }
        Spinner spinner4 = (Spinner) viewInflate.findViewById(R.id.spn_split);
        this.f950n = new c0.j(context);
        t(context, null);
        spinner4.setOnItemSelectedListener(new e(this));
        CheckBox checkBox2 = (CheckBox) viewInflate.findViewById(R.id.cb_separate);
        checkBox2.setOnCheckedChangeListener(this);
        checkBox2.setEnabled(!a0.c.K(i2, 2));
        checkBox.setChecked(false);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("sCompressDefType", "7z");
        int i3 = defaultSharedPreferences.getInt("iCompressDefLevel", 3);
        int i4 = defaultSharedPreferences.getInt("iCompressDefEncrypt", 0);
        int count = spinner3.getCount();
        for (int i5 = 0; i5 < count; i5++) {
            if (string.equals(spinner3.getItemAtPosition(i5).toString())) {
                spinner3.setSelection(i5);
                w(context, i5);
                break;
            }
        }
        if (i3 < spinner.getCount() && i3 >= 0) {
            spinner.setSelection(i3);
        }
        if (i4 < spinner2.getCount() && i4 >= 0) {
            spinner2.setSelection(i4);
        }
        spinner3.setOnItemSelectedListener(new f(this));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f943g = alertDialogCreate;
        i.p(alertDialogCreate);
        c();
    }

    public static String v(String str) {
        String strI = v0.h.i(str);
        switch (strI) {
            case "tar.zstd":
                return ".tar.zst";
            case "gzip":
                return ".gz";
            case "zstd":
                return ".zst";
            case "bzip2":
                return ".bz2";
            default:
                return ".".concat(strI);
        }
    }

    @Override
    public final boolean a(i iVar) {
        h0.h hVarX;
        if (this.f943g == null) {
            return false;
        }
        if (iVar.l() != 7) {
            return true;
        }
        p pVar = (p) iVar;
        ScrollView scrollView = this.f945i;
        EditText editText = (EditText) scrollView.findViewById(R.id.edt_name);
        if (editText == null || (hVarX = pVar.x()) == null) {
            return false;
        }
        String str = pVar.f1026m;
        if (str == null) {
            String str2 = hVarX.r() + '/' + a0.c.y(editText.getText().toString());
            editText.setText(str2);
            editText.setSelection(str2.length());
            return true;
        }
        String str3 = hVarX.r() + '/' + str;
        this.f956t = str3;
        editText.setText(str3);
        Spinner spinner = (Spinner) scrollView.findViewById(R.id.spn_format);
        String strS = a0.c.s(str);
        int count = spinner.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            if (spinner.getItemAtPosition(i2) != null && strS.equals(spinner.getItemAtPosition(i2).toString())) {
                spinner.setSelection(i2);
                return true;
            }
        }
        return true;
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f943g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f943g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 5;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        int i2 = (configuration.orientation != 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_compress : R.layout.dlg_compress_land;
        if (this.f944h == i2) {
            return;
        }
        this.f944h = i2;
        View viewInflate = LayoutInflater.from(context).inflate(this.f944h, (ViewGroup) null, false);
        ScrollView scrollView = this.f945i;
        i.m(scrollView, viewInflate);
        ((CheckBox) viewInflate.findViewById(R.id.cb_separate)).setOnCheckedChangeListener(this);
        ((Button) viewInflate.findViewById(R.id.btn_path)).setOnClickListener(this);
        ((BtnEditText) viewInflate.findViewById(R.id.edt_name)).setOnBtnClickListener(this);
        scrollView.removeAllViews();
        scrollView.addView(viewInflate);
        z0.d dVar = this.f946j;
        if (dVar != null) {
            dVar.a();
            this.f946j = null;
        }
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        this.f943g = null;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        ScrollView scrollView = this.f945i;
        BtnEditText btnEditText = (BtnEditText) scrollView.findViewById(R.id.edt_name);
        Spinner spinner = (Spinner) scrollView.findViewById(R.id.spn_format);
        String str = this.f947k;
        if (z2) {
            int iLastIndexOf = str.lastIndexOf(47);
            String str2 = "<name>";
            if (iLastIndexOf >= 0) {
                str2 = str.substring(0, iLastIndexOf + 1) + "<name>";
            }
            btnEditText.setText(str2);
            btnEditText.setButton(R.drawable.l_help);
        } else {
            btnEditText.setText(str);
            btnEditText.setButton(0);
        }
        this.f952p = -1;
        w(null, spinner.getSelectedItemPosition());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:57:0x0127  */
    /* JADX WARN: Code duplicated, block: B:8:0x0029  */
    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        boolean z2;
        byte b2;
        int i3;
        if (i2 == -1 && this.f961b != null) {
            ScrollView scrollView = this.f945i;
            int i4 = 1;
            if (((Spinner) scrollView.findViewById(R.id.spn_format)).getSelectedItemId() != 1) {
                z2 = true;
            } else {
                EditPassword editPassword = (EditPassword) scrollView.findViewById(R.id.edt_password);
                if (editPassword.isEnabled()) {
                    String string = editPassword.getText().toString();
                    if (v0.h.e(string)) {
                        z2 = true;
                    } else if (((Spinner) scrollView.findViewById(R.id.spn_encrypt)).getSelectedItemPosition() == 0) {
                        int length = string.length();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                z2 = true;
                            } else {
                                char cCharAt = string.charAt(i5);
                                if (cCharAt < ' ' || cCharAt > 127) {
                                    ZApp.i(R.string.MES_SUPPORT_ONLY_ASCII_PWD);
                                    z2 = false;
                                } else {
                                    i5++;
                                }
                            }
                        }
                    } else if (string.length() > 128) {
                        ZApp.j("The WinZIP AES format has a password length limit of 128 characters.");
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    z2 = true;
                }
            }
            if (!z2) {
                return;
            }
            EditText editText = (EditText) scrollView.findViewById(R.id.edt_name);
            CheckBox checkBox = (CheckBox) scrollView.findViewById(R.id.cb_separate);
            CheckBox checkBox2 = (CheckBox) scrollView.findViewById(R.id.cb_deletefile);
            this.f958v = "";
            this.f959w = "";
            String string2 = ((EditText) scrollView.findViewById(R.id.edt_name)).getText().toString();
            if (!string2.isEmpty()) {
                Spinner spinner = (Spinner) scrollView.findViewById(R.id.spn_format);
                Spinner spinner2 = (Spinner) scrollView.findViewById(R.id.spn_encrypt);
                EditPassword editPassword2 = (EditPassword) scrollView.findViewById(R.id.edt_password);
                Spinner spinner3 = (Spinner) scrollView.findViewById(R.id.spn_split);
                Spinner spinner4 = (Spinner) scrollView.findViewById(R.id.spn_level);
                String strI = v0.h.i(spinner.getSelectedItem().toString());
                switch (strI) {
                    case "tar.bz2":
                        b2 = 0;
                        break;
                    case "tar.lz4":
                        b2 = 1;
                        break;
                    case "tar.gz":
                        b2 = 2;
                        break;
                    case "tar.xz":
                        b2 = 3;
                        break;
                    case "tar.zstd":
                        b2 = 4;
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                if (b2 == 0) {
                    strI = "tbz";
                } else if (b2 == 1) {
                    strI = "tlz4";
                } else if (b2 == 2) {
                    strI = "tgz";
                } else if (b2 == 3) {
                    strI = "txz";
                } else if (b2 == 4) {
                    strI = "tzstd";
                }
                this.f959w = strI;
                StringBuilder sb = new StringBuilder();
                String string3 = editPassword2.getText().toString();
                if (editPassword2.isEnabled() && !string3.isEmpty()) {
                    sb.append("\\-p");
                    sb.append(string3.replace("\\", "\\\\"));
                    if (spinner.getSelectedItemId() == 0) {
                        if (spinner2.getSelectedItemPosition() == 1) {
                            sb.append("\\-mhe");
                        }
                    } else if (spinner.getSelectedItemId() == 1) {
                        int selectedItemPosition = spinner2.getSelectedItemPosition();
                        if (selectedItemPosition == 1) {
                            sb.append("\\-mem=AES128");
                        } else if (selectedItemPosition == 2) {
                            sb.append("\\-mem=AES192");
                        } else if (selectedItemPosition == 3) {
                            sb.append("\\-mem=AES256");
                        }
                    }
                }
                int selectedItemPosition2 = spinner4.getSelectedItemPosition();
                if (selectedItemPosition2 > 0) {
                    selectedItemPosition2 = (selectedItemPosition2 * 2) - 1;
                }
                if (selectedItemPosition2 > 0 || (!strI.equals("lz4") && !strI.equals("zstd"))) {
                    i4 = selectedItemPosition2;
                }
                if (strI.equals("zstd") || strI.equals("lz4")) {
                    i4 *= 2;
                }
                if (spinner.getSelectedItemId() != 2) {
                    sb.append("\\-mx=");
                    sb.append(i4);
                }
                String str = "m";
                if (spinner.getSelectedItemId() == 0) {
                    a0.c.f(sb, i4, this.f955s);
                } else if ("xz".equals(strI) || "txz".equals(strI)) {
                    sb.append("\\-mmt=1\\-mf=off");
                    int iA = e0.b.a(32, i4);
                    if (iA > 0) {
                        sb.append("\\-md=");
                        sb.append(iA);
                        sb.append("m");
                    }
                }
                if (spinner3.isEnabled() && spinner3.getSelectedItemId() > 0) {
                    String string4 = spinner3.getSelectedItem().toString();
                    if (!string4.isEmpty()) {
                        String strTrim = string4.trim();
                        if (!strTrim.endsWith(v0.h.f2190b)) {
                            if (strTrim.endsWith(v0.h.f2191c)) {
                                str = "k";
                            } else {
                                str = strTrim.endsWith(v0.h.f2189a) ? "g" : "b";
                            }
                        }
                        String strReplaceAll = strTrim.replaceAll("\\D", "");
                        if (!strReplaceAll.isEmpty() && (i3 = Integer.parseInt(strReplaceAll)) > 0) {
                            sb.append("\\-v");
                            sb.append(i3);
                            sb.append(str);
                        }
                    }
                }
                sb.append("\\-snl\\-snh");
                this.f958v = sb.toString();
                String str2 = this.f956t;
                if (str2 != null && !string2.equals(str2)) {
                    this.f956t = null;
                }
                if (this.f943g != null) {
                    Spinner spinner5 = (Spinner) scrollView.findViewById(R.id.spn_format);
                    Spinner spinner6 = (Spinner) scrollView.findViewById(R.id.spn_level);
                    Spinner spinner7 = (Spinner) scrollView.findViewById(R.id.spn_encrypt);
                    SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.f943g.getContext()).edit();
                    editorEdit.putString("sCompressDefType", spinner5.getSelectedItem().toString());
                    editorEdit.putInt("iCompressDefLevel", spinner6.getSelectedItemPosition());
                    editorEdit.putInt("iCompressDefEncrypt", spinner7.getSelectedItemPosition());
                    editorEdit.apply();
                }
            }
            this.f951o = editText.getText().toString();
            this.f953q = checkBox2.isChecked();
            this.f954r = checkBox.isChecked();
            this.f961b.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    public final void t(Context context, String str) {
        c0.j jVar = this.f950n;
        jVar.f437b.clear();
        jVar.f438c.clear();
        jVar.a(context.getResources().getString(R.string.CMP_SPLIT_NO));
        jVar.a("5" + v0.h.f2190b);
        jVar.a("10" + v0.h.f2190b);
        jVar.a("24" + v0.h.f2190b);
        jVar.a("50" + v0.h.f2190b);
        jVar.a("100" + v0.h.f2190b);
        this.f948l = jVar.getCount();
        jVar.a(context.getResources().getString(R.string.CMP_SPLIT_OVER_SIZE));
        if (str != null) {
            jVar.a(str);
        }
        Spinner spinner = (Spinner) this.f945i.findViewById(R.id.spn_split);
        spinner.setAdapter((SpinnerAdapter) jVar);
        if (str != null) {
            spinner.setSelection(jVar.getCount() - 1);
        } else {
            spinner.setSelection(0);
        }
    }

    public final boolean u() {
        return this.f953q && !a0.c.K(this.f957u, 4);
    }

    public final void w(Context context, int i2) {
        Context context2;
        String strZ;
        String str;
        if (this.f952p == i2) {
            return;
        }
        if (context == null) {
            AlertDialog alertDialog = this.f943g;
            context2 = alertDialog != null ? alertDialog.getContext() : ZApp.f1434c;
        } else {
            context2 = context;
        }
        EditText editText = (EditText) this.f945i.findViewById(R.id.edt_name);
        Spinner spinner = (Spinner) this.f945i.findViewById(R.id.spn_format);
        Spinner spinner2 = (Spinner) this.f945i.findViewById(R.id.spn_encrypt);
        EditPassword editPassword = (EditPassword) this.f945i.findViewById(R.id.edt_password);
        Spinner spinner3 = (Spinner) this.f945i.findViewById(R.id.spn_split);
        Spinner spinner4 = (Spinner) this.f945i.findViewById(R.id.spn_level);
        if (this.f952p >= 0) {
            String string = editText.getText().toString();
            String strV = v(spinner.getItemAtPosition(this.f952p).toString());
            strZ = string.endsWith(strV) ? string.substring(0, string.length() - strV.length()) : a0.c.Z(editText.getText().toString());
        } else {
            strZ = a0.c.Z(editText.getText().toString());
        }
        if (strZ.equals(this.f947k)) {
            strZ = a0.c.Z(strZ);
        }
        String string2 = spinner.getItemAtPosition(i2).toString();
        String strV2 = v(string2);
        String strI = v0.h.i(string2);
        if ((strI.equals("xz") || strI.equals("bzip2") || strI.equals("gzip") || strI.equals("lz4") || strI.equals("zstd")) ? false : true) {
            str = strZ + strV2;
        } else if (a0.c.Z(this.f947k).equals(strZ)) {
            str = this.f947k + strV2;
        } else {
            str = strZ + strV2;
        }
        editText.setText(str);
        spinner2.setEnabled(i2 <= 1);
        if (i2 <= 1) {
            ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(context2, i2 == 0 ? R.array.CMP_LIST_ENCRYPT_7Z : R.array.CMP_LIST_ENCRYPT_ZIP, android.R.layout.simple_spinner_item);
            arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            spinner2.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        }
        editPassword.setEnabled(i2 <= 1);
        spinner3.setEnabled(i2 <= 1);
        spinner4.setEnabled(i2 != 2);
        c0.j jVar = this.f949m;
        int i3 = 3;
        if (jVar != null) {
            ArrayList arrayList = jVar.f438c;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                arrayList.set(i4, Boolean.TRUE);
            }
            String strI2 = v0.h.i(string2);
            if (strI2.equals("lz4")) {
                jVar.b(0);
            }
            boolean z2 = strI2.equals("xz") || strI2.equals("tar.xz");
            if ((z2 || strI2.equals("7z")) && !t0.b.f(1)) {
                int iF = e0.b.f(z2);
                if (iF < 9) {
                    jVar.b(5);
                }
                if (iF < 7) {
                    jVar.b(4);
                }
                if (iF < 5) {
                    jVar.b(3);
                }
                if (iF < 3) {
                    jVar.b(2);
                }
            }
        }
        try {
            if (i2 == 0) {
                i3 = (t0.b.f2085f & 61440) >> 12;
            } else if (i2 == 1) {
                i3 = (t0.b.f2085f & 983040) >> 16;
            }
            spinner4.setSelection((i3 + 1) / 2);
        } catch (Exception unused) {
        }
        this.f952p = i2;
    }

    @Override
    public final void onClick(View view) {
        if (this.f943g == null || view == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.btn_path) {
            p pVar = new p(this.f965f, this.f943g.getContext());
            boolean zJ = t0.b.j();
            if (pVar.f1020g != null) {
                ((FSSelect) pVar.f1022i.findViewById(R.id.fss_file_list)).setRootSupport(zJ);
            }
            pVar.f962c = this.f962c;
            pVar.f961b = this;
            pVar.z();
            return;
        }
        if (id == R.id.edt_name) {
            try {
                Context context = this.f943g.getContext();
                z0.d dVar = new z0.d(context, view, 80, context.getString(R.string.HELP_ARCHIVE_NAME), 0, 0);
                this.f946j = dVar;
                dVar.f2343f.showAtLocation(view, 80, 0, 0);
                dVar.f2342e.getViewTreeObserver().addOnPreDrawListener(dVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
