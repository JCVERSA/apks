package jd;

import android.hardware.Camera;
import android.util.Log;

public abstract class a {

    private static final String f63099a = "jd.a";

    public static int a(int i10) {
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w(f63099a, "No cameras!");
            return -1;
        }
        boolean z10 = i10 >= 0;
        if (!z10) {
            i10 = 0;
            while (i10 < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i10, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i10++;
            }
        }
        if (i10 < numberOfCameras) {
            return i10;
        }
        return z10 ? -1 : 0;
    }

    public static Camera b(int i10) {
        int iA = a(i10);
        if (iA == -1) {
            return null;
        }
        return Camera.open(iA);
    }
}
