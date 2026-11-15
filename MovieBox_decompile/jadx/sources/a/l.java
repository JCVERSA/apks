package a;

import android.view.View;
import com.hisavana.common.tracking.TrackingKey;

public final class l implements View.OnClickListener {

    public final int f50a;

    public final b f51b;

    public final com.community.oneroom.nu.mm.b f52c;

    public l(com.community.oneroom.nu.mm.b bVar, b bVar2, int i10) {
        this.f50a = i10;
        this.f52c = bVar;
        this.f51b = bVar2;
    }

    @Override
    public final void onClick(View view) {
        int i10 = this.f50a;
        b bVar = this.f51b;
        com.community.oneroom.nu.mm.b bVar2 = this.f52c;
        switch (i10) {
            case 0:
                int i11 = com.community.oneroom.nu.mm.b.f23325d;
                bVar2.getSharedPreferences("support_pref", 0).edit().putLong(TrackingKey.CLICK_TIME, System.currentTimeMillis()).apply();
                k.e(bVar2, bVar.f8f);
                break;
            default:
                k.e(bVar2, bVar.f9g);
                break;
        }
    }
}
