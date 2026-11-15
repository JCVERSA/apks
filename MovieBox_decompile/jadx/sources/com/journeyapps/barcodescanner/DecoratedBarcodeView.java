package com.journeyapps.barcodescanner;

import af.h;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.zxing.client.android.R$id;
import com.google.zxing.client.android.R$layout;
import com.google.zxing.client.android.R$styleable;
import com.google.zxing.k;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.journeyapps.barcodescanner.camera.i;
import id.f;
import id.g;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DecoratedBarcodeView extends FrameLayout {

    private BarcodeView f33079a;

    private ViewfinderView f33080b;

    private TextView f33081c;

    public interface a {
    }

    private class b implements af.a {

        private af.a f33082a;

        public b(af.a aVar) {
            this.f33082a = aVar;
        }

        @Override
        public void a(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DecoratedBarcodeView.this.f33080b.addPossibleResultPoint((k) it.next());
            }
            this.f33082a.a(list);
        }

        @Override
        public void b(af.c cVar) {
            this.f33082a.b(cVar);
        }
    }

    public DecoratedBarcodeView(Context context) {
        super(context);
        b();
    }

    private void b() {
        c(null);
    }

    private void c(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.zxing_view);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.zxing_view_zxing_scanner_layout, R$layout.zxing_barcode_scanner);
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(R$id.zxing_barcode_surface);
        this.f33079a = barcodeView;
        if (barcodeView == null) {
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\".");
        }
        barcodeView.p(attributeSet);
        ViewfinderView viewfinderView = (ViewfinderView) findViewById(R$id.zxing_viewfinder_view);
        this.f33080b = viewfinderView;
        if (viewfinderView == null) {
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\".");
        }
        viewfinderView.setCameraPreview(this.f33079a);
        this.f33081c = (TextView) findViewById(R$id.zxing_status_view);
    }

    public void changeCameraParameters(i iVar) {
        this.f33079a.changeCameraParameters(iVar);
    }

    public void decodeContinuous(af.a aVar) {
        this.f33079a.decodeContinuous(new b(aVar));
    }

    public void decodeSingle(af.a aVar) {
        this.f33079a.decodeSingle(new b(aVar));
    }

    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(R$id.zxing_barcode_surface);
    }

    public CameraSettings getCameraSettings() {
        return this.f33079a.getCameraSettings();
    }

    public h getDecoderFactory() {
        return this.f33079a.getDecoderFactory();
    }

    public TextView getStatusView() {
        return this.f33081c;
    }

    public ViewfinderView getViewFinder() {
        return this.f33080b;
    }

    public void initializeFromIntent(Intent intent) {
        int intExtra;
        Set setA = f.a(intent);
        Map mapA = g.a(intent);
        CameraSettings cameraSettings = new CameraSettings();
        if (intent.hasExtra("SCAN_CAMERA_ID") && (intExtra = intent.getIntExtra("SCAN_CAMERA_ID", -1)) >= 0) {
            cameraSettings.i(intExtra);
        }
        if (intent.hasExtra("TORCH_ENABLED") && intent.getBooleanExtra("TORCH_ENABLED", false)) {
            setTorchOn();
        }
        String stringExtra = intent.getStringExtra("PROMPT_MESSAGE");
        if (stringExtra != null) {
            setStatusText(stringExtra);
        }
        int intExtra2 = intent.getIntExtra("SCAN_TYPE", 0);
        String stringExtra2 = intent.getStringExtra("CHARACTER_SET");
        new com.google.zxing.f().e(mapA);
        this.f33079a.setCameraSettings(cameraSettings);
        this.f33079a.setDecoderFactory(new af.k(setA, mapA, stringExtra2, intExtra2));
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 24) {
            setTorchOn();
            return true;
        }
        if (i10 == 25) {
            setTorchOff();
            return true;
        }
        if (i10 == 27 || i10 == 80) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    public void pause() {
        this.f33079a.pause();
    }

    public void pauseAndWait() {
        this.f33079a.pauseAndWait();
    }

    public void resume() {
        this.f33079a.resume();
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.f33079a.setCameraSettings(cameraSettings);
    }

    public void setDecoderFactory(h hVar) {
        this.f33079a.setDecoderFactory(hVar);
    }

    public void setStatusText(String str) {
        TextView textView = this.f33081c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTorchListener(a aVar) {
    }

    public void setTorchOff() {
        this.f33079a.setTorch(false);
    }

    public void setTorchOn() {
        this.f33079a.setTorch(true);
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c(attributeSet);
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c(attributeSet);
    }
}
