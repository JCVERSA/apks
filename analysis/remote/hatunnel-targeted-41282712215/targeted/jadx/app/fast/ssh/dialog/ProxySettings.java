package app.fast.ssh.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.preference.PreferenceManager;
import app.fast.ssh.ProtectedFastSSH;
import com.hatunnel.plus.R;

public class ProxySettings {
    public static final String KEY_PARENT_PROXY_HOST = ProtectedFastSSH.s("ㅰ");
    public static final String KEY_PARENT_PROXY_PORT = ProtectedFastSSH.s("ㅱ");
    private final Context context;
    private SharedPreferences mSharedPrefs;
    private final View view;

    class AnonymousClass1 implements DialogInterface.OnClickListener {
        final Context val$context;
        final EditText val$proxy_host;
        final EditText val$proxy_port;

        AnonymousClass1(EditText editText, EditText editText2, Context context) {
            this.val$proxy_host = editText;
            this.val$proxy_port = editText2;
            this.val$context = context;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SharedPreferences.Editor editorEdit = ProxySettings.access$000(ProxySettings.this).edit();
            editorEdit.putString(ProtectedFastSSH.s("ㅭ"), this.val$proxy_host.getText().toString());
            String strTrim = this.val$proxy_port.getText().toString().trim();
            int i2 = strTrim.equals("") ? 0 : Integer.parseInt(strTrim);
            if (i2 > 65536) {
                i2 = 65536;
            }
            editorEdit.putString(ProtectedFastSSH.s("ㅮ"), i2 + "");
            editorEdit.apply();
            Toast.makeText(this.val$context, ProtectedFastSSH.s("ㅯ"), 0).show();
        }
    }

    class AnonymousClass2 implements DialogInterface.OnClickListener {
        AnonymousClass2() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public ProxySettings(Context context) {
        this.context = context;
        this.mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.l_res_0x7f0c009c, (ViewGroup) null);
        this.view = viewInflate;
        EditText editText = (EditText) viewInflate.findViewById(R.id.l_res_0x7f0901ef);
        EditText editText2 = (EditText) viewInflate.findViewById(R.id.l_res_0x7f0901f0);
        editText.setText(this.mSharedPrefs.getString(ProtectedFastSSH.s("ㅰ"), ""));
        editText2.setText(this.mSharedPrefs.getString(ProtectedFastSSH.s("ㅱ"), ""));
        builder.setTitle(ProtectedFastSSH.s("ㅲ"));
        builder.setPositiveButton(ProtectedFastSSH.s("ㅳ"), new AnonymousClass1(editText, editText2, context));
        builder.setNegativeButton(ProtectedFastSSH.s("ㅴ"), new AnonymousClass2());
        builder.setView(viewInflate);
        builder.create().show();
    }

    static SharedPreferences access$000(ProxySettings proxySettings) {
        return proxySettings.mSharedPrefs;
    }
}
