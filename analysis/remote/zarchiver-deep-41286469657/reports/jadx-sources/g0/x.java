package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Locale;
import ru.zdevs.zarchiver.R;

public final class x extends i implements DialogInterface.OnClickListener, CompoundButton.OnCheckedChangeListener {

    public static final int[] f1058m;

    public static final int[] f1059n;

    public static final int[] f1060o;

    public static final int[][] f1061p;

    public AlertDialog f1062g;

    public final h0.h[] f1063h;

    public final String[] f1064i;

    public boolean f1065j;

    public c f1066k;

    public c f1067l;

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public final void afterTextChanged(Editable editable) {
        }

        @Override
        public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override
        public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            x.t(x.this);
        }
    }

    public class b implements DialogInterface.OnShowListener {
        public b() {
        }

        @Override
        public final void onShow(DialogInterface dialogInterface) {
            x xVar = x.this;
            i.i(xVar.f1062g);
            xVar.f1065j = true;
            x.t(xVar);
        }
    }

    public static class c {

        public int f1070a = 0;

        public int f1071b = 0;

        public int f1072c = -1;

        public int f1073d = -1;
    }

    static {
        int[] iArr = {R.id.cbUserX, R.id.cbUserW, R.id.cbUserR};
        f1058m = iArr;
        int[] iArr2 = {R.id.cbGroupX, R.id.cbGroupW, R.id.cbGroupR};
        f1059n = iArr2;
        int[] iArr3 = {R.id.cbOtherX, R.id.cbOtherW, R.id.cbOtherR};
        f1060o = iArr3;
        f1061p = new int[][]{iArr, iArr2, iArr3};
    }

    public x(ru.zdevs.zarchiver.d dVar, Context context, h0.h hVar, String[] strArr) {
        this.f965f = dVar;
        this.f1063h = new h0.h[]{hVar};
        this.f1064i = (String[]) strArr.clone();
        w();
        u(context);
        c();
    }

    public static void t(x xVar) {
        if (xVar.f1062g == null || !xVar.f1065j) {
            return;
        }
        xVar.f1065j = false;
        int[] iArr = f1058m;
        for (int i2 = 0; i2 < 3; i2++) {
            ((CheckBox) xVar.f1062g.findViewById(iArr[i2])).setChecked(false);
        }
        int[] iArr2 = f1059n;
        for (int i3 = 0; i3 < 3; i3++) {
            ((CheckBox) xVar.f1062g.findViewById(iArr2[i3])).setChecked(false);
        }
        int[] iArr3 = f1060o;
        for (int i4 = 0; i4 < 3; i4++) {
            ((CheckBox) xVar.f1062g.findViewById(iArr3[i4])).setChecked(false);
        }
        EditText editText = (EditText) xVar.f1062g.findViewById(R.id.etPermissions);
        String string = editText.getText().toString();
        if (string.contains("8") || string.contains("9")) {
            int selectionStart = editText.getSelectionStart();
            string = string.replace('8', '7').replace('9', '7');
            editText.setText(string);
            editText.setSelection(selectionStart, selectionStart);
        }
        try {
            int i5 = Integer.parseInt(string);
            for (int i6 = 0; i6 < 3; i6++) {
                int i7 = i5 % 10;
                i5 /= 10;
                int i8 = 0;
                for (int i9 = 1; i9 <= 4; i9 <<= 1) {
                    if ((i7 & i9) == i9) {
                        ((CheckBox) xVar.f1062g.findViewById(f1061p[2 - i6][i8])).setChecked(true);
                    }
                    i8++;
                }
            }
            xVar.x();
            xVar.f1065j = true;
        } catch (Exception unused) {
            xVar.f1065j = true;
        }
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f1062g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f1062g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 16;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        if (this.f1062g == null || !this.f1065j) {
            return;
        }
        this.f1065j = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= 3) {
                ((EditText) this.f1062g.findViewById(R.id.etPermissions)).setText(String.format(Locale.getDefault(), "%1$03d", Integer.valueOf(i3)));
                x();
                this.f1065j = true;
                return;
            }
            int i4 = 0;
            for (int i5 = 1; i5 <= 4; i5 <<= 1) {
                if (((CheckBox) this.f1062g.findViewById(f1061p[i2][i4])).isChecked()) {
                    i3 += i5;
                }
                i4++;
            }
            if (i2 != 2) {
                i3 *= 10;
            }
            i2++;
        }
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        i.d dVar;
        AlertDialog alertDialog = this.f1062g;
        if (alertDialog != null) {
            try {
                this.f1066k.f1071b = Integer.parseInt(((EditText) alertDialog.findViewById(R.id.etPermissions)).getText().toString());
            } catch (Exception unused) {
            }
            try {
                this.f1066k.f1072c = Integer.parseInt(((EditText) this.f1062g.findViewById(R.id.etUid)).getText().toString());
            } catch (Exception unused2) {
            }
            try {
                this.f1066k.f1073d = Integer.parseInt(((EditText) this.f1062g.findViewById(R.id.etGid)).getText().toString());
            } catch (Exception unused3) {
            }
        }
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    public final void u(Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.SPD_TTL_PERMISSIONS);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_permissions, (ViewGroup) null, false);
        builder.setView(viewInflate);
        int[] iArr = f1058m;
        for (int i2 = 0; i2 < 3; i2++) {
            ((CheckBox) viewInflate.findViewById(iArr[i2])).setOnCheckedChangeListener(this);
        }
        int[] iArr2 = f1059n;
        for (int i3 = 0; i3 < 3; i3++) {
            ((CheckBox) viewInflate.findViewById(iArr2[i3])).setOnCheckedChangeListener(this);
        }
        int[] iArr3 = f1060o;
        for (int i4 = 0; i4 < 3; i4++) {
            ((CheckBox) viewInflate.findViewById(iArr3[i4])).setOnCheckedChangeListener(this);
        }
        EditText editText = (EditText) viewInflate.findViewById(R.id.etPermissions);
        editText.setText(String.format(Locale.getDefault(), "%1$03d", Integer.valueOf(this.f1066k.f1071b)));
        editText.addTextChangedListener(new a());
        ((EditText) viewInflate.findViewById(R.id.etUid)).setText(String.format(Locale.getDefault(), "%1$d", Integer.valueOf(this.f1066k.f1072c)));
        ((EditText) viewInflate.findViewById(R.id.etGid)).setText(String.format(Locale.getDefault(), "%1$d", Integer.valueOf(this.f1066k.f1073d)));
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvFileName);
        String[] strArr = this.f1064i;
        if (strArr.length == 1) {
            textView.setText(strArr[0]);
        } else {
            textView.setText(context.getResources().getQuantityString(R.plurals.FINFO_FILE_COUNT, strArr.length, Integer.valueOf(strArr.length)));
        }
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f1062g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f1062g.setOnShowListener(new b());
    }

    public final c v() {
        c cVar = this.f1066k;
        cVar.f1070a = 0;
        int i2 = cVar.f1071b;
        c cVar2 = this.f1067l;
        if (i2 != cVar2.f1071b) {
            cVar.f1070a = 0 | 1;
        }
        if (cVar.f1073d != cVar2.f1073d || cVar.f1072c != cVar2.f1072c) {
            cVar.f1070a |= 2;
        }
        return cVar;
    }

    public final void w() {
        h0.e.b bVarM;
        this.f1066k = new c();
        this.f1067l = new c();
        o0.a aVarC = null;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.f1064i;
            if (i2 >= strArr.length) {
                break;
            }
            h0.h[] hVarArr = this.f1063h;
            int i4 = 1;
            h0.h hVar = hVarArr.length > 1 ? new h0.h(strArr[i2], hVarArr[i2]) : new h0.h(strArr[i2], hVarArr[0]);
            if (aVarC != null) {
                bVarM = j0.c.m(aVarC, hVar.toFile());
            } else {
                if (t0.b.i(hVar.f1108c)) {
                    aVarC = o0.a.c(t0.b.f2092m);
                    bVarM = j0.c.m(aVarC, hVar.toFile());
                }
                i2++;
            }
            if (bVarM != null) {
                int iI0 = a0.c.i0(-1, bVarM.f1095h);
                c cVar = this.f1066k;
                int i5 = cVar.f1072c;
                if (i5 == -1 || i5 > iI0) {
                    cVar.f1072c = iI0;
                }
                int iI1 = a0.c.i0(-1, bVarM.f1094g);
                c cVar2 = this.f1066k;
                int i6 = cVar2.f1073d;
                if (i6 == -1 || i6 > iI1) {
                    cVar2.f1073d = iI1;
                }
                int i7 = 10;
                for (int i8 = 0; i8 < 3; i8++) {
                    int i9 = (i3 % i7) / i4;
                    int i10 = (bVarM.f1096i % i7) / i4;
                    if (i9 < i10) {
                        i3 = (i3 - (i9 * i4)) + (i10 * i4);
                    }
                    i4 *= 10;
                    i7 *= 10;
                }
            }
            i2++;
        }
        c cVar3 = this.f1066k;
        cVar3.f1071b = i3;
        c cVar4 = this.f1067l;
        cVar4.getClass();
        cVar4.f1071b = cVar3.f1071b;
        cVar4.f1072c = cVar3.f1072c;
        cVar4.f1073d = cVar3.f1073d;
        if (aVarC != null) {
            aVarC.close();
        }
    }

    public final void x() {
        int i2;
        AlertDialog alertDialog = this.f1062g;
        if (alertDialog == null) {
            return;
        }
        try {
            i2 = Integer.parseInt(((EditText) alertDialog.findViewById(R.id.etPermissions)).getText().toString());
        } catch (Exception unused) {
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = i2 % 10;
            i2 /= 10;
            if ((i4 & 1) == 1) {
                sb.insert(0, 'x');
            } else {
                sb.insert(0, '-');
            }
            if ((i4 & 2) == 2) {
                sb.insert(0, 'w');
            } else {
                sb.insert(0, '-');
            }
            if ((i4 & 4) == 4) {
                sb.insert(0, 'r');
            } else {
                sb.insert(0, '-');
            }
            sb.insert(0, ' ');
        }
        TextView textView = (TextView) this.f1062g.findViewById(R.id.tvPermissionsText);
        if (textView != null) {
            textView.setText(sb.toString());
        }
    }

    public x(ru.zdevs.zarchiver.d dVar, Context context, h0.h[] hVarArr, String[] strArr) {
        this.f965f = dVar;
        this.f1063h = (h0.h[]) hVarArr.clone();
        this.f1064i = (String[]) strArr.clone();
        w();
        u(context);
        c();
    }
}
