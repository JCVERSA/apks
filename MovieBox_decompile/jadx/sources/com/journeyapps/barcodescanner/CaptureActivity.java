package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import com.google.zxing.client.android.R$id;
import com.google.zxing.client.android.R$layout;

public class CaptureActivity extends Activity {

    private d f33077a;

    private DecoratedBarcodeView f33078b;

    protected DecoratedBarcodeView a() {
        setContentView(R$layout.zxing_capture);
        return (DecoratedBarcodeView) findViewById(R$id.zxing_barcode_scanner);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f33078b = a();
        d dVar = new d(this, this.f33078b);
        this.f33077a = dVar;
        dVar.p(getIntent(), bundle);
        this.f33077a.l();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.f33077a.u();
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        return this.f33078b.onKeyDown(i10, keyEvent) || super.onKeyDown(i10, keyEvent);
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.f33077a.v();
    }

    @Override
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.f33077a.w(i10, strArr, iArr);
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.f33077a.x();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f33077a.y(bundle);
    }
}
