package defpackage;

import OppOp00.a;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.BaseRequestOptions;
import com.transsion.xuanniao.account.auth.view.PalmAuthActivity2;
import com.transsion.xuanniao.account.comm.widget.RoundImageView;
import com.transsion.xuanniao.account.model.data.AccountRes;

public class gm7 implements a.InterfaceC0003a {
    public final AccountRes a;
    public final RoundImageView b;
    public final PalmAuthActivity2 c;

    public gm7(PalmAuthActivity2 palmAuthActivity2, AccountRes accountRes, RoundImageView roundImageView) {
        this.c = palmAuthActivity2;
        this.a = accountRes;
        this.b = roundImageView;
    }

    @Override
    public void F(String str) {
        if (str == null) {
            str = this.a.avatarUrl;
        }
        RequestBuilder<Drawable> requestBuilderLoad = Glide.with(this.c.getApplicationContext()).load2(str);
        PalmAuthActivity2 palmAuthActivity2 = this.c;
        int i = PalmAuthActivity2.i;
        requestBuilderLoad.apply((BaseRequestOptions<?>) palmAuthActivity2.E0()).into(this.b);
    }
}
