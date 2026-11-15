package com.transsion.audio.shortcut;

import android.app.Activity;
import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioShortcutGuideActivity;
import com.transsion.utils.ToastUtils;
import defpackage.cl0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.audio.shortcut.AudioShortCutHelper$trySendAudioShortcut$1", f = "AudioShortCutHelper.kt", l = {64, 65, 66, 89}, m = "invokeSuspend")
public final class AudioShortCutHelper$trySendAudioShortcut$1 extends SuspendLambda implements s74 {
    final Activity $activity;
    final boolean $showCustomUI;
    boolean Z$0;
    boolean Z$1;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.audio.shortcut.AudioShortCutHelper$trySendAudioShortcut$1$1", f = "AudioShortCutHelper.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final Activity $activity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$activity = activity;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$activity, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            AudioShortCutHelper.a(this.$activity, true);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioShortCutHelper$trySendAudioShortcut$1(boolean z, Activity activity, wh1<? super AudioShortCutHelper$trySendAudioShortcut$1> wh1Var) {
        super(2, wh1Var);
        this.$showCustomUI = z;
        this.$activity = activity;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new AudioShortCutHelper$trySendAudioShortcut$1(this.$showCustomUI, this.$activity, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((AudioShortCutHelper$trySendAudioShortcut$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0088  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00da  */
    /* JADX WARN: Code duplicated, block: B:40:0x00de  */
    /* JADX WARN: Code duplicated, block: B:42:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:45:0x0106 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean zBooleanValue;
        Object objG;
        boolean z2;
        boolean z3;
        boolean zBooleanValue2;
        kotlinx.coroutines.c cVarB;
        AnonymousClass1 anonymousClass1;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                c.b(obj);
            } else if (i == 2) {
                z = this.Z$0;
                c.b(obj);
                zBooleanValue = ((Boolean) obj).booleanValue();
                kotlinx.coroutines.c cVarB2 = mc2.b();
                AudioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1 audioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1 = new AudioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1(this.$activity, null);
                this.Z$0 = z;
                this.Z$1 = zBooleanValue;
                this.label = 3;
                objG = cl0.g(cVarB2, audioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1, this);
                if (objG == objF) {
                    return objF;
                }
                boolean z4 = z;
                z2 = zBooleanValue;
                obj = objG;
                z3 = z4;
                zBooleanValue2 = ((Boolean) obj).booleanValue();
                Log.d("AudioShortCutHelper", "showAudioShortCutDialog, shortcutExit :" + z2 + " supportShortCut :" + z3 + " isChildModeClose :" + zBooleanValue2);
                if (!z3) {
                    Log.d("AudioShortCutHelper", "not supportShortCut ");
                    return zfb.a;
                }
                if (!zBooleanValue2) {
                    ToastUtils.s(R.string.child_mode_forbidden);
                    return zfb.a;
                }
                if (z2) {
                    if (!this.$showCustomUI) {
                        ToastUtils.s(R.string.has_cut_ready);
                    }
                    return zfb.a;
                }
                if (!this.$showCustomUI) {
                    cVarB = mc2.b();
                    anonymousClass1 = new AnonymousClass1(this.$activity, null);
                    this.label = 4;
                    if (cl0.g(cVarB, anonymousClass1, this) == objF) {
                        return objF;
                    }
                } else if (!MMKV.p().e("MMKV_SHORTCUT_DO_NOT_REMIND", false)) {
                    AudioShortcutGuideActivity.INSTANCE.a(this.$activity);
                }
            } else if (i == 3) {
                z2 = this.Z$1;
                z3 = this.Z$0;
                c.b(obj);
                zBooleanValue2 = ((Boolean) obj).booleanValue();
                Log.d("AudioShortCutHelper", "showAudioShortCutDialog, shortcutExit :" + z2 + " supportShortCut :" + z3 + " isChildModeClose :" + zBooleanValue2);
                if (!z3) {
                    Log.d("AudioShortCutHelper", "not supportShortCut ");
                    return zfb.a;
                }
                if (!zBooleanValue2) {
                    ToastUtils.s(R.string.child_mode_forbidden);
                    return zfb.a;
                }
                if (z2) {
                    if (!this.$showCustomUI) {
                        ToastUtils.s(R.string.has_cut_ready);
                    }
                    return zfb.a;
                }
                if (!this.$showCustomUI) {
                    cVarB = mc2.b();
                    anonymousClass1 = new AnonymousClass1(this.$activity, null);
                    this.label = 4;
                    if (cl0.g(cVarB, anonymousClass1, this) == objF) {
                        return objF;
                    }
                } else if (!MMKV.p().e("MMKV_SHORTCUT_DO_NOT_REMIND", false)) {
                    AudioShortcutGuideActivity.INSTANCE.a(this.$activity);
                }
            } else {
                if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
        c.b(obj);
        kotlinx.coroutines.c cVarB3 = mc2.b();
        AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1 audioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1 = new AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1(this.$activity, null);
        this.label = 1;
        obj = cl0.g(cVarB3, audioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1, this);
        if (obj == objF) {
            return objF;
        }
        boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
        kotlinx.coroutines.c cVarB4 = mc2.b();
        AudioShortCutHelper$trySendAudioShortcut$1$shortcutExit$1 audioShortCutHelper$trySendAudioShortcut$1$shortcutExit$1 = new AudioShortCutHelper$trySendAudioShortcut$1$shortcutExit$1(this.$activity, null);
        this.Z$0 = zBooleanValue3;
        this.label = 2;
        Object objG2 = cl0.g(cVarB4, audioShortCutHelper$trySendAudioShortcut$1$shortcutExit$1, this);
        if (objG2 == objF) {
            return objF;
        }
        z = zBooleanValue3;
        obj = objG2;
        zBooleanValue = ((Boolean) obj).booleanValue();
        kotlinx.coroutines.c cVarB5 = mc2.b();
        AudioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1 audioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$2 = new AudioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1(this.$activity, null);
        this.Z$0 = z;
        this.Z$1 = zBooleanValue;
        this.label = 3;
        objG = cl0.g(cVarB5, audioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$2, this);
        if (objG == objF) {
            return objF;
        }
        boolean z5 = z;
        z2 = zBooleanValue;
        obj = objG;
        z3 = z5;
        zBooleanValue2 = ((Boolean) obj).booleanValue();
        Log.d("AudioShortCutHelper", "showAudioShortCutDialog, shortcutExit :" + z2 + " supportShortCut :" + z3 + " isChildModeClose :" + zBooleanValue2);
        if (!z3) {
            Log.d("AudioShortCutHelper", "not supportShortCut ");
            return zfb.a;
        }
        if (!zBooleanValue2) {
            ToastUtils.s(R.string.child_mode_forbidden);
            return zfb.a;
        }
        if (z2) {
            if (!this.$showCustomUI) {
                ToastUtils.s(R.string.has_cut_ready);
            }
            return zfb.a;
        }
        if (!this.$showCustomUI) {
            cVarB = mc2.b();
            anonymousClass1 = new AnonymousClass1(this.$activity, null);
            this.label = 4;
            if (cl0.g(cVarB, anonymousClass1, this) == objF) {
                return objF;
            }
        } else if (!MMKV.p().e("MMKV_SHORTCUT_DO_NOT_REMIND", false)) {
            AudioShortcutGuideActivity.INSTANCE.a(this.$activity);
        }
        return zfb.a;
    }
}
