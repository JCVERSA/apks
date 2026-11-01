package app.fast.ssh.dialog;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.app.AlertDialog;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.hatunnel.plus.R;

public class PayloadGen {
    private final GeneratorListener generatorListener;
    private LinearLayout generator_view;
    private final Context mContext;
    private final AlertDialog mDialog;
    private SharedPreferences mSharedPrefs;
    private LinearLayout post_generator_view;
    private final View view;

    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onClick(View view) {
            PayloadGen.access$000(PayloadGen.this);
        }
    }

    class AnonymousClass2 implements CompoundButton.OnCheckedChangeListener {
        final CheckBox[] val$connection;

        AnonymousClass2(CheckBox[] checkBoxArr) {
            this.val$connection = checkBoxArr;
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.val$connection[1].setChecked(false);
            }
        }
    }

    class AnonymousClass3 implements CompoundButton.OnCheckedChangeListener {
        final CheckBox[] val$connection;

        AnonymousClass3(CheckBox[] checkBoxArr) {
            this.val$connection = checkBoxArr;
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.val$connection[0].setChecked(false);
            }
        }
    }

    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override
        public void onClick(View view) {
            PayloadGen.access$100(PayloadGen.this).setVisibility(0);
            PayloadGen.access$200(PayloadGen.this).setVisibility(8);
            PayloadGen.access$300(PayloadGen.this, false);
        }
    }

    class AnonymousClass5 implements View.OnClickListener {
        final TextInputEditText val$payload;

        AnonymousClass5(TextInputEditText textInputEditText) {
            this.val$payload = textInputEditText;
        }

        @Override
        public void onClick(View view) {
            ((ClipboardManager) PayloadGen.access$400(PayloadGen.this).getSystemService(ProtectedFastSSH.s("ㅖ"))).setPrimaryClip(ClipData.newPlainText("", this.val$payload.getText().toString()));
            Snackbar.make(PayloadGen.access$500(PayloadGen.this), ProtectedFastSSH.s("ㅗ"), -1).show();
        }
    }

    class AnonymousClass6 implements View.OnClickListener {
        final TextInputEditText val$payload;

        AnonymousClass6(TextInputEditText textInputEditText) {
            this.val$payload = textInputEditText;
        }

        @Override
        public void onClick(View view) {
            PayloadGen.access$600(PayloadGen.this).onGenerated(this.val$payload.getText().toString());
            PayloadGen.access$700(PayloadGen.this).dismiss();
        }
    }

    class AnonymousClass7 implements CompoundButton.OnCheckedChangeListener {
        final CheckBox val$back_query;

        AnonymousClass7(CheckBox checkBox) {
            this.val$back_query = checkBox;
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z && this.val$back_query.isChecked()) {
                this.val$back_query.setChecked(false);
            }
        }
    }

    class AnonymousClass8 implements CompoundButton.OnCheckedChangeListener {
        final CheckBox val$front_query;

        AnonymousClass8(CheckBox checkBox) {
            this.val$front_query = checkBox;
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z && this.val$front_query.isChecked()) {
                this.val$front_query.setChecked(false);
            }
        }
    }

    public interface GeneratorListener {
        void onGenerated(String str);
    }

    public PayloadGen(Context context, GeneratorListener generatorListener) {
        this.mContext = context;
        this.generatorListener = generatorListener;
        this.mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.l_res_0x7f0c008b, (ViewGroup) null);
        this.view = viewInflate;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        this.generator_view = (LinearLayout) viewInflate.findViewById(R.id.l_res_0x7f09010a);
        this.post_generator_view = (LinearLayout) viewInflate.findViewById(R.id.l_res_0x7f0901e7);
        ((MaterialButton) viewInflate.findViewById(R.id.l_res_0x7f090108)).setOnClickListener(new AnonymousClass1());
        CheckBox[] checkBoxArr = {(CheckBox) viewInflate.findViewById(R.id.l_res_0x7f09011b), (CheckBox) viewInflate.findViewById(R.id.l_res_0x7f09011f)};
        checkBoxArr[0].setOnCheckedChangeListener(new AnonymousClass2(checkBoxArr));
        checkBoxArr[1].setOnCheckedChangeListener(new AnonymousClass3(checkBoxArr));
        builder.setNeutralButton(ProtectedFastSSH.s("ㅘ"), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(ProtectedFastSSH.s("ㅙ"), (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(ProtectedFastSSH.s("ㅚ"), (DialogInterface.OnClickListener) null);
        builder.setView(viewInflate);
        AlertDialog alertDialogCreate = builder.create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        ((EditText) viewInflate.findViewById(R.id.l_res_0x7f09029a)).setText(this.mSharedPrefs.getString(ProtectedFastSSH.s("ㅛ"), ProtectedFastSSH.s("ㅜ")));
    }

    static void access$000(PayloadGen payloadGen) {
        payloadGen.generate();
    }

    static LinearLayout access$100(PayloadGen payloadGen) {
        return payloadGen.generator_view;
    }

    static LinearLayout access$200(PayloadGen payloadGen) {
        return payloadGen.post_generator_view;
    }

    static void access$300(PayloadGen payloadGen, boolean z) {
        payloadGen.showButtons(z);
    }

    static Context access$400(PayloadGen payloadGen) {
        return payloadGen.mContext;
    }

    static View access$500(PayloadGen payloadGen) {
        return payloadGen.view;
    }

    static GeneratorListener access$600(PayloadGen payloadGen) {
        return payloadGen.generatorListener;
    }

    static AlertDialog access$700(PayloadGen payloadGen) {
        return payloadGen.mDialog;
    }

    private void generate() {
        TextInputLayout textInputLayout = (TextInputLayout) this.view.findViewById(R.id.l_res_0x7f09029b);
        TextInputEditText textInputEditText = (TextInputEditText) this.view.findViewById(R.id.l_res_0x7f09029a);
        this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("ㅛ"), textInputEditText.getText().toString()).apply();
        TextInputEditText textInputEditText2 = (TextInputEditText) this.view.findViewById(R.id.l_res_0x7f0901dd);
        Spinner spinner = (Spinner) this.view.findViewById(R.id.l_res_0x7f09016f);
        Spinner spinner2 = (Spinner) this.view.findViewById(R.id.http_version);
        CheckBox checkBox = (CheckBox) this.view.findViewById(R.id.l_res_0x7f090105);
        CheckBox checkBox2 = (CheckBox) this.view.findViewById(R.id.l_res_0x7f090067);
        CheckBox[] checkBoxArr = {(CheckBox) this.view.findViewById(R.id.l_res_0x7f09011b), (CheckBox) this.view.findViewById(R.id.l_res_0x7f09011f)};
        if (textInputEditText.getText().toString().matches("")) {
            textInputLayout.setError(ProtectedFastSSH.s("ㅝ"));
            return;
        }
        textInputLayout.setError(null);
        CheckBox[] checkBoxArr2 = {(CheckBox) this.view.findViewById(R.id.l_res_0x7f09011c), (CheckBox) this.view.findViewById(R.id.l_res_0x7f09011d), (CheckBox) this.view.findViewById(R.id.l_res_0x7f09011e), (CheckBox) this.view.findViewById(R.id.l_res_0x7f090120), (CheckBox) this.view.findViewById(R.id.l_res_0x7f090121)};
        String property = System.getProperty(ProtectedFastSSH.s("ㅞ"));
        if (property == null) {
            property = ProtectedFastSSH.s("ㅟ");
        }
        String string = textInputEditText.getText().toString();
        String[] strArr = {ProtectedFastSSH.s("ㅠ") + property, ProtectedFastSSH.s("ㅡ") + string, ProtectedFastSSH.s("ㅢ") + string, ProtectedFastSSH.s("ㅣ") + string, ProtectedFastSSH.s("ㅤ") + string};
        checkBox.setOnCheckedChangeListener(new AnonymousClass7(checkBox2));
        checkBox2.setOnCheckedChangeListener(new AnonymousClass8(checkBox));
        StringBuilder sb = new StringBuilder();
        Object selectedItem = spinner.getSelectedItem();
        String strS = ProtectedFastSSH.s("ㅥ");
        if (!selectedItem.equals(strS)) {
            sb.append(String.format(ProtectedFastSSH.s("ㅦ"), spinner.getSelectedItem(), textInputEditText.getText().toString()));
        }
        sb.append(spinner2.getSelectedItem());
        sb.append(ProtectedFastSSH.s("ㅧ"));
        sb.append(string);
        String strS2 = ProtectedFastSSH.s("ㅨ");
        sb.append(strS2);
        if (checkBoxArr[0].isChecked() || checkBoxArr[1].isChecked()) {
            sb.append(ProtectedFastSSH.s("ㅩ"));
            sb.append(checkBoxArr[0].isChecked() ? ProtectedFastSSH.s("ㅪ") : ProtectedFastSSH.s("ㅫ"));
            sb.append(strS2);
        }
        for (int i = 0; i < 5; i++) {
            if (checkBoxArr2[i].isChecked()) {
                sb.append(strArr[i]);
                sb.append(strS2);
            }
        }
        sb.append(strS2);
        if (spinner.getSelectedItem().equals(strS)) {
            sb.append(ProtectedFastSSH.s("ㅬ"));
        }
        textInputEditText2.setText(sb.toString());
        this.generator_view.setVisibility(8);
        this.post_generator_view.setVisibility(0);
        showButtons(true);
    }

    private void showButtons(boolean z) {
        int i = z ? 0 : 8;
        this.mDialog.getButton(-3).setVisibility(i);
        this.mDialog.getButton(-2).setVisibility(i);
        this.mDialog.getButton(-1).setVisibility(i);
    }

    public void show() {
        this.mDialog.show();
        TextInputEditText textInputEditText = (TextInputEditText) this.view.findViewById(R.id.l_res_0x7f0901dd);
        this.mDialog.getButton(-3).setOnClickListener(new AnonymousClass4());
        this.mDialog.getButton(-2).setOnClickListener(new AnonymousClass5(textInputEditText));
        this.mDialog.getButton(-1).setOnClickListener(new AnonymousClass6(textInputEditText));
        showButtons(false);
    }
}
