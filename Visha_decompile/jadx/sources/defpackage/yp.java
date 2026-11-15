package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.a;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.dialog.d;

public class yp {
    public static volatile yp e;
    public d b;
    public Runnable c;
    public boolean d = false;
    public final Handler a = new Handler(Looper.getMainLooper());

    public static yp i() {
        if (e == null) {
            synchronized (yp.class) {
                try {
                    if (e == null) {
                        e = new yp();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static void k(CheckBox checkBox, View view) {
        checkBox.setChecked(!checkBox.isChecked());
        vdb.g("AudioFocusDialogManager", "click ll_not_prompt, value now: " + checkBox.isChecked());
    }

    public static void l(Context context, CompoundButton compoundButton, boolean z) {
        w6c.r(context, "audio_focus_change_notice_show", !z);
    }

    public static void m(Context context, Runnable runnable, DialogInterface dialogInterface, int i) {
        vdb.g("AudioFocusDialogManager", "click allow");
        w6c.r(context, "audio_focus_allow_may_duck", true);
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Exception e2) {
                LogUtils.l("canPlay running error: " + e2.getMessage());
                vdb.h("AudioFocusDialogManager", "canPlay running error: " + e2.getMessage());
            }
        }
    }

    public void h() {
        if (!this.d || this.c == null) {
            return;
        }
        this.d = false;
        this.a.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.j();
            }
        }, 300L);
    }

    public final void j() {
        q(this.c);
        this.c = null;
    }

    public final void p(final Context context, final Runnable runnable) {
        try {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.audio_focus_dialog, (ViewGroup) null);
            ((TextView) viewInflate.findViewById(R.id.tv_notice)).setText(context.getString(R.string.visha_audio_allow_simultaneous_play_hint, context.getString(R.string.visha_Player)));
            final CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_do_not_reminder);
            viewInflate.findViewById(R.id.ll_not_prompt).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    yp.k(checkBox, view);
                }
            });
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    yp.l(context, compoundButton, z);
                }
            });
            d dVarF = new d.a(context).E(viewInflate).u(R.string.allow, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    yp.m(context, runnable, dialogInterface, i);
                }
            }).m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    vdb.g("AudioFocusDialogManager", "click cancel");
                }
            }).e(true).F();
            this.b = dVarF;
            dVarF.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    vdb.g("AudioFocusDialogManager", "dialog dismiss");
                }
            });
        } catch (Exception e2) {
            LogUtils.l("handle showPlayTogetherDialog error: " + e2.getMessage());
        }
    }

    public void q(final Runnable runnable) {
        try {
            final Context context = (Context) a.d().get(0);
            if (!a.h((Activity) context) && w6c.c(context, "audio_focus_change_notice_show", true)) {
                d dVar = this.b;
                if (dVar == null || !dVar.isShowing()) {
                    if ((context instanceof Activity) && ((Activity) context).isInPictureInPictureMode()) {
                        this.c = runnable;
                        this.d = true;
                    } else {
                        LogUtils.v("showPlayTogetherDialog");
                        vdb.j("AudioFocusDialogManager", "showPlayTogetherDialog");
                        this.a.post(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.p(context, runnable);
                            }
                        });
                    }
                }
            }
        } catch (Exception e2) {
            LogUtils.l("showPlayTogetherDialog error: " + e2.getMessage());
        }
    }
}
