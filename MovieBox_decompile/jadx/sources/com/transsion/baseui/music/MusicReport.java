package com.transsion.baseui.music;

import android.text.TextUtils;
import com.google.common.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class MusicReport {

    public static final MusicReport f42301a = new MusicReport();

    private MusicReport() {
    }

    public final List b() {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("music_play_duration", "");
        if (TextUtils.isEmpty(string)) {
            return new ArrayList();
        }
        Type type = new TypeToken<List<n>>() {
        }.getType();
        Intrinsics.g(type, "getType(...)");
        Object objE = com.blankj.utilcode.util.o.e(string, type);
        Intrinsics.e(objE);
        return (List) objE;
    }

    public final void c() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<n> listB = f42301a.b();
            if (listB.isEmpty()) {
                return;
            }
            for (n nVar : listB) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("subject_id", String.valueOf(nVar.h()));
                linkedHashMap.put("trace_id", String.valueOf(nVar.d()));
                linkedHashMap.put("ops", String.valueOf(nVar.e()));
                linkedHashMap.put("play_duration", String.valueOf(nVar.f()));
                linkedHashMap.put("total_duration", String.valueOf(nVar.i()));
                linkedHashMap.put("video_bitrate", String.valueOf(nVar.j()));
                linkedHashMap.put("audio_bitrate", String.valueOf(nVar.a()));
                linkedHashMap.put("float_play_duration", String.valueOf(nVar.b()));
                linkedHashMap.put("in_bg_play_duration", String.valueOf(nVar.c()));
                qi.h.f69682a.C("music_play", "music_play", nVar.f(), linkedHashMap);
                com.transsion.player.mediasession.i.f46432a.a("MusicReport --> report() --> 上报播放时长 = " + linkedHashMap);
                com.transsion.baselib.report.launch.b.f42221a.b().remove("music_play_duration");
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.player.mediasession.i.f46432a.b("MusicReport --> report() --> it = " + thM456exceptionOrNullimpl);
    }

    public final void d(n musicPlayDurationBean) {
        Intrinsics.h(musicPlayDurationBean, "musicPlayDurationBean");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new MusicReport$saveLocal$1(musicPlayDurationBean, null), 3, null);
    }
}
