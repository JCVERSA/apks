package com.transsion.audio.player;

import android.text.TextUtils;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.PlayError;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private AudioBean f41775a;

    private final String f41776b;

    private long f41777c;

    private long f41778d;

    private long f41779e;

    private long f41780f;

    private int f41781g;

    private long f41782h;

    private long f41783i;

    private long f41784j;

    private int f41785k;

    private long f41786l;

    private long f41787m;

    private Integer f41788n;

    public a(AudioBean audioBean) {
        Intrinsics.h(audioBean, "audioBean");
        this.f41776b = a.class.getSimpleName();
        this.f41775a = audioBean;
        this.f41777c = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "initView", false, 4, null);
    }

    private final void a() {
        String postId;
        String subjectId;
        Long duration;
        String ops;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AudioBean audioBean = this.f41775a;
        String str = "";
        if (audioBean == null || (postId = audioBean.getPostId()) == null) {
            postId = "";
        }
        linkedHashMap.put("post_id", postId);
        AudioBean audioBean2 = this.f41775a;
        if (audioBean2 == null || (subjectId = audioBean2.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        AudioBean audioBean3 = this.f41775a;
        if (!TextUtils.isEmpty(audioBean3 != null ? audioBean3.getOps() : null)) {
            AudioBean audioBean4 = this.f41775a;
            if (audioBean4 != null && (ops = audioBean4.getOps()) != null) {
                str = ops;
            }
            linkedHashMap.put("ops", str);
        }
        if (this.f41778d > 0) {
            linkedHashMap.put("is_start", "1");
            linkedHashMap.put("delay_v", String.valueOf(this.f41778d - this.f41777c));
            linkedHashMap.put("buffer_time", String.valueOf(this.f41779e));
            linkedHashMap.put("buffer_count", String.valueOf(this.f41781g));
            float f10 = this.f41782h;
            AudioBean audioBean5 = this.f41775a;
            linkedHashMap.put("play_complete", String.valueOf(((f10 / ((audioBean5 == null || (duration = audioBean5.getDuration()) == null) ? 1L : duration.longValue())) * 100.0f) + (this.f41785k * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f41784j));
            linkedHashMap.put("pause_duration", String.valueOf(this.f41787m));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", String.valueOf(System.currentTimeMillis() - this.f41777c));
        }
        Integer num = this.f41788n;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        qi.h.f69682a.C("postdetail", "audio_play", this.f41784j, linkedHashMap);
    }

    public final void b() {
        a();
    }

    public final void c() {
        if (this.f41778d > 0) {
            this.f41780f = System.currentTimeMillis();
        }
    }

    public final void d() {
        if (this.f41780f > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f41780f;
            this.f41780f = jCurrentTimeMillis;
            this.f41779e += jCurrentTimeMillis;
            this.f41781g++;
        }
    }

    public final void e(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f41788n = errorInfo.getErrorCode();
    }

    public final void f(long j10) {
        long j11 = this.f41783i;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 1000) {
            this.f41784j += j10 - j11;
        }
        this.f41783i = j10;
        if (j10 > this.f41782h) {
            this.f41782h = j10;
        }
    }

    public final void g() {
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "onRenderFirstFrame", false, 4, null);
        if (this.f41778d > 0) {
            return;
        }
        this.f41778d = System.currentTimeMillis();
    }

    public final void h() {
        this.f41786l = System.currentTimeMillis();
    }

    public final void i() {
        if (this.f41786l != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f41786l;
            this.f41786l = jCurrentTimeMillis;
            this.f41787m += jCurrentTimeMillis;
        }
    }
}
