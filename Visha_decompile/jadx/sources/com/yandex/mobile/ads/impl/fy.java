package com.yandex.mobile.ads.impl;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.webkit.internal.AssetHelper;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import com.yandex.mobile.ads.impl.fy;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class fy {
    private final IntegrationInspectorActivity a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            l11.a.b();
            fy fyVar = fy.this;
            String string = fyVar.a.getString(R.string.logging_is_enabled);
            y45.i(string, "getString(...)");
            fy.a(fyVar, string);
            return zfb.a;
        }
    }

    public fy(IntegrationInspectorActivity integrationInspectorActivity) {
        y45.j(integrationInspectorActivity, "activity");
        this.a = integrationInspectorActivity;
    }

    public static final void a(DialogInterface dialogInterface, int i) {
    }

    public static final void b(DialogInterface dialogInterface, int i) {
    }

    public static final void a(fy fyVar, String str) {
        Toast.makeText(fyVar.a, str, 0).show();
    }

    public final void a(ey eyVar) {
        y45.j(eyVar, NotificationCompat.CATEGORY_EVENT);
        if (eyVar instanceof ey.c) {
            Toast.makeText(this.a, ((ey.c) eyVar).a(), 0).show();
            return;
        }
        if (eyVar instanceof ey.e) {
            a(((ey.e) eyVar).a());
            return;
        }
        if (eyVar instanceof ey.d) {
            Uri uriA = ((ey.d) eyVar).a();
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.STREAM", uriA);
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            this.a.startActivity(intent);
            return;
        }
        if (eyVar instanceof ey.b) {
            String string = this.a.getString(R.string.logging_is_disabled);
            y45.i(string, "getString(...)");
            String string2 = this.a.getString(R.string.do_you_want_to_enable_logging);
            y45.i(string2, "getString(...)");
            a(string, string2, new a());
            return;
        }
        if (eyVar instanceof ey.a) {
            this.a.finishAfterTransition();
        }
    }

    public static final void a(c74 c74Var, DialogInterface dialogInterface, int i) {
        if (c74Var != null) {
            c74Var.invoke();
        }
    }

    private final void a(String str) {
        new AlertDialog.Builder(this.a).setMessage(str).setPositiveButton(this.a.getString(R.string.ok), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                fy.b(dialogInterface, i);
            }
        }).show();
    }

    private final void a(String str, String str2, final c74 c74Var) {
        new AlertDialog.Builder(this.a).setTitle(str).setMessage(str2).setPositiveButton(this.a.getString(R.string.yes), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                fy.a(c74Var, dialogInterface, i);
            }
        }).setNegativeButton(this.a.getString(R.string.no), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                fy.a(dialogInterface, i);
            }
        }).show();
    }
}
