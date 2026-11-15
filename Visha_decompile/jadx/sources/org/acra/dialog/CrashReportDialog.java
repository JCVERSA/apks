package org.acra.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.og9;
import defpackage.ue1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.DialogConfiguration;
import org.acra.dialog.CrashReportDialog;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001>B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\n\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u0019\u0010\u0012J\u0019\u0010\u001b\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u001b\u0010\u0018J\u001f\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0005H\u0015¢\u0006\u0004\b#\u0010\tJ\u000f\u0010$\u001a\u00020\u001eH\u0014¢\u0006\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020&8\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b\u000f\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b\n\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0016\u0010/\u001a\u00020-8\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b\f\u0010.R\u0016\u00102\u001a\u0002008\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b\u0013\u00101R\u0016\u00105\u001a\u0002038\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b\u0017\u00104R\u0016\u00108\u001a\u00020\u001e8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b6\u00107R\"\u0010\u001d\u001a\u0002098\u0014@\u0014X\u0094.¢\u0006\u0012\n\u0004\b\u0019\u0010:\u001a\u0004\b6\u0010;\"\u0004\b<\u0010=¨\u0006?"}, d2 = {"Lorg/acra/dialog/CrashReportDialog;", "Landroid/app/Activity;", "Landroid/content/DialogInterface$OnClickListener;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "c", "Landroid/view/View;", "e", "(Landroid/os/Bundle;)Landroid/view/View;", "v", "b", "(Landroid/view/View;)V", "k", "()Landroid/view/View;", "f", "", "savedComment", "Landroid/widget/EditText;", GslbInterceptor.HEADER_KEY_GSLB, "(Ljava/lang/CharSequence;)Landroid/widget/EditText;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "savedEmail", "j", "Landroid/content/DialogInterface;", "dialog", "", "which", "onClick", "(Landroid/content/DialogInterface;I)V", "outState", "onSaveInstanceState", CmcdData.STREAM_TYPE_LIVE, "()I", "Landroid/widget/LinearLayout;", "Landroid/widget/LinearLayout;", "scrollable", "Landroid/widget/EditText;", "userCommentView", "d", "userEmailView", "Log9;", "Log9;", "sharedPreferencesFactory", "Lorg/acra/config/DialogConfiguration;", "Lorg/acra/config/DialogConfiguration;", "dialogConfiguration", "Lorg/acra/dialog/CrashReportDialogHelper;", "Lorg/acra/dialog/CrashReportDialogHelper;", "helper", CmcdData.STREAMING_FORMAT_HLS, "I", "padding", "Landroid/app/AlertDialog;", "Landroid/app/AlertDialog;", "()Landroid/app/AlertDialog;", CmcdData.OBJECT_TYPE_MANIFEST, "(Landroid/app/AlertDialog;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-dialog_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class CrashReportDialog extends Activity implements DialogInterface.OnClickListener {

    public LinearLayout scrollable;

    public EditText userCommentView;

    public EditText userEmailView;

    public og9 sharedPreferencesFactory;

    public DialogConfiguration dialogConfiguration;

    public CrashReportDialogHelper helper;

    public int padding;

    public AlertDialog dialog;

    public static final void d(CrashReportDialog crashReportDialog, DialogInterface dialogInterface) {
        y45.j(crashReportDialog, "this$0");
        crashReportDialog.finish();
    }

    public void b(View v) {
        y45.j(v, "v");
        LinearLayout linearLayout = this.scrollable;
        if (linearLayout == null) {
            y45.B("scrollable");
            linearLayout = null;
        }
        linearLayout.addView(v);
    }

    public void c(Bundle savedInstanceState) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        DialogConfiguration dialogConfiguration = this.dialogConfiguration;
        DialogConfiguration dialogConfiguration2 = null;
        if (dialogConfiguration == null) {
            y45.B("dialogConfiguration");
            dialogConfiguration = null;
        }
        String title = dialogConfiguration.getTitle();
        if (title != null) {
            if (title.length() <= 0) {
                title = null;
            }
            if (title != null) {
                builder.setTitle(title);
            }
        }
        DialogConfiguration dialogConfiguration3 = this.dialogConfiguration;
        if (dialogConfiguration3 == null) {
            y45.B("dialogConfiguration");
            dialogConfiguration3 = null;
        }
        Integer resIcon = dialogConfiguration3.getResIcon();
        if (resIcon != null) {
            builder.setIcon(resIcon.intValue());
        }
        AlertDialog.Builder view = builder.setView(e(savedInstanceState));
        DialogConfiguration dialogConfiguration4 = this.dialogConfiguration;
        if (dialogConfiguration4 == null) {
            y45.B("dialogConfiguration");
            dialogConfiguration4 = null;
        }
        String positiveButtonText = dialogConfiguration4.getPositiveButtonText();
        if (positiveButtonText == null) {
            positiveButtonText = getString(android.R.string.ok);
            y45.i(positiveButtonText, "getString(android.R.string.ok)");
        }
        AlertDialog.Builder positiveButton = view.setPositiveButton(positiveButtonText, this);
        DialogConfiguration dialogConfiguration5 = this.dialogConfiguration;
        if (dialogConfiguration5 == null) {
            y45.B("dialogConfiguration");
        } else {
            dialogConfiguration2 = dialogConfiguration5;
        }
        String negativeButtonText = dialogConfiguration2.getNegativeButtonText();
        if (negativeButtonText == null) {
            negativeButtonText = getString(android.R.string.cancel);
            y45.i(negativeButtonText, "getString(android.R.string.cancel)");
        }
        positiveButton.setNegativeButton(negativeButtonText, this);
        AlertDialog alertDialogCreate = builder.create();
        y45.i(alertDialogCreate, "dialogBuilder.create()");
        m(alertDialogCreate);
        h().setCanceledOnTouchOutside(false);
        h().setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                CrashReportDialog.d(this.b, dialogInterface);
            }
        });
        h().show();
    }

    public View e(Bundle savedInstanceState) {
        ScrollView scrollView = new ScrollView(this);
        int i = this.padding;
        scrollView.setPadding(i, i, i, i);
        scrollView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        scrollView.setFocusable(true);
        scrollView.setFocusableInTouchMode(true);
        LinearLayout linearLayout = this.scrollable;
        if (linearLayout == null) {
            y45.B("scrollable");
            linearLayout = null;
        }
        scrollView.addView(linearLayout);
        b(k());
        View viewF = f();
        if (viewF != null) {
            viewF.setPadding(viewF.getPaddingLeft(), this.padding, viewF.getPaddingRight(), viewF.getPaddingBottom());
            b(viewF);
            EditText editTextG = g(savedInstanceState != null ? savedInstanceState.getString("comment") : null);
            b(editTextG);
            this.userCommentView = editTextG;
        }
        View viewI = i();
        if (viewI != null) {
            viewI.setPadding(viewI.getPaddingLeft(), this.padding, viewI.getPaddingRight(), viewI.getPaddingBottom());
            b(viewI);
            EditText editTextJ = j(savedInstanceState != null ? savedInstanceState.getString(NotificationCompat.CATEGORY_EMAIL) : null);
            b(editTextJ);
            this.userEmailView = editTextJ;
        }
        return scrollView;
    }

    public View f() {
        DialogConfiguration dialogConfiguration = this.dialogConfiguration;
        if (dialogConfiguration == null) {
            y45.B("dialogConfiguration");
            dialogConfiguration = null;
        }
        String commentPrompt = dialogConfiguration.getCommentPrompt();
        if (commentPrompt == null) {
            return null;
        }
        if (commentPrompt.length() <= 0) {
            commentPrompt = null;
        }
        if (commentPrompt == null) {
            return null;
        }
        TextView textView = new TextView(this);
        textView.setText(commentPrompt);
        return textView;
    }

    public EditText g(CharSequence savedComment) {
        EditText editText = new EditText(this);
        editText.setLines(2);
        if (savedComment != null) {
            editText.setText(savedComment);
        }
        return editText;
    }

    public AlertDialog h() {
        AlertDialog alertDialog = this.dialog;
        if (alertDialog != null) {
            return alertDialog;
        }
        y45.B("dialog");
        return null;
    }

    public View i() {
        DialogConfiguration dialogConfiguration = this.dialogConfiguration;
        if (dialogConfiguration == null) {
            y45.B("dialogConfiguration");
            dialogConfiguration = null;
        }
        String emailPrompt = dialogConfiguration.getEmailPrompt();
        if (emailPrompt == null) {
            return null;
        }
        if (emailPrompt.length() <= 0) {
            emailPrompt = null;
        }
        if (emailPrompt == null) {
            return null;
        }
        TextView textView = new TextView(this);
        textView.setText(emailPrompt);
        return textView;
    }

    public EditText j(CharSequence savedEmail) {
        EditText editText = new EditText(this);
        editText.setSingleLine();
        editText.setInputType(33);
        if (savedEmail == null) {
            og9 og9Var = this.sharedPreferencesFactory;
            if (og9Var == null) {
                y45.B("sharedPreferencesFactory");
                og9Var = null;
            }
            savedEmail = og9Var.a().getString("acra.user.email", "");
        }
        editText.setText(savedEmail);
        return editText;
    }

    public View k() {
        TextView textView = new TextView(this);
        DialogConfiguration dialogConfiguration = this.dialogConfiguration;
        if (dialogConfiguration == null) {
            y45.B("dialogConfiguration");
            dialogConfiguration = null;
        }
        String text = dialogConfiguration.getText();
        if (text != null) {
            String str = text.length() > 0 ? text : null;
            if (str != null) {
                textView.setText(str);
            }
        }
        return textView;
    }

    public int l() {
        TypedValue typedValue = new TypedValue();
        if (getTheme().resolveAttribute(android.R.attr.dialogPreferredPadding, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, getResources().getDisplayMetrics());
        }
        return 10;
    }

    public void m(AlertDialog alertDialog) {
        y45.j(alertDialog, "<set-?>");
        this.dialog = alertDialog;
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        String string;
        String string2;
        Editable text;
        Editable text2;
        y45.j(dialog, "dialog");
        CrashReportDialogHelper crashReportDialogHelper = null;
        if (which == -1) {
            EditText editText = this.userCommentView;
            if (editText == null || (text2 = editText.getText()) == null || (string = text2.toString()) == null) {
                string = "";
            }
            og9 og9Var = this.sharedPreferencesFactory;
            if (og9Var == null) {
                y45.B("sharedPreferencesFactory");
                og9Var = null;
            }
            SharedPreferences sharedPreferencesA = og9Var.a();
            EditText editText2 = this.userEmailView;
            if (editText2 == null || (text = editText2.getText()) == null || (string2 = text.toString()) == null) {
                string2 = sharedPreferencesA.getString("acra.user.email", "");
                y45.g(string2);
            } else {
                sharedPreferencesA.edit().putString("acra.user.email", string2).apply();
            }
            CrashReportDialogHelper crashReportDialogHelper2 = this.helper;
            if (crashReportDialogHelper2 == null) {
                y45.B("helper");
            } else {
                crashReportDialogHelper = crashReportDialogHelper2;
            }
            crashReportDialogHelper.h(string, string2);
        } else {
            CrashReportDialogHelper crashReportDialogHelper3 = this.helper;
            if (crashReportDialogHelper3 == null) {
                y45.B("helper");
            } else {
                crashReportDialogHelper = crashReportDialogHelper3;
            }
            crashReportDialogHelper.d();
        }
        finish();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            Intent intent = getIntent();
            y45.i(intent, "intent");
            this.helper = new CrashReportDialogHelper(this, intent);
            LinearLayout linearLayout = new LinearLayout(this);
            this.scrollable = linearLayout;
            linearLayout.setOrientation(1);
            Context applicationContext = getApplicationContext();
            y45.i(applicationContext, "applicationContext");
            CrashReportDialogHelper crashReportDialogHelper = this.helper;
            DialogConfiguration dialogConfiguration = null;
            if (crashReportDialogHelper == null) {
                y45.B("helper");
                crashReportDialogHelper = null;
            }
            this.sharedPreferencesFactory = new og9(applicationContext, crashReportDialogHelper.f());
            CrashReportDialogHelper crashReportDialogHelper2 = this.helper;
            if (crashReportDialogHelper2 == null) {
                y45.B("helper");
                crashReportDialogHelper2 = null;
            }
            DialogConfiguration dialogConfiguration2 = (DialogConfiguration) ue1.b(crashReportDialogHelper2.f(), DialogConfiguration.class);
            this.dialogConfiguration = dialogConfiguration2;
            if (dialogConfiguration2 == null) {
                y45.B("dialogConfiguration");
            } else {
                dialogConfiguration = dialogConfiguration2;
            }
            Integer resTheme = dialogConfiguration.getResTheme();
            if (resTheme != null) {
                setTheme(resTheme.intValue());
            }
            this.padding = l();
            c(savedInstanceState);
        } catch (IllegalArgumentException unused) {
            finish();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Editable text;
        Editable text2;
        y45.j(outState, "outState");
        super.onSaveInstanceState(outState);
        EditText editText = this.userCommentView;
        if (editText != null && (text2 = editText.getText()) != null) {
            outState.putString("comment", text2.toString());
        }
        EditText editText2 = this.userEmailView;
        if (editText2 == null || (text = editText2.getText()) == null) {
            return;
        }
        outState.putString(NotificationCompat.CATEGORY_EMAIL, text.toString());
    }
}
