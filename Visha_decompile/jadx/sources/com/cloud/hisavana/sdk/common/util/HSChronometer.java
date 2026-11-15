package com.cloud.hisavana.sdk.common.util;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.Chronometer;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.lzy.okgo.model.Progress;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.hz9;
import defpackage.ikd;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\"\u0018\u00002\u00020\u0001:\u0001>B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b \u0010\u001cJ\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0001H\u0002¢\u0006\u0004\b!\u0010\rJ\u000f\u0010\"\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u000bH\u0002¢\u0006\u0004\b$\u0010#R\u0014\u0010&\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b!\u0010%R\u0016\u0010(\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010'R\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0016\u0010,\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010+R\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010+R$\u00102\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010%\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R$\u00106\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010%\u001a\u0004\b4\u0010/\"\u0004\b5\u00101R$\u0010=\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/cloud/hisavana/sdk/common/util/HSChronometer;", "Landroid/widget/Chronometer;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "chronometer", "Lzfb;", "tickComplete", "(Landroid/widget/Chronometer;)V", "", "duration", "", "countdownText", "(J)Ljava/lang/String;", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;", "listener", "startCountDown", "(ILcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V", "startCountdown", "(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V", "pauseCountdown", "()J", "resumeCountdown", "(J)V", "", "isTimeUp", "()Z", "c", "b", "e", "()V", "f", "Ljava/lang/String;", Progress.TAG, "J", "countdownDuration", "d", "remainingDuration", "Z", "isRunning", GslbInterceptor.HEADER_KEY_GSLB, "getTickStringFormat", "()Ljava/lang/String;", "setTickStringFormat", "(Ljava/lang/String;)V", "tickStringFormat", CmcdData.STREAMING_FORMAT_HLS, "getFinishedString", "setFinishedString", "finishedString", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;", "getTickListener", "()Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;", "setTickListener", "(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V", "tickListener", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HSChronometer extends Chronometer {

    public final String tag;

    public long countdownDuration;

    public long remainingDuration;

    public boolean isRunning;

    public boolean isTimeUp;

    public String tickStringFormat;

    public String finishedString;

    public a tickListener;

    public interface a {
        void a(long j);

        void onFinish();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HSChronometer(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void d(HSChronometer hSChronometer, Chronometer chronometer) {
        y45.j(hSChronometer, "this$0");
        y45.g(chronometer);
        hSChronometer.b(chronometer);
    }

    public final void b(Chronometer chronometer) {
        this.remainingDuration = this.countdownDuration - (SystemClock.elapsedRealtime() - getBase());
        if (ikd.c()) {
            ikd.b().i(this.tag, "-----> onChronometerTick " + this.remainingDuration);
        }
        if (this.remainingDuration > 0) {
            f();
            a aVar = this.tickListener;
            if (aVar != null) {
                aVar.a(this.remainingDuration);
                return;
            }
            return;
        }
        e();
        String str = this.finishedString;
        if (str == null) {
            str = "";
        }
        chronometer.setText(str);
        a aVar2 = this.tickListener;
        if (aVar2 != null) {
            aVar2.a(this.remainingDuration);
        }
        a aVar3 = this.tickListener;
        if (aVar3 != null) {
            aVar3.onFinish();
        }
    }

    public final void c(long duration) {
        if (this.isRunning || duration <= 0) {
            return;
        }
        this.countdownDuration = duration;
        setBase(SystemClock.elapsedRealtime());
        setOnChronometerTickListener(new Chronometer.OnChronometerTickListener() {
            @Override
            public final void onChronometerTick(Chronometer chronometer) {
                HSChronometer.d(this.a, chronometer);
            }
        });
        this.isRunning = true;
        start();
    }

    public final String countdownText(long duration) {
        this.remainingDuration = duration;
        int iCeil = (int) Math.ceil(duration / ((double) 1000));
        hz9 hz9Var = hz9.a;
        Locale locale = Locale.getDefault();
        String string = this.tickStringFormat;
        if (string == null) {
            string = getResources().getString(R.string.reward_before_tip);
            y45.i(string, "getString(...)");
        }
        String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(iCeil)}, 1));
        y45.i(str, "format(...)");
        return str;
    }

    public final void e() {
        stop();
        this.isTimeUp = true;
        this.isRunning = false;
        this.remainingDuration = 0L;
    }

    public final void f() {
        if (this.tickStringFormat != null) {
            setText(countdownText(this.remainingDuration));
        }
    }

    public final String getFinishedString() {
        return this.finishedString;
    }

    public final a getTickListener() {
        return this.tickListener;
    }

    public final String getTickStringFormat() {
        return this.tickStringFormat;
    }

    public final boolean getIsTimeUp() {
        return this.isTimeUp;
    }

    public final long pauseCountdown() {
        if (this.isRunning) {
            stop();
            this.isRunning = false;
            this.remainingDuration = this.countdownDuration - (SystemClock.elapsedRealtime() - getBase());
            if (ikd.c()) {
                ikd.b().i(this.tag, "pauseCountdown -----> remain countdownDuration: " + this.remainingDuration);
            }
            if (this.remainingDuration <= 0) {
                e();
                String str = this.finishedString;
                if (str == null) {
                    str = "";
                }
                setText(str);
                a aVar = this.tickListener;
                if (aVar != null) {
                    aVar.a(this.remainingDuration);
                }
                a aVar2 = this.tickListener;
                if (aVar2 != null) {
                    aVar2.onFinish();
                }
            } else {
                f();
                a aVar3 = this.tickListener;
                if (aVar3 != null) {
                    aVar3.a(this.remainingDuration);
                }
            }
        }
        return this.remainingDuration;
    }

    public final void resumeCountdown(long duration) {
        if (this.isRunning || duration <= 0) {
            return;
        }
        if (ikd.c()) {
            ikd.b().i(this.tag, "resumeCountdown -----> resume countdownDuration: " + this.remainingDuration);
        }
        c(duration);
    }

    public final void setFinishedString(String str) {
        this.finishedString = str;
    }

    public final void setTickListener(a aVar) {
        this.tickListener = aVar;
    }

    public final void setTickStringFormat(String str) {
        this.tickStringFormat = str;
    }

    public final void startCountDown(int duration, a listener) {
        startCountdown(((long) duration) * 1000, listener);
    }

    public final void startCountdown(long duration, a listener) {
        this.tickListener = listener;
        if (ikd.c()) {
            ikd.b().i(this.tag, "startCountDown: " + duration);
        }
        c(duration);
    }

    public final void tickComplete(Chronometer chronometer) {
        try {
            this.remainingDuration = 0L;
            e();
            if (chronometer != null) {
                String str = this.finishedString;
                if (str == null) {
                    str = "";
                }
                chronometer.setText(str);
            }
            a aVar = this.tickListener;
            if (aVar != null) {
                aVar.a(this.remainingDuration);
            }
            a aVar2 = this.tickListener;
            if (aVar2 != null) {
                aVar2.onFinish();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HSChronometer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public HSChronometer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HSChronometer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.tag = "HiChronometer";
    }
}
