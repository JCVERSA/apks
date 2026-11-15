package com.transsion.xuanniao.account.center.view;

import OppOOO.OppOp0O;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.widget.AccountIdInput;
import com.transsion.xuanniao.account.comm.widget.FormatView;
import defpackage.fq7;
import defpackage.oia;
import defpackage.rm7;
import defpackage.xj;
import java.util.ArrayList;

public class a {
    public com.transsion.widgetslib.dialog.d a;
    public AccountIdInput b;
    public e c;
    public Button d;
    public FormatView e;
    public String f;
    public String g;

    public class DialogInterfaceOnClickListenerC0276a implements DialogInterface.OnClickListener {
        public final Context b;

        public DialogInterfaceOnClickListenerC0276a(a aVar, Context context) {
            this.b = context;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            xj.U(this.b).x0("cancel");
        }
    }

    public class b implements DialogInterface.OnShowListener {
        public b() {
        }

        @Override
        public void onShow(DialogInterface dialogInterface) {
            a.this.b.getEdit().requestFocus();
        }
    }

    public class c extends rm7 {
        public final Context d;

        public c(Context context) {
            this.d = context;
        }

        @Override
        public void b(View view) {
            xj.U(this.d).x0("confirm");
            a aVar = a.this;
            e eVar = aVar.c;
            if (eVar != null) {
                String text = aVar.b.getText();
                n nVar = (n) eVar;
                a aVar2 = nVar.a.g;
                com.transsion.widgetslib.dialog.d dVar = aVar2.a;
                if (dVar != null && dVar.isShowing()) {
                    aVar2.a.dismiss();
                }
                nVar.a.f.f = text;
                oia.b(new OppOp0O(nVar), 200L);
            }
        }
    }

    public class d implements TextWatcher {
        public d() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            boolean z = false;
            if (a.this.b.getText().equals(a.this.f)) {
                a.this.e.setError(0);
                a.this.d.setEnabled(false);
                return;
            }
            String text = a.this.b.getText();
            int iA = fq7.a(text);
            a.this.e.setError(iA);
            a aVar = a.this;
            Button button = aVar.d;
            if (iA == -1 && !TextUtils.equals(text, aVar.g)) {
                z = true;
            }
            button.setEnabled(z);
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

    public void a(Context context, String str) {
        this.g = str;
        com.transsion.widgetslib.dialog.d dVar = this.a;
        if (dVar != null) {
            if (dVar.isShowing()) {
                return;
            }
            this.a.show();
            return;
        }
        com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(context, R.style.AccountIdDialogTheme).D(R.layout.xn_edit_account_id).B(context.getString(R.string.xn_modify_account_id)).w(context.getString(R.string.xn_confirm), null).n(context.getString(R.string.xn_cancel), new DialogInterfaceOnClickListenerC0276a(this, context)).a();
        this.a = dVarA;
        dVarA.setOnShowListener(new b());
        this.a.show();
        this.d = this.a.e(-1);
        this.b = (AccountIdInput) this.a.findViewById(R.id.accountIdInput);
        this.e = (FormatView) this.a.findViewById(R.id.formatView);
        this.b.OppO00p.addTextChangedListener(new d());
        FormatView formatView = this.e;
        ArrayList<String> arrayList = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        int i = R.string.xn_don;
        sb.append(context.getString(i));
        sb.append(context.getString(R.string.xn_account_id_format_list_1));
        arrayList.add(sb.toString());
        arrayList.add(context.getString(i) + context.getString(R.string.xn_account_id_format_list_2));
        arrayList.add(context.getString(i) + context.getString(R.string.xn_account_id_format_list_3));
        arrayList.add(context.getString(i) + context.getString(R.string.xn_account_id_format_list_4));
        arrayList.add(context.getString(i) + context.getString(R.string.xn_account_id_format_list_5));
        formatView.setFormats(arrayList);
        this.e.setTextStyle(R.style.font_black_14_t65);
        this.e.setTextStyleError(R.style.font_error_14);
        this.b.setText(str);
        this.e.setError(fq7.a(str));
        this.d.setEnabled(false);
        ((TextView) this.a.findViewById(R.id.note)).setText(context.getString(R.string.xn_account_note_1));
        this.d.setOnClickListener(new c(context));
    }
}
