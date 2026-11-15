package com.transsion.sniffer_load.dialog;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.p004lifecycle.Observer;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.dialog.SnifferForbidSheetDialog;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\b¨\u0006\f"}, d2 = {"Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Lzfb;", "initView", "", "getSupportGesture", "()Z", "getDragHandlerVisibility", "N", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnifferForbidSheetDialog extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            y45.j(context, "context");
            context.startActivity(new Intent(context, (Class<?>) SnifferForbidSheetDialog.class));
        }

        public Companion() {
        }
    }

    public static final void i0(SnifferForbidSheetDialog snifferForbidSheetDialog, View view) {
        snifferForbidSheetDialog.finish();
    }

    public static final void j0(SnifferForbidSheetDialog snifferForbidSheetDialog, View view) {
        snifferForbidSheetDialog.finish();
    }

    public static final void k0(SnifferForbidSheetDialog snifferForbidSheetDialog, Object obj) {
        snifferForbidSheetDialog.finish();
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    @Override
    public boolean getSupportGesture() {
        return false;
    }

    @Override
    public void initView() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_forbid_sniffer, (ViewGroup) null);
        y45.g(viewInflate);
        addPage(viewInflate).setTitleLayoutVisible(false);
        ((Button) viewInflate.findViewById(R.id.btn_certain)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SnifferForbidSheetDialog.i0(this.b, view);
            }
        });
        ((ImageView) viewInflate.findViewById(R.id.close_btn)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SnifferForbidSheetDialog.j0(this.b, view);
            }
        });
        LiveEventBus.b().d("close_forbid_dialog").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                SnifferForbidSheetDialog.k0(this.a, obj);
            }
        });
    }
}
