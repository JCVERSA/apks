package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.transsion.xuanniao.account.help.view.b;

public class tk7 implements View.OnClickListener {
    public final String b;
    public final b c;

    public tk7(b bVar, String str) {
        this.c = bVar;
        this.b = str;
    }

    @Override
    public void onClick(View view) {
        try {
            this.c.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.b)));
        } catch (Exception unused) {
        }
    }
}
