package com.journeyapps.barcodescanner;

import af.g;
import af.h;
import af.i;
import af.j;
import af.k;
import af.s;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import com.google.zxing.DecodeHintType;
import com.google.zxing.client.android.R$id;
import java.util.HashMap;
import java.util.List;

public class BarcodeView extends CameraPreview {
    private DecodeMode B;
    private af.a C;
    private j D;
    private h E;
    private Handler F;
    private final Handler.Callback G;

    private enum DecodeMode {
        NONE,
        SINGLE,
        CONTINUOUS
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == R$id.zxing_decode_succeeded) {
                af.c cVar = (af.c) message.obj;
                if (cVar != null && BarcodeView.this.C != null && BarcodeView.this.B != DecodeMode.NONE) {
                    BarcodeView.this.C.b(cVar);
                    if (BarcodeView.this.B == DecodeMode.SINGLE) {
                        BarcodeView.this.stopDecoding();
                    }
                }
                return true;
            }
            if (i10 == R$id.zxing_decode_failed) {
                return true;
            }
            if (i10 != R$id.zxing_possible_result_points) {
                return false;
            }
            List list = (List) message.obj;
            if (BarcodeView.this.C != null && BarcodeView.this.B != DecodeMode.NONE) {
                BarcodeView.this.C.a(list);
            }
            return true;
        }
    }

    public BarcodeView(Context context) {
        super(context);
        this.B = DecodeMode.NONE;
        this.C = null;
        this.G = new a();
        C();
    }

    private g A() {
        if (this.E == null) {
            this.E = B();
        }
        i iVar = new i();
        HashMap map = new HashMap();
        map.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, iVar);
        g gVarA = this.E.a(map);
        iVar.b(gVarA);
        return gVarA;
    }

    private void C() {
        this.E = new k();
        this.F = new Handler(this.G);
    }

    private void D() {
        E();
        if (this.B == DecodeMode.NONE || !isPreviewActive()) {
            return;
        }
        j jVar = new j(getCameraInstance(), A(), this.F);
        this.D = jVar;
        jVar.i(getPreviewFramingRect());
        this.D.k();
    }

    private void E() {
        j jVar = this.D;
        if (jVar != null) {
            jVar.l();
            this.D = null;
        }
    }

    protected h B() {
        return new k();
    }

    public void decodeContinuous(af.a aVar) {
        this.B = DecodeMode.CONTINUOUS;
        this.C = aVar;
        D();
    }

    public void decodeSingle(af.a aVar) {
        this.B = DecodeMode.SINGLE;
        this.C = aVar;
        D();
    }

    public h getDecoderFactory() {
        return this.E;
    }

    @Override
    public void pause() {
        E();
        super.pause();
    }

    @Override
    protected void s() {
        super.s();
        D();
    }

    public void setDecoderFactory(h hVar) {
        s.a();
        this.E = hVar;
        j jVar = this.D;
        if (jVar != null) {
            jVar.j(A());
        }
    }

    public void stopDecoding() {
        this.B = DecodeMode.NONE;
        this.C = null;
        E();
    }

    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.B = DecodeMode.NONE;
        this.C = null;
        this.G = new a();
        C();
    }

    public BarcodeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.B = DecodeMode.NONE;
        this.C = null;
        this.G = new a();
        C();
    }
}
