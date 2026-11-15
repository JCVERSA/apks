package com.journeyapps.barcodescanner.camera;

import af.q;
import af.r;
import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class h {

    private static final String f33147n = "h";

    private Camera f33148a;

    private Camera.CameraInfo f33149b;

    private com.journeyapps.barcodescanner.camera.a f33150c;

    private id.b f33151d;

    private boolean f33152e;

    private String f33153f;

    private m f33155h;

    private q f33156i;

    private q f33157j;

    private Context f33159l;

    private CameraSettings f33154g = new CameraSettings();

    private int f33158k = -1;

    private final a f33160m = new a();

    private final class a implements Camera.PreviewCallback {

        private p f33161a;

        private q f33162b;

        public a() {
        }

        public void a(p pVar) {
            this.f33161a = pVar;
        }

        public void b(q qVar) {
            this.f33162b = qVar;
        }

        @Override
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            q qVar = this.f33162b;
            p pVar = this.f33161a;
            if (qVar == null || pVar == null) {
                String unused = h.f33147n;
                if (pVar != null) {
                    pVar.a(new Exception("No resolution available"));
                    return;
                }
                return;
            }
            try {
                if (bArr == null) {
                    throw new NullPointerException("No preview data received");
                }
                r rVar = new r(bArr, qVar.f336a, qVar.f337b, camera.getParameters().getPreviewFormat(), h.this.g());
                if (h.this.f33149b.facing == 1) {
                    rVar.e(true);
                }
                pVar.b(rVar);
            } catch (RuntimeException e10) {
                Log.e(h.f33147n, "Camera preview failed", e10);
                pVar.a(e10);
            }
        }
    }

    public h(Context context) {
        this.f33159l = context;
    }

    private int c() {
        int iC = this.f33155h.c();
        int i10 = 0;
        if (iC != 0) {
            if (iC == 1) {
                i10 = 90;
            } else if (iC == 2) {
                i10 = 180;
            } else if (iC == 3) {
                i10 = 270;
            }
        }
        Camera.CameraInfo cameraInfo = this.f33149b;
        int i11 = cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i10) % 360)) % 360 : ((cameraInfo.orientation - i10) + 360) % 360;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Camera Display Orientation: ");
        sb2.append(i11);
        return i11;
    }

    private Camera.Parameters h() {
        Camera.Parameters parameters = this.f33148a.getParameters();
        String str = this.f33153f;
        if (str == null) {
            this.f33153f = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        return parameters;
    }

    private static List j(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                new q(previewSize.width, previewSize.height);
                arrayList.add(new q(previewSize.width, previewSize.height));
            }
            return arrayList;
        }
        for (Camera.Size size : supportedPreviewSizes) {
            arrayList.add(new q(size.width, size.height));
        }
        return arrayList;
    }

    private void o(int i10) {
        this.f33148a.setDisplayOrientation(i10);
    }

    private void q(boolean z10) {
        Camera.Parameters parametersH = h();
        if (parametersH == null) {
            Log.w(f33147n, "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        String str = f33147n;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Initial camera parameters: ");
        sb2.append(parametersH.flatten());
        if (z10) {
            Log.w(str, "In camera config safe mode -- most settings will not be honored");
        }
        c.g(parametersH, this.f33154g.a(), z10);
        if (!z10) {
            c.k(parametersH, false);
            if (this.f33154g.h()) {
                c.i(parametersH);
            }
            if (this.f33154g.e()) {
                c.c(parametersH);
            }
            if (this.f33154g.g()) {
                c.l(parametersH);
                c.h(parametersH);
                c.j(parametersH);
            }
        }
        List listJ = j(parametersH);
        if (listJ.size() == 0) {
            this.f33156i = null;
        } else {
            q qVarA = this.f33155h.a(listJ, k());
            this.f33156i = qVarA;
            parametersH.setPreviewSize(qVarA.f336a, qVarA.f337b);
        }
        if (Build.DEVICE.equals("glass-1")) {
            c.e(parametersH);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Final camera parameters: ");
        sb3.append(parametersH.flatten());
        this.f33148a.setParameters(parametersH);
    }

    private void s() {
        try {
            int iC = c();
            this.f33158k = iC;
            o(iC);
        } catch (Exception unused) {
            Log.w(f33147n, "Failed to set rotation.");
        }
        try {
            q(false);
        } catch (Exception unused2) {
            try {
                q(true);
            } catch (Exception unused3) {
                Log.w(f33147n, "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera.Size previewSize = this.f33148a.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.f33157j = this.f33156i;
        } else {
            this.f33157j = new q(previewSize.width, previewSize.height);
        }
        this.f33160m.b(this.f33157j);
    }

    public void d(i iVar) {
        Camera camera = this.f33148a;
        if (camera != null) {
            try {
                camera.setParameters(iVar.a(camera.getParameters()));
            } catch (RuntimeException e10) {
                Log.e(f33147n, "Failed to change camera parameters", e10);
            }
        }
    }

    public void e() {
        Camera camera = this.f33148a;
        if (camera != null) {
            camera.release();
            this.f33148a = null;
        }
    }

    public void f() {
        if (this.f33148a == null) {
            throw new RuntimeException("Camera not open");
        }
        s();
    }

    public int g() {
        return this.f33158k;
    }

    public q i() {
        if (this.f33157j == null) {
            return null;
        }
        return k() ? this.f33157j.d() : this.f33157j;
    }

    public boolean k() {
        int i10 = this.f33158k;
        if (i10 != -1) {
            return i10 % 180 != 0;
        }
        throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
    }

    public boolean l() {
        String flashMode;
        Camera.Parameters parameters = this.f33148a.getParameters();
        if (parameters == null || (flashMode = parameters.getFlashMode()) == null) {
            return false;
        }
        return "on".equals(flashMode) || "torch".equals(flashMode);
    }

    public void m() {
        Camera cameraB = jd.a.b(this.f33154g.b());
        this.f33148a = cameraB;
        if (cameraB == null) {
            throw new RuntimeException("Failed to open camera");
        }
        int iA = jd.a.a(this.f33154g.b());
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        this.f33149b = cameraInfo;
        Camera.getCameraInfo(iA, cameraInfo);
    }

    public void n(p pVar) {
        Camera camera = this.f33148a;
        if (camera == null || !this.f33152e) {
            return;
        }
        this.f33160m.a(pVar);
        camera.setOneShotPreviewCallback(this.f33160m);
    }

    public void p(CameraSettings cameraSettings) {
        this.f33154g = cameraSettings;
    }

    public void r(m mVar) {
        this.f33155h = mVar;
    }

    public void t(j jVar) throws IOException {
        jVar.a(this.f33148a);
    }

    public void u(boolean z10) {
        if (this.f33148a != null) {
            try {
                if (z10 != l()) {
                    com.journeyapps.barcodescanner.camera.a aVar = this.f33150c;
                    if (aVar != null) {
                        aVar.j();
                    }
                    Camera.Parameters parameters = this.f33148a.getParameters();
                    c.k(parameters, z10);
                    if (this.f33154g.f()) {
                        c.d(parameters, z10);
                    }
                    this.f33148a.setParameters(parameters);
                    com.journeyapps.barcodescanner.camera.a aVar2 = this.f33150c;
                    if (aVar2 != null) {
                        aVar2.i();
                    }
                }
            } catch (RuntimeException e10) {
                Log.e(f33147n, "Failed to set torch", e10);
            }
        }
    }

    public void v() {
        Camera camera = this.f33148a;
        if (camera == null || this.f33152e) {
            return;
        }
        camera.startPreview();
        this.f33152e = true;
        this.f33150c = new com.journeyapps.barcodescanner.camera.a(this.f33148a, this.f33154g);
        id.b bVar = new id.b(this.f33159l, this, this.f33154g);
        this.f33151d = bVar;
        bVar.d();
    }

    public void w() {
        com.journeyapps.barcodescanner.camera.a aVar = this.f33150c;
        if (aVar != null) {
            aVar.j();
            this.f33150c = null;
        }
        id.b bVar = this.f33151d;
        if (bVar != null) {
            bVar.e();
            this.f33151d = null;
        }
        Camera camera = this.f33148a;
        if (camera == null || !this.f33152e) {
            return;
        }
        camera.stopPreview();
        this.f33160m.a(null);
        this.f33152e = false;
    }
}
