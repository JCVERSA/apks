package com.transsion.player.mediasession;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import on.e0;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/player/mediasession/MusicIntentReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "", "a", "()Ljava/lang/String;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicIntentReceiver extends BroadcastReceiver {
    private final String a() {
        String simpleName = MusicIntentReceiver.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public void onReceive(Context context, Intent intent) {
        Object objM453constructorimpl;
        Unit unit;
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        try {
            Result.Companion companion = Result.INSTANCE;
            String action = intent.getAction();
            if (action != null && action.hashCode() == 1997055314 && action.equals("android.intent.action.MEDIA_BUTTON")) {
                Bundle extras = intent.getExtras();
                unit = null;
                Object obj = extras != null ? extras.get("android.intent.extra.KEY_EVENT") : null;
                KeyEvent keyEvent = obj instanceof KeyEvent ? (KeyEvent) obj : null;
                if (keyEvent != null) {
                    i.f46432a.a(a() + " --> onReceive --> 接收到通知点击事件, = " + keyEvent + ", " + keyEvent.getKeyCode());
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 126) {
                        com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
                        if (fVarE != null) {
                            fVarE.play();
                            unit = Unit.f64096a;
                        }
                    } else if (keyCode != 127) {
                        switch (keyCode) {
                            case 86:
                                com.transsion.player.orplayer.f fVarE2 = e0.f67859a.e();
                                if (fVarE2 != null) {
                                    fVarE2.stop();
                                    unit = Unit.f64096a;
                                }
                                break;
                            case 87:
                                MediaBrowserCompatHelper.f46405h.a().x();
                                unit = Unit.f64096a;
                                break;
                            case 88:
                                MediaBrowserCompatHelper.f46405h.a().z();
                                unit = Unit.f64096a;
                                break;
                            default:
                                unit = Unit.f64096a;
                                break;
                        }
                    } else {
                        com.transsion.player.orplayer.f fVarE3 = e0.f67859a.e();
                        if (fVarE3 != null) {
                            fVarE3.pause();
                            unit = Unit.f64096a;
                        }
                    }
                }
            } else {
                unit = Unit.f64096a;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        i.f46432a.a(a() + " --> onReceive --> 接收到通知点击事件 --- it = " + thM456exceptionOrNullimpl);
    }
}
