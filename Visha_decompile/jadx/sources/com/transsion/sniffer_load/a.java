package com.transsion.sniffer_load;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.p004lifecycle.Observer;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseFoldActivity;
import defpackage.p06;
import defpackage.woc;

public class a {
    public com.transsion.widgetslib.dialog.d a;

    public class C0253a implements Observer {
        public final ImageView a;

        public C0253a(ImageView imageView) {
            this.a = imageView;
        }

        @Override
        public void onChanged(woc wocVar) {
            if (this.a != null) {
                if (com.transsion.utils.a.A()) {
                    this.a.setImageResource(R.drawable.pic_download_lead_tablet);
                    return;
                }
                int i = wocVar.a;
                if (i == 0) {
                    this.a.setImageResource(R.drawable.pic_download_lead_new);
                } else if (i == 1 || i == 2 || i == 3) {
                    this.a.setImageResource(R.drawable.pic_download_lead_wid_new);
                }
            }
        }
    }

    public class b implements DialogInterface.OnDismissListener {
        public b() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            LiveEventBus.b().c("skip_download_guide", Boolean.TRUE);
            p06.f0(null, "guide_dl_popup_check_cl", 9324L);
        }
    }

    public com.transsion.widgetslib.dialog.d a() {
        return this.a;
    }

    public void b(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_for_download_lead, (ViewGroup) null, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.image_pic);
        if (context instanceof BaseFoldActivity) {
            BaseFoldActivity baseFoldActivity = (BaseFoldActivity) context;
            baseFoldActivity.mWindowInfoViewModel.a.observe(baseFoldActivity, new C0253a(imageView));
        }
        this.a = new com.transsion.widgetslib.dialog.d.a(context).A(R.string.download_guide_dialog_title).u(R.string.details, new d()).m(R.string.cancel, new c()).s(new b()).E(viewInflate).F();
    }
}
