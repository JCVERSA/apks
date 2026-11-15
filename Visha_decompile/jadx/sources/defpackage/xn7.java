package defpackage;

import android.content.Intent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.transsion.audiotagger.tag.id3.ID3v22Frames;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.bind.email.view.ManageEmailActivity;
import com.transsion.xuanniao.account.bind.third.view.TripartiteListActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;

public class xn7 implements View.OnClickListener {
    public final d b;
    public final TripartiteListActivity c;

    public xn7(TripartiteListActivity tripartiteListActivity, d dVar) {
        this.c = tripartiteListActivity;
        this.b = dVar;
    }

    @Override
    public void onClick(View view) {
        TripartiteListActivity tripartiteListActivity = this.c;
        tripartiteListActivity.getClass();
        xj.U(tripartiteListActivity).w(ID3v22Frames.FRAME_ID_V2_UNSYNC_LYRICS, NotificationCompat.CATEGORY_EMAIL);
        ao7 ao7Var = ao7.a.a;
        TripartiteListActivity tripartiteListActivity2 = this.c;
        tripartiteListActivity2.getClass();
        AccountRes accountResJ = ao7Var.j(tripartiteListActivity2);
        TripartiteListActivity tripartiteListActivity3 = this.c;
        tripartiteListActivity3.getClass();
        xj.U(tripartiteListActivity3).z(ID3v22Frames.FRAME_ID_V2_UNSYNC_LYRICS, NotificationCompat.CATEGORY_EMAIL, sm7.b(accountResJ.email));
        Intent intent = new Intent(this.c, (Class<?>) ManageEmailActivity.class);
        intent.putExtra("accountId", this.c.e.f);
        this.c.startActivityForResult(intent, 1002);
        this.b.dismiss();
    }
}
