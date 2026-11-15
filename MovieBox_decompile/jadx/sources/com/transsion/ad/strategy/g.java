package com.transsion.ad.strategy;

import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class g {

    public static final g f41182a = new g();

    private g() {
    }

    private final String b() {
        String simpleName = g.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final boolean a(String str, String destination) {
        InputStream inputStreamByteStream;
        Intrinsics.h(destination, "destination");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Response responseExecute = FirebasePerfOkHttpClient.execute(wh.b.f74279a.d().newCall(new Request.Builder().url(str == null ? "" : str).build()));
            if (!responseExecute.isSuccessful()) {
                xh.a.e(xh.a.f75336a, null, f41182a.b() + " --> downloadFile() --> 素材加载失败 --> destination = " + destination + " --> response = " + responseExecute.message() + " --> url = " + str, 6, false, 9, null);
                return false;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null || (inputStreamByteStream = responseBodyBody.byteStream()) == null) {
                g gVar = f41182a;
                xh.a.e(xh.a.f75336a, null, gVar.b() + " --> downloadFile() --> 素材加载失败 --> response.body() == null || response.body?.byteStream()", 0, false, 13, null);
                return false;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(destination);
                    try {
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i10 = bufferedInputStream.read(bArr);
                            if (i10 == -1) {
                                Unit unit = Unit.f64096a;
                                CloseableKt.a(fileOutputStream, null);
                                CloseableKt.a(bufferedInputStream, null);
                                CloseableKt.a(inputStreamByteStream, null);
                                return true;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(bufferedInputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.a(fileOutputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    throw th5;
                }
            } catch (Throwable th6) {
                try {
                    throw th6;
                } catch (Throwable th7) {
                    CloseableKt.a(inputStreamByteStream, th6);
                    throw th7;
                }
            }
        } catch (Throwable th8) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(Result.m453constructorimpl(ResultKt.a(th8)));
            if (thM456exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            xh.a.e(xh.a.f75336a, null, f41182a.b() + " --> downloadFile() --> 素材加载失败 --> destination = " + destination + " --> it = " + thM456exceptionOrNullimpl + " --> url = " + str, 6, false, 9, null);
            return false;
        }
    }
}
