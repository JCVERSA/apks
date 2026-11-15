package com.transsion.mbwidget.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.transsion.mbwidget.R$mipmap;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;
import ni.g;

public final class BitmapUtils {

    public static final BitmapUtils f44915a = new BitmapUtils();

    private BitmapUtils() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:33|22|(1:24)) */
    /* JADX WARN: Code duplicated, block: B:24:0x0068 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x0092  */
    /* JADX WARN: Code duplicated, block: B:32:0x0098 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
    
        r7 = r0;
        r0 = r12;
        r12 = r2;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x006b -> B:16:0x0039). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Context context, String str, int i10, Continuation continuation) {
        BitmapUtils$loadImageWithRetry$1 bitmapUtils$loadImageWithRetry$1;
        Context context2;
        int i11;
        int i12;
        String str2;
        if (continuation instanceof BitmapUtils$loadImageWithRetry$1) {
            bitmapUtils$loadImageWithRetry$1 = (BitmapUtils$loadImageWithRetry$1) continuation;
            int i13 = bitmapUtils$loadImageWithRetry$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                bitmapUtils$loadImageWithRetry$1.label = i13 - Integer.MIN_VALUE;
            } else {
                bitmapUtils$loadImageWithRetry$1 = new BitmapUtils$loadImageWithRetry$1(this, continuation);
            }
        } else {
            bitmapUtils$loadImageWithRetry$1 = new BitmapUtils$loadImageWithRetry$1(this, continuation);
        }
        Object objG = bitmapUtils$loadImageWithRetry$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = bitmapUtils$loadImageWithRetry$1.label;
        if (i14 == 0) {
            ResultKt.b(objG);
            context2 = context;
            i11 = 0;
            i12 = i10;
            str2 = str;
            if (i11 < i12) {
                return null;
            }
            i0 i0VarB = y0.b();
            BitmapUtils$loadImageWithRetry$2 bitmapUtils$loadImageWithRetry$2 = new BitmapUtils$loadImageWithRetry$2(context2, str2, null);
            bitmapUtils$loadImageWithRetry$1.L$0 = context2;
            bitmapUtils$loadImageWithRetry$1.L$1 = str2;
            bitmapUtils$loadImageWithRetry$1.I$0 = i12;
            bitmapUtils$loadImageWithRetry$1.I$1 = i11;
            bitmapUtils$loadImageWithRetry$1.label = 1;
            objG = i.g(i0VarB, bitmapUtils$loadImageWithRetry$2, bitmapUtils$loadImageWithRetry$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i14 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i11 = bitmapUtils$loadImageWithRetry$1.I$1;
            int i15 = bitmapUtils$loadImageWithRetry$1.I$0;
            str2 = (String) bitmapUtils$loadImageWithRetry$1.L$1;
            Context context3 = (Context) bitmapUtils$loadImageWithRetry$1.L$0;
            try {
                ResultKt.b(objG);
            } catch (Exception e10) {
                Exception e11 = e10;
                BitmapUtils$loadImageWithRetry$1 bitmapUtils$loadImageWithRetry$3 = bitmapUtils$loadImageWithRetry$1;
                int i16 = i15;
                context2 = context3;
                BitmapUtils$loadImageWithRetry$1 bitmapUtils$loadImageWithRetry$4 = bitmapUtils$loadImageWithRetry$3;
                i11++;
                wf.a.f74274a.c("DeskWidget_", "load Bitmap Failed-attempt-" + i11 + " :" + str2, true);
                if (i11 == i16) {
                    e11.printStackTrace();
                }
                i12 = i16;
                bitmapUtils$loadImageWithRetry$1 = bitmapUtils$loadImageWithRetry$4;
                if (i11 < i12) {
                    return null;
                }
                i0 i0VarB2 = y0.b();
                BitmapUtils$loadImageWithRetry$2 bitmapUtils$loadImageWithRetry$5 = new BitmapUtils$loadImageWithRetry$2(context2, str2, null);
                bitmapUtils$loadImageWithRetry$1.L$0 = context2;
                bitmapUtils$loadImageWithRetry$1.L$1 = str2;
                bitmapUtils$loadImageWithRetry$1.I$0 = i12;
                bitmapUtils$loadImageWithRetry$1.I$1 = i11;
                bitmapUtils$loadImageWithRetry$1.label = 1;
                objG = i.g(i0VarB2, bitmapUtils$loadImageWithRetry$5, bitmapUtils$loadImageWithRetry$1);
                if (objG == objF) {
                    return objF;
                }
            }
        }
        return objG;
    }

    static Object f(BitmapUtils bitmapUtils, Context context, String str, int i10, Continuation continuation, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 2;
        }
        return bitmapUtils.e(context, str, i10, continuation);
    }

    public final Bitmap b(int i10) {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(Utils.a().getResources(), i10);
        Intrinsics.g(bitmapDecodeResource, "decodeResource(...)");
        return bitmapDecodeResource;
    }

    public final Bitmap c() {
        return b(R$mipmap.ic_default_cover);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object d(Context context, String str, int i10, Continuation continuation) {
        BitmapUtils$loadBitmap$1 bitmapUtils$loadBitmap$1;
        Bitmap.Config config;
        if (continuation instanceof BitmapUtils$loadBitmap$1) {
            bitmapUtils$loadBitmap$1 = (BitmapUtils$loadBitmap$1) continuation;
            int i11 = bitmapUtils$loadBitmap$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bitmapUtils$loadBitmap$1.label = i11 - Integer.MIN_VALUE;
            } else {
                bitmapUtils$loadBitmap$1 = new BitmapUtils$loadBitmap$1(this, continuation);
            }
        } else {
            bitmapUtils$loadBitmap$1 = new BitmapUtils$loadBitmap$1(this, continuation);
        }
        Object objF = bitmapUtils$loadBitmap$1.result;
        Object objF2 = IntrinsicsKt.f();
        int i12 = bitmapUtils$loadBitmap$1.label;
        if (i12 == 0) {
            ResultKt.b(objF);
            if (str == null || str.length() == 0) {
                return null;
            }
            r0 r0VarB = k.b(o0.a(y0.b()), null, null, new BitmapUtils$loadBitmap$bitmap$1(context, g.f67301a.a(str, i10 <= 0 ? y.e() : RangesKt.h(i10, y.e()), (120 & 4) != 0, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? 0 : 0), null), 3, null);
            bitmapUtils$loadBitmap$1.label = 1;
            objF = r0VarB.f(bitmapUtils$loadBitmap$1);
            if (objF == objF2) {
                return objF2;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objF);
        }
        Bitmap bitmap = (Bitmap) objF;
        if (bitmap == null || bitmap.isRecycled() || (config = bitmap.getConfig()) == null) {
            return null;
        }
        return bitmap.copy(config, true);
    }
}
