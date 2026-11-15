package com.transsion.audio.activities;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioShortcutGuideActivity;
import com.transsion.audio.shortcut.AudioShortCutHelper;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import defpackage.f5;
import defpackage.pp3;
import defpackage.sy5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\bR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/transsion/audio/activities/AudioShortcutGuideActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Lzfb;", "initView", "", "isFixedHeight", "()Z", "getDragHandlerVisibility", "Landroid/widget/CheckBox;", "N", "Landroid/widget/CheckBox;", "checkBox", "O", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioShortcutGuideActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public CheckBox checkBox;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            f5.c(new Intent(context, (Class<?>) AudioShortcutGuideActivity.class), context);
        }

        public Companion() {
        }
    }

    public static final void i0(CompoundButton compoundButton, boolean z) {
        y45.j(compoundButton, "<unused var>");
        sy5.a.d(z);
    }

    public static final void j0(AudioShortcutGuideActivity audioShortcutGuideActivity, View view) {
        AudioShortCutHelper.a(audioShortcutGuideActivity, false);
        sy5.a.b(false);
        audioShortcutGuideActivity.finish();
    }

    public static final void k0(AudioShortcutGuideActivity audioShortcutGuideActivity, View view) {
        CheckBox checkBox = audioShortcutGuideActivity.checkBox;
        boolean zIsChecked = checkBox != null ? checkBox.isChecked() : false;
        Log.d("AudioShortcutGuideDialog", "notRemind = " + zIsChecked);
        MMKV.p().y("MMKV_SHORTCUT_DO_NOT_REMIND", zIsChecked);
        sy5.a.b(true);
        audioShortcutGuideActivity.finish();
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_audio_shortcut_guide, (ViewGroup) null);
        y45.i(viewInflate, "inflate(...)");
        ((TextView) viewInflate.findViewById(R.id.tv_music_shortcut_title)).setText(pp3.c ? com.transsion.playercommon.R.string.visha_music_pre : com.transsion.playercommon.R.string.visha_music);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_do_not_reminder);
        this.checkBox = checkBox;
        if (checkBox != null) {
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    AudioShortcutGuideActivity.i0(compoundButton, z);
                }
            });
        }
        ((TextView) viewInflate.findViewById(R.id.btn_confirm)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                AudioShortcutGuideActivity.j0(this.b, view);
            }
        });
        ((TextView) viewInflate.findViewById(R.id.btn_cancel)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                AudioShortcutGuideActivity.k0(this.b, view);
            }
        });
        addPage(viewInflate).setTitle(R.string.add_shortcut).setCloseIconVisibility(false);
        sy5.a.c();
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }
}
