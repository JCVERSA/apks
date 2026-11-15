package c6;

import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;

public class b implements SurfaceHolder.Callback {

    private final WeakReference f16686a;

    public b(SurfaceHolder.Callback callback) {
        this.f16686a = new WeakReference(callback);
    }

    public SurfaceHolder.Callback a() {
        return (SurfaceHolder.Callback) this.f16686a.get();
    }

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        SurfaceHolder.Callback callback = (SurfaceHolder.Callback) this.f16686a.get();
        if (callback != null) {
            callback.surfaceChanged(surfaceHolder, i10, i11, i12);
        }
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = (SurfaceHolder.Callback) this.f16686a.get();
        if (callback != null) {
            callback.surfaceCreated(surfaceHolder);
        }
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = (SurfaceHolder.Callback) this.f16686a.get();
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
    }
}
