package com.transsion.aicore.nexusflow;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import defpackage.p2d;
import defpackage.q14;
import defpackage.x09;
import defpackage.y45;
import defpackage.zfb;

public final class a$e extends IFlowCallback.Stub {
    public final p2d a;
    public final q14 b;

    public a$e(p2d p2dVar, q14 q14Var) {
    }

    @Override
    public final void onResult(Bundle bundle) {
        y45.j(bundle, "result");
        x09 x09Var = x09.a;
        String strA = p2d.a(null);
        q14 q14Var = this.b;
        try {
            Log.v(strA, "Executing safe operation");
            Log.d(p2d.a(null), "Received result from service");
            if (q14Var == null) {
                Log.w("FlowResultCallback", "Callback is null, skipping execution");
            } else {
                try {
                    q14Var.onResult(bundle);
                } catch (Error e) {
                    Log.e("FlowResultCallback", "Safe callback execution failed with Error: " + e.getMessage(), e);
                } catch (Exception e2) {
                    Log.e("FlowResultCallback", "Safe callback execution failed: " + e2.getMessage(), e2);
                } catch (Throwable th) {
                    Log.e("FlowResultCallback", "Safe callback execution failed with Throwable: " + th.getMessage(), th);
                }
            }
            zfb zfbVar = zfb.a;
        } catch (Error e3) {
            Log.e(strA, "Safe execution failed with Error: " + e3.getMessage(), e3);
        } catch (Exception e4) {
            Log.e(strA, "Safe execution failed: " + e4.getMessage(), e4);
        } catch (Throwable th2) {
            Log.e(strA, "Safe execution failed with Throwable: " + th2.getMessage(), th2);
        }
    }

    @Override
    public final void onStreamResult(Bundle bundle, ParcelFileDescriptor parcelFileDescriptor) {
        x09 x09Var = x09.a;
        String strA = p2d.a(null);
        q14 q14Var = this.b;
        try {
            Log.v(strA, "Executing safe operation");
            if (parcelFileDescriptor != null) {
                Log.d(p2d.a(null), "Received stream result with audio");
            } else {
                Log.d(p2d.a(null), "Received stream result without audio");
            }
            if (q14Var == null) {
                Log.w("FlowResultCallback", "Callback is null, skipping execution");
            } else {
                try {
                    q14Var.onStreamResult(bundle, parcelFileDescriptor);
                } catch (Error e) {
                    Log.e("FlowResultCallback", "Safe callback execution failed with Error: " + e.getMessage(), e);
                } catch (Exception e2) {
                    Log.e("FlowResultCallback", "Safe callback execution failed: " + e2.getMessage(), e2);
                } catch (Throwable th) {
                    Log.e("FlowResultCallback", "Safe callback execution failed with Throwable: " + th.getMessage(), th);
                }
            }
            zfb zfbVar = zfb.a;
        } catch (Error e3) {
            Log.e(strA, "Safe execution failed with Error: " + e3.getMessage(), e3);
        } catch (Exception e4) {
            Log.e(strA, "Safe execution failed: " + e4.getMessage(), e4);
        } catch (Throwable th2) {
            Log.e(strA, "Safe execution failed with Throwable: " + th2.getMessage(), th2);
        }
    }
}
