package com.transsion.playercommon.fragments;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.playercommon.R;
import com.transsion.playercommon.fragments.AlertDialogFragment;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import java.lang.ref.WeakReference;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class AlertDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {
    public static boolean r = false;
    public DialogInterface.OnClickListener l;
    public c n;
    public int p;
    public d q;
    public DialogInterface.OnDismissListener m = null;
    public boolean o = false;

    public static class ChoiceDialogFragment extends AlertDialogFragment {
        public int s;
        public int t;
        public DialogInterface.OnClickListener u = null;

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogInterface.OnClickListener onClickListener = this.u;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }

        @Override
        public Dialog onCreateDialog(Bundle bundle) {
            Log.d("ChoiceDialogFragment", "Show alertSortDialog");
            com.transsion.widgetslib.dialog.d.a aVarW = w(bundle);
            if (bundle == null) {
                bundle = getArguments();
            } else {
                dismissAllowingStateLoss();
            }
            if (bundle != null) {
                this.t = bundle.getInt("defaultChoice");
                this.s = bundle.getInt("arrayId");
            }
            aVarW.y(this.s, this.t, this);
            com.transsion.widgetslib.dialog.d dVarA = aVarW.a();
            dVarA.getWindow().setGravity(80);
            return dVarA;
        }

        public void setItemClickListener(DialogInterface.OnClickListener onClickListener) {
            this.u = onClickListener;
        }
    }

    public static class PlayListDialogFragment extends AlertDialogFragment {
        @Override
        public Dialog onCreateDialog(Bundle bundle) {
            Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
            if (dialogOnCreateDialog.getWindow() != null) {
                dialogOnCreateDialog.getWindow().getAttributes().windowAnimations = R.style.dialog_anim_style;
            }
            return dialogOnCreateDialog;
        }
    }

    public static class RenameDialogFragment extends AlertDialogFragment {
        public String s;
        public String t;
        public String u;
        public d v;
        public InputDialog w;

        public class a implements InputDialog.f {
            public a() {
            }

            @Override
            public void a(EditText editText, TextView textView) {
            }
        }

        public class b implements InputDialog.g {
            public b() {
            }

            @Override
            public void a(String str) {
                if (RenameDialogFragment.this.v != null) {
                    RenameDialogFragment.this.v.a(str);
                }
            }
        }

        public class c implements TextWatcher {
            public c() {
            }

            @Override
            public void afterTextChanged(Editable editable) {
                RenameDialogFragment.this.u = editable.toString().trim();
                RenameDialogFragment.this.J(true);
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        }

        public interface d {
            void a(String str);
        }

        public final void J(boolean z) {
            InputDialog inputDialog = this.w;
            if (inputDialog != null) {
                Button buttonO = inputDialog.o(-1);
                String str = this.s;
                if (str != null && str.equals(this.u)) {
                    if (buttonO != null) {
                        buttonO.setEnabled(false);
                        return;
                    }
                    return;
                }
                String str2 = this.u;
                if (str2.length() > 0 && str2.trim().length() > 0 && !str2.startsWith(Consts.DOT) && !str2.matches(".*[/\\\\:*?\"<>|\t].*") && !Consts.DOT.equals(str2) && !FileTree.PARENT_DIR.equals(str2) && !str2.endsWith(Consts.DOT)) {
                    if (buttonO != null) {
                        buttonO.setEnabled(true);
                        return;
                    }
                    return;
                }
                if (z && str2.matches(".*[/\\\\:*?\"<>|\t].*") && str2.length() != 0) {
                    ToastUtils.s(R.string.invalid_char_prompt);
                }
                if (buttonO != null) {
                    buttonO.setEnabled(false);
                }
            }
        }

        public final void K(EditText editText) {
            editText.setSelection(editText.getText().length());
            editText.addTextChangedListener(new c());
        }

        public final void L(DialogInterface dialogInterface, int i) {
            dismiss();
        }

        public void M(d dVar) {
            this.v = dVar;
        }

        @Override
        public Dialog onCreateDialog(Bundle bundle) {
            if (bundle == null) {
                bundle = getArguments();
            } else {
                dismissAllowingStateLoss();
            }
            if (bundle != null) {
                this.s = bundle.getString("default_name");
                this.t = bundle.getString("default_hint");
                this.u = this.s;
            }
            InputDialog inputDialog = new InputDialog(getContext());
            this.w = inputDialog;
            String str = this.s;
            if (str == null) {
                str = "";
            }
            String str2 = this.t;
            if (str2 == null) {
                str2 = "";
            }
            inputDialog.v(str, str2, 61, new a());
            InputDialog inputDialogA = this.w.A(R.string.rename);
            String str3 = this.s;
            if (str3 == null) {
                str3 = "";
            }
            String str4 = this.t;
            inputDialogA.u(str3, str4 != null ? str4 : "", new InputDialog.e() {
                @Override
                public final void a(EditText editText) {
                    this.a.K(editText);
                }
            }).s(R.string.Save, new b()).x(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.b.L(dialogInterface, i);
                }
            });
            this.w.z(true);
            com.transsion.widgetslib.dialog.d dVarM = this.w.m();
            if (com.transsion.utils.a.A()) {
                return dVarM;
            }
            dVarM.getWindow().setGravity(81);
            return dVarM;
        }

        @Override
        public void onResume() {
            super.onResume();
            InputDialog inputDialog = this.w;
            if (inputDialog != null) {
                if (!inputDialog.getmEditText().hasFocus()) {
                    this.w.getmEditText().requestFocus();
                }
                J(false);
            }
        }

        @Override
        public void onSaveInstanceState(Bundle bundle) {
            InputDialog inputDialog = this.w;
            if (inputDialog != null && inputDialog.getmEditText() != null) {
                bundle.putString("STORE_STRING", this.w.getmEditText().getText().toString());
            }
            getArguments().putString("default_name", this.s);
            getArguments().putString("default_hint", this.t);
            super.onSaveInstanceState(bundle);
        }
    }

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
        }
    }

    public static class b {
        public final Bundle a = new Bundle();

        public AlertDialogFragment a() {
            AlertDialogFragment alertDialogFragment = new AlertDialogFragment();
            alertDialogFragment.setArguments(this.a);
            return alertDialogFragment;
        }

        public b b(int i) {
            this.a.putInt("positiveTitle", i);
            return this;
        }

        public b c(int i) {
            this.a.putInt(TtmlNode.TAG_LAYOUT, i);
            return this;
        }

        public b d(int i) {
            this.a.putInt("title", i);
            return this;
        }
    }

    public interface c {
        void onDialogDismiss();
    }

    public interface d {
        void a();
    }

    public static class e extends b {
        @Override
        public RenameDialogFragment a() {
            AlertDialogFragment.r = false;
            RenameDialogFragment renameDialogFragment = new RenameDialogFragment();
            renameDialogFragment.setArguments(this.a);
            return renameDialogFragment;
        }

        public e f(String str, String str2) {
            this.a.putString("default_name", str);
            this.a.putString("default_hint", str2);
            return this;
        }
    }

    public static boolean D(boolean z, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        return !z && i == 4 && keyEvent.getAction() == 0;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        DialogInterface.OnClickListener onClickListener = this.l;
        if (onClickListener != null) {
            onClickListener.onClick(dialogInterface, i);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = this.p;
        int i2 = configuration.uiMode;
        if (i != i2) {
            this.p = i2;
        }
        if (!com.transsion.utils.a.A() || getDialog() == null) {
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        com.transsion.widgetslib.dialog.d.a aVarW = w(bundle);
        if (bundle != null) {
            dismissAllowingStateLoss();
        }
        com.transsion.widgetslib.dialog.d dVarA = aVarW.a();
        if (dVarA.getWindow() == null || com.transsion.utils.a.A()) {
            return dVarA;
        }
        dVarA.getWindow().setGravity(81);
        return dVarA;
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        DialogInterface.OnDismissListener onDismissListener = this.m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
        c cVar = this.n;
        if (cVar != null) {
            cVar.onDialogDismiss();
        }
        super.onDismiss(dialogInterface);
    }

    @Override
    public void onResume() {
        super.onResume();
        d dVar = this.q;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putAll(getArguments());
        super.onSaveInstanceState(bundle);
    }

    public void setDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    public void setOnDialogDismissListener(c cVar) {
        this.n = cVar;
    }

    public void setOnDoneListener(DialogInterface.OnClickListener onClickListener) {
        this.l = onClickListener;
    }

    public void setOnResumeListener(d dVar) {
        this.q = dVar;
    }

    @Override
    public void show(FragmentManager fragmentManager, String str) {
        try {
            super.show(fragmentManager, str);
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            if (this.n != null) {
                this.n.onDialogDismiss();
            }
        }
    }

    public com.transsion.widgetslib.dialog.d.a w(Bundle bundle) {
        if (bundle == null) {
            bundle = getArguments();
        }
        WeakReference weakReference = new WeakReference(getActivity());
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a((Context) weakReference.get());
        if (bundle != null) {
            int i = bundle.getInt("dialog_style", -1);
            if (i != -1) {
                aVar = new com.transsion.widgetslib.dialog.d.a((Context) weakReference.get(), i);
            }
            int i2 = bundle.getInt("title", -1);
            if (i2 != -1) {
                aVar.A(i2);
            }
            int i3 = bundle.getInt("message", -1);
            int i4 = bundle.getInt(TtmlNode.TAG_LAYOUT, -1);
            if (i4 != -1) {
                aVar.E(getActivity().getLayoutInflater().inflate(i4, (ViewGroup) null));
            } else if (i3 != -1) {
                aVar.j(i3);
            }
            int i5 = bundle.getInt("negativeTitle", -1);
            if (i5 != -1) {
                aVar.m(i5, new a());
            }
            boolean z = bundle.getBoolean("DIALOG_TYPE_DELETE", false);
            int i6 = bundle.getInt("positiveTitle", -1);
            if (i6 != -1) {
                aVar.v(i6, z, this);
            }
            if (z) {
                this.o = true;
            }
            aVar.f(bundle.getBoolean("canceledOnTouchOutside", true));
            aVar.e(bundle.getBoolean("cancelable", true));
            final boolean z2 = bundle.getBoolean("canceledBackCode", true);
            aVar.t(new DialogInterface.OnKeyListener() {
                @Override
                public final boolean onKey(DialogInterface dialogInterface, int i7, KeyEvent keyEvent) {
                    return AlertDialogFragment.D(z2, dialogInterface, i7, keyEvent);
                }
            });
        }
        return aVar;
    }
}
