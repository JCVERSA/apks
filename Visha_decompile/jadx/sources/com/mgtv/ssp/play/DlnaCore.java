package com.mgtv.ssp.play;

import android.content.Context;
import com.mgtv.ssp.play.dlnasdk.DlnaInfo;
import com.mgtv.ssp.play.dlnasdk.OnDlnaListener;
import com.mgtv.thirdsdk.a.a;

public class DlnaCore {
    a mDlnaControl;
    private OnDlnaListener mOnDlnaListener;

    public void dlnaPrepare(String str, int i) {
        this.mDlnaControl.a(str, i);
        this.mDlnaControl.a(new com.mgtv.thirdsdk.a.a.a() {
            @Override
            public void onDlnaError(String str2) {
                if (DlnaCore.this.mOnDlnaListener != null) {
                    DlnaCore.this.mOnDlnaListener.onDlnaError(str2);
                }
            }

            @Override
            public void onDlnaPrepare(DlnaInfo dlnaInfo) {
                if (DlnaCore.this.mOnDlnaListener != null) {
                    DlnaCore.this.mOnDlnaListener.onDlnaPrepared(dlnaInfo);
                }
            }
        });
    }

    public void init(Context context) {
        if (context != null) {
            a aVar = new a();
            this.mDlnaControl = aVar;
            aVar.a(context);
        }
    }

    public void setOnDlnaListener(OnDlnaListener onDlnaListener) {
        this.mOnDlnaListener = onDlnaListener;
    }
}
