package com.transsion.tools.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.playercommon.data.CloudVersionControl;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.tools.R;
import com.transsion.widgetslib.dialog.d;
import defpackage.ge;
import defpackage.p06;
import defpackage.pp3;

public class UpdateDialogUtils {
    public b a;

    public class a implements DialogInterface.OnClickListener {
        public final Context b;
        public final CloudVersionControl c;

        public a(Context context, CloudVersionControl cloudVersionControl) {
            this.b = context;
            this.c = cloudVersionControl;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            Log.i("UpdateDialogUtils", "pkg feature " + ge.a());
            UpdateUtils.p(this.b);
            CloudVersionControl cloudVersionControl = this.c;
            p06.P(cloudVersionControl == null ? "" : cloudVersionControl.getVersionName(), UpdateUtils.h(Utils.a()), "popup_version_y_cl");
            if (UpdateDialogUtils.this.a != null) {
                UpdateDialogUtils.this.a.finish();
            }
        }
    }

    public interface b {
        void finish();
    }

    public UpdateDialogUtils(b bVar) {
        this.a = bVar;
    }

    public void b(Context context, final CloudVersionControl cloudVersionControl) {
        Log.d("UpdateDialogUtils", "showUpdateDialog: " + cloudVersionControl);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_version_update, (ViewGroup) null, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_logo);
        if (imageView != null) {
            imageView.setImageResource(pp3.c ? R.drawable.ic_logo_mini_pre : R.drawable.ic_logo_mini);
        }
        ((TextView) viewInflate.findViewById(R.id.tv_new_version)).setText(context.getResources().getString(R.string.visha_update_version, cloudVersionControl == null ? "" : cloudVersionControl.getVersionName()));
        ((TextView) viewInflate.findViewById(R.id.tv_logo)).setText(context.getResources().getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player));
        ((TextView) viewInflate.findViewById(R.id.tv_version_size)).setText(context.getResources().getString(R.string.version_size, cloudVersionControl == null ? "" : cloudVersionControl.fileSize));
        ((TextView) viewInflate.findViewById(R.id.tv_des)).setText(cloudVersionControl == null ? "" : cloudVersionControl.getVersionDesAll());
        new d.a(context).A(R.string.visha_new_version_found).E(viewInflate).f(false).u(R.string.visha_update, new a(context, cloudVersionControl)).m(R.string.gp_later, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                TaskExecutor.c(new Runnable() {
                    @Override
                    public void run() {
                        CloudVersionControl cloudVersionControl2 = cloudVersionControl;
                        p06.P(cloudVersionControl2 == null ? "" : cloudVersionControl2.getVersionName(), UpdateUtils.h(Utils.a()), "popup_version_n_cl");
                        if (UpdateDialogUtils.this.a != null) {
                            UpdateDialogUtils.this.a.finish();
                        }
                    }
                });
            }
        }).F();
        p06.P(cloudVersionControl != null ? cloudVersionControl.getVersionName() : "", UpdateUtils.h(Utils.a()), "popup_version_show");
    }
}
