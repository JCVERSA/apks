package com.transsion.xuanniao.account.center.view;

import OppOOO0.OppOp0;
import android.net.Uri;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.AvatarRes;
import defpackage.fs7;
import java.io.File;

public class q implements o.c {
    public final UserCenterActivity a;

    public q(UserCenterActivity userCenterActivity) {
        this.a = userCenterActivity;
    }

    @Override
    public void a(File file) {
        Glide.with(this.a.getApplicationContext()).load2(Uri.fromFile(file)).into((ImageView) this.a.findViewById(R.id.portrait));
        OppOp0 oppOp0 = this.a.k;
        Long lValueOf = Long.valueOf(file.length());
        oppOp0.c.d(oppOp0.e(), "jpg", lValueOf, new fs7(oppOp0, oppOp0.e(), AvatarRes.class, "jpg", lValueOf));
    }
}
