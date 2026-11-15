package com.bytedance.sdk.component.adexpress.EjP;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.HardwareRenderer;
import android.graphics.Paint;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.compose.foundation.i;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Array;
import k6.d;
import k6.e;
import k6.f;

public class Sj {
    public static Bitmap Sj(Context context, Bitmap bitmap, int i10) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.2f), Math.round(bitmap.getHeight() * 0.2f), false);
            if (com.bytedance.sdk.component.adexpress.EjP.EjP() == 0) {
                return sP(context, bitmapCreateScaledBitmap, i10);
            }
            return com.bytedance.sdk.component.adexpress.EjP.EjP() == 1 ? Sj(bitmapCreateScaledBitmap, i10) : sP(bitmapCreateScaledBitmap, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0089 A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:49:0x008f A[DONT_GENERATE, DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0091 A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0099 A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:56:0x009e A[Catch: all -> 0x0095, DONT_GENERATE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3 A[Catch: all -> 0x0095, DONT_GENERATE, TRY_LEAVE, TryCatch #3 {all -> 0x0095, blocks: (B:45:0x007f, B:47:0x0089, B:50:0x0091, B:54:0x0099, B:56:0x009e, B:58:0x00a3), top: B:86:0x007f }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.renderscript.BaseObj] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.renderscript.BaseObj, android.renderscript.ScriptIntrinsicBlur] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.renderscript.Allocation] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.renderscript.Allocation] */
    public static Bitmap sP(Context context, Bitmap bitmap, int i10) {
        RenderScript renderScriptCreate;
        Allocation allocationCreateFromBitmap;
        ?? Create;
        ?? CreateFromBitmap;
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC;
        boolean zDNu;
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap);
            renderScriptCreate = RenderScript.create(context);
            if (renderScriptCreate == null) {
                try {
                    com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC2 = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
                    if (TKC2 != null && TKC2.dNu() && renderScriptCreate != null) {
                        RenderScript.releaseAllContexts();
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
                return null;
            }
            try {
                Create = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                try {
                    allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
                    try {
                        CreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                        try {
                            Create.setRadius(i10);
                            Create.setInput(allocationCreateFromBitmap);
                            Create.forEach(CreateFromBitmap);
                            CreateFromBitmap.copyTo(bitmapCreateBitmap);
                            try {
                                com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC3 = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
                                if (TKC3 != null && TKC3.dNu()) {
                                    RenderScript.releaseAllContexts();
                                    if (allocationCreateFromBitmap != null) {
                                        allocationCreateFromBitmap.destroy();
                                    }
                                    CreateFromBitmap.destroy();
                                    Create.destroy();
                                }
                            } catch (Throwable th3) {
                                th3.getMessage();
                            }
                            return bitmapCreateBitmap;
                        } catch (Throwable th4) {
                            th = th4;
                            try {
                                th.getMessage();
                                try {
                                    if (TKC != null) {
                                        return null;
                                    }
                                    if (zDNu) {
                                        return null;
                                    }
                                    if (Create != 0) {
                                        return null;
                                    }
                                    return null;
                                } catch (Throwable th5) {
                                    return null;
                                }
                            } finally {
                                try {
                                    TKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
                                    if (TKC != null && TKC.dNu()) {
                                        if (renderScriptCreate != null) {
                                            RenderScript.releaseAllContexts();
                                        }
                                        if (allocationCreateFromBitmap != null) {
                                            allocationCreateFromBitmap.destroy();
                                        }
                                        if (CreateFromBitmap != 0) {
                                            CreateFromBitmap.destroy();
                                        }
                                        if (Create != 0) {
                                            Create.destroy();
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th6.getMessage();
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        CreateFromBitmap = 0;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    allocationCreateFromBitmap = null;
                    CreateFromBitmap = 0;
                }
            } catch (Throwable th9) {
                th = th9;
                allocationCreateFromBitmap = null;
                Create = allocationCreateFromBitmap;
                CreateFromBitmap = Create;
                th.getMessage();
                if (TKC != null) {
                    return null;
                }
                if (zDNu) {
                    return null;
                }
                if (Create != 0) {
                    return null;
                }
                return null;
            }
        } catch (Throwable th10) {
            th = th10;
            renderScriptCreate = null;
            allocationCreateFromBitmap = null;
        }
    }

    public static Bitmap Sj(Bitmap bitmap, int i10) {
        int i11 = i10;
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i12 = width * height;
            int[] iArr = new int[i12];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            int i13 = width - 1;
            int i14 = height - 1;
            int i15 = i11 + i11;
            int i16 = i15 + 1;
            int i17 = (i15 + 2) >> 1;
            int i18 = i17 * i17;
            int[] iArr2 = new int[Math.max(width, height)];
            int i19 = i18 * 256;
            int[] iArr3 = new int[i19];
            int[] iArr4 = new int[i12];
            int[] iArr5 = new int[i12];
            int[] iArr6 = new int[i12];
            for (int i20 = 0; i20 < i19; i20++) {
                iArr3[i20] = i20 / i18;
            }
            int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i16, 3);
            int i21 = i11 + 1;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i22 < height) {
                int i25 = -i11;
                int i26 = 0;
                int i27 = 0;
                int i28 = 0;
                int i29 = 0;
                int i30 = 0;
                int i31 = 0;
                int i32 = 0;
                int i33 = 0;
                int i34 = 0;
                while (i25 <= i11) {
                    int i35 = i14;
                    int i36 = height;
                    int i37 = iArr[i23 + Math.min(i13, Math.max(i25, 0))];
                    int[] iArr8 = iArr7[i25 + i11];
                    iArr8[0] = (i37 & 16711680) >> 16;
                    iArr8[1] = (i37 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    iArr8[2] = i37 & 255;
                    int iAbs = i21 - Math.abs(i25);
                    int i38 = iArr8[0];
                    i26 += i38 * iAbs;
                    int i39 = iArr8[1];
                    i27 += i39 * iAbs;
                    int i40 = iArr8[2];
                    i28 += iAbs * i40;
                    if (i25 <= 0) {
                        i30 += i38;
                        i32 += i39;
                        i34 += i40;
                    } else {
                        i29 += i38;
                        i31 += i39;
                        i33 += i40;
                    }
                    i25++;
                    height = i36;
                    i14 = i35;
                }
                int i41 = i14;
                int i42 = height;
                int i43 = i11;
                int i44 = 0;
                while (i44 < width) {
                    iArr4[i23] = iArr3[i26];
                    iArr5[i23] = iArr3[i27];
                    iArr6[i23] = iArr3[i28];
                    int[] iArr9 = iArr7[((i43 - i11) + i16) % i16];
                    int i45 = i26 - i30;
                    int i46 = i27 - i32;
                    int i47 = i28 - i34;
                    int i48 = i30 - iArr9[0];
                    int i49 = i32 - iArr9[1];
                    int i50 = i34 - iArr9[2];
                    if (i22 == 0) {
                        iArr2[i44] = Math.min(i44 + i11 + 1, i13);
                    }
                    int i51 = iArr[i24 + iArr2[i44]];
                    int i52 = (i51 & 16711680) >> 16;
                    iArr9[0] = i52;
                    int i53 = (i51 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    iArr9[1] = i53;
                    int i54 = i51 & 255;
                    iArr9[2] = i54;
                    int i55 = i29 + i52;
                    int i56 = i31 + i53;
                    int i57 = i33 + i54;
                    i43 = (i43 + 1) % i16;
                    int[] iArr10 = iArr7[i43 % i16];
                    i26 = i45 + i55;
                    i27 = i46 + i56;
                    i28 = i47 + i57;
                    int i58 = iArr10[0];
                    i29 = i55 - i58;
                    int i59 = iArr10[1];
                    i31 = i56 - i59;
                    int i60 = iArr10[2];
                    i33 = i57 - i60;
                    i30 = i48 + i58;
                    i32 = i49 + i59;
                    i34 = i50 + i60;
                    i23++;
                    i44++;
                    iArr3 = iArr3;
                }
                i24 += width;
                i22++;
                height = i42;
                i14 = i41;
            }
            int i61 = i14;
            int i62 = height;
            int[] iArr11 = iArr3;
            int i63 = 0;
            while (i63 < width) {
                int i64 = -i11;
                int i65 = i64 * width;
                int i66 = 0;
                int i67 = 0;
                int i68 = 0;
                int i69 = 0;
                int i70 = 0;
                int i71 = 0;
                int i72 = 0;
                int i73 = 0;
                int i74 = 0;
                while (i64 <= i11) {
                    int[] iArr12 = iArr7[i64 + i11];
                    int[] iArr13 = iArr2;
                    int iMax = Math.max(0, i65) + i63;
                    int iAbs2 = i21 - Math.abs(i64);
                    int i75 = iArr4[iMax];
                    i66 += i75 * iAbs2;
                    i67 += iArr5[iMax] * iAbs2;
                    i68 += iArr6[iMax] * iAbs2;
                    iArr12[0] = i75;
                    int i76 = iArr5[iMax];
                    iArr12[1] = i76;
                    int i77 = iArr6[iMax];
                    iArr12[2] = i77;
                    if (i64 <= 0) {
                        i70 += i75;
                        i72 += i76;
                        i74 += i77;
                    } else {
                        i69 += i75;
                        i71 += i76;
                        i73 += i77;
                    }
                    int i78 = i61;
                    if (i64 < i78) {
                        i65 += width;
                    }
                    i64++;
                    i61 = i78;
                    iArr2 = iArr13;
                }
                int[] iArr14 = iArr2;
                int i79 = i61;
                int i80 = i11;
                int i81 = i63;
                int i82 = i62;
                int i83 = 0;
                while (i83 < i82) {
                    iArr[i81] = (iArr[i81] & ViewCompat.MEASURED_STATE_MASK) | (iArr11[i66] << 16) | (iArr11[i67] << 8) | iArr11[i68];
                    int[] iArr15 = iArr7[((i80 - i11) + i16) % i16];
                    int i84 = i66 - i70;
                    int i85 = i67 - i72;
                    int i86 = i68 - i74;
                    int i87 = i70 - iArr15[0];
                    int i88 = i72 - iArr15[1];
                    int i89 = i74 - iArr15[2];
                    if (i63 == 0) {
                        iArr14[i83] = Math.min(i83 + i21, i79) * width;
                    }
                    int i90 = iArr14[i83] + i63;
                    int i91 = iArr4[i90];
                    iArr15[0] = i91;
                    int i92 = iArr5[i90];
                    iArr15[1] = i92;
                    int i93 = iArr6[i90];
                    iArr15[2] = i93;
                    int i94 = i69 + i91;
                    int i95 = i71 + i92;
                    int i96 = i73 + i93;
                    i66 = i84 + i94;
                    i67 = i85 + i95;
                    i68 = i86 + i96;
                    i80 = (i80 + 1) % i16;
                    int[] iArr16 = iArr7[i80];
                    int i97 = iArr16[0];
                    i69 = i94 - i97;
                    int i98 = iArr16[1];
                    i71 = i95 - i98;
                    int i99 = iArr16[2];
                    i73 = i96 - i99;
                    i70 = i87 + i97;
                    i72 = i88 + i98;
                    i74 = i89 + i99;
                    i81 += width;
                    i83++;
                    i11 = i10;
                }
                i63++;
                i11 = i10;
                i62 = i82;
                i61 = i79;
                iArr2 = iArr14;
            }
            bitmap.setPixels(iArr, 0, width, 0, 0, width, i62);
            return bitmap;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    public static Bitmap sP(Bitmap bitmap, int i10) {
        try {
            if (Build.VERSION.SDK_INT >= 31) {
                ImageReader imageReaderNewInstance = ImageReader.newInstance(bitmap.getWidth(), bitmap.getHeight(), 1, 1, 768L);
                e.a();
                RenderNode renderNodeA = i.a("BlurEffect");
                f.a();
                HardwareRenderer hardwareRendererA = d.a();
                hardwareRendererA.setSurface(imageReaderNewInstance.getSurface());
                hardwareRendererA.setContentRoot(renderNodeA);
                renderNodeA.setPosition(0, 0, imageReaderNewInstance.getWidth(), imageReaderNewInstance.getHeight());
                float f10 = i10;
                renderNodeA.setRenderEffect(RenderEffect.createBlurEffect(f10, f10, Shader.TileMode.MIRROR));
                renderNodeA.beginRecording().drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                renderNodeA.endRecording();
                hardwareRendererA.createRenderRequest().setWaitForPresent(true).syncAndDraw();
                Image imageAcquireNextImage = imageReaderNewInstance.acquireNextImage();
                HardwareBuffer hardwareBuffer = imageAcquireNextImage.getHardwareBuffer();
                Bitmap bitmapWrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBuffer, null);
                hardwareBuffer.close();
                imageAcquireNextImage.close();
                imageReaderNewInstance.close();
                renderNodeA.discardDisplayList();
                hardwareRendererA.destroy();
                return bitmapWrapHardwareBuffer;
            }
            return Sj(bitmap, i10);
        } catch (Throwable th2) {
            th2.getMessage();
            return Sj(bitmap, i10);
        }
    }
}
