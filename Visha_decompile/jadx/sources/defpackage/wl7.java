package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.widget.Toast;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.help.view.b;

public class wl7 implements View.OnLongClickListener {
    public final String b;
    public final b c;

    public wl7(b bVar, String str) {
        this.c = bVar;
        this.b = str;
    }

    @Override
    public boolean onLongClick(View view) {
        ((ClipboardManager) this.c.b.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("url", this.b));
        Toast toastMakeText = Toast.makeText(this.c.b.getApplicationContext(), this.c.b.getString(R.string.xn_link_copy), 1);
        toastMakeText.setGravity(17, 0, 0);
        toastMakeText.show();
        return true;
    }
}
