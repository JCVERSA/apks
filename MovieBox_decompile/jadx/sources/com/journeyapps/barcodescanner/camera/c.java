package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import android.hardware.Camera;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public abstract class c {

    private static final Pattern f33139a = Pattern.compile(";");

    private static List a(int i10) {
        int i11 = -i10;
        return Collections.singletonList(new Camera.Area(new Rect(i11, i11, i10, i10), 1));
    }

    private static String b(String str, Collection collection, String... strArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Requesting ");
        sb2.append(str);
        sb2.append(" value from among: ");
        sb2.append(Arrays.toString(strArr));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Supported ");
        sb3.append(str);
        sb3.append(" values: ");
        sb3.append(collection);
        if (collection == null) {
            return null;
        }
        for (String str2 : strArr) {
            if (collection.contains(str2)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Can set ");
                sb4.append(str);
                sb4.append(" to: ");
                sb4.append(str2);
                return str2;
            }
        }
        return null;
    }

    public static void c(Camera.Parameters parameters) {
        String strB;
        if ("barcode".equals(parameters.getSceneMode()) || (strB = b("scene mode", parameters.getSupportedSceneModes(), "barcode")) == null) {
            return;
        }
        parameters.setSceneMode(strB);
    }

    public static void d(Camera.Parameters parameters, boolean z10) {
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (minExposureCompensation == 0 && maxExposureCompensation == 0) {
            return;
        }
        if (exposureCompensationStep > 0.0f) {
            int iRound = Math.round((z10 ? 0.0f : 1.5f) / exposureCompensationStep);
            float f10 = exposureCompensationStep * iRound;
            int iMax = Math.max(Math.min(iRound, maxExposureCompensation), minExposureCompensation);
            if (parameters.getExposureCompensation() == iMax) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Exposure compensation already set to ");
                sb2.append(iMax);
                sb2.append(" / ");
                sb2.append(f10);
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Setting exposure compensation to ");
            sb3.append(iMax);
            sb3.append(" / ");
            sb3.append(f10);
            parameters.setExposureCompensation(iMax);
        }
    }

    public static void e(Camera.Parameters parameters) {
        f(parameters, 10, 20);
    }

    public static void f(Camera.Parameters parameters, int i10, int i11) {
        int[] next;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Supported FPS ranges: ");
        sb2.append(n(supportedPreviewFpsRange));
        if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
            return;
        }
        Iterator<int[]> it = supportedPreviewFpsRange.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            int i12 = next[0];
            int i13 = next[1];
            if (i12 >= i10 * 1000 && i13 <= i11 * 1000) {
                break;
            }
        }
        if (next == null) {
            return;
        }
        int[] iArr = new int[2];
        parameters.getPreviewFpsRange(iArr);
        if (Arrays.equals(iArr, next)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("FPS range already set to ");
            sb3.append(Arrays.toString(next));
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Setting FPS range to ");
            sb4.append(Arrays.toString(next));
            parameters.setPreviewFpsRange(next[0], next[1]);
        }
    }

    public static void g(Camera.Parameters parameters, CameraSettings.FocusMode focusMode, boolean z10) {
        String strB;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (z10 || focusMode == CameraSettings.FocusMode.AUTO) {
            strB = b("focus mode", supportedFocusModes, "auto");
        } else if (focusMode == CameraSettings.FocusMode.CONTINUOUS) {
            strB = b("focus mode", supportedFocusModes, "continuous-picture", "continuous-video", "auto");
        } else if (focusMode == CameraSettings.FocusMode.INFINITY) {
            strB = b("focus mode", supportedFocusModes, "infinity");
        } else {
            strB = focusMode == CameraSettings.FocusMode.MACRO ? b("focus mode", supportedFocusModes, "macro") : null;
        }
        if (!z10 && strB == null) {
            strB = b("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (strB != null) {
            if (!strB.equals(parameters.getFocusMode())) {
                parameters.setFocusMode(strB);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Focus mode already set to ");
            sb2.append(strB);
        }
    }

    public static void h(Camera.Parameters parameters) {
        if (parameters.getMaxNumFocusAreas() > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Old focus areas: ");
            sb2.append(m(parameters.getFocusAreas()));
            List<Camera.Area> listA = a(400);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Setting focus area to : ");
            sb3.append(m(listA));
            parameters.setFocusAreas(listA);
        }
    }

    public static void i(Camera.Parameters parameters) {
        String strB;
        if ("negative".equals(parameters.getColorEffect()) || (strB = b("color effect", parameters.getSupportedColorEffects(), "negative")) == null) {
            return;
        }
        parameters.setColorEffect(strB);
    }

    public static void j(Camera.Parameters parameters) {
        if (parameters.getMaxNumMeteringAreas() > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Old metering areas: ");
            sb2.append(parameters.getMeteringAreas());
            List<Camera.Area> listA = a(400);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Setting metering area to : ");
            sb3.append(m(listA));
            parameters.setMeteringAreas(listA);
        }
    }

    public static void k(Camera.Parameters parameters, boolean z10) {
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        String strB = z10 ? b("flash mode", supportedFlashModes, "torch", "on") : b("flash mode", supportedFlashModes, "off");
        if (strB != null) {
            if (strB.equals(parameters.getFlashMode())) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Flash mode already set to ");
                sb2.append(strB);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Setting flash mode to ");
                sb3.append(strB);
                parameters.setFlashMode(strB);
            }
        }
    }

    public static void l(Camera.Parameters parameters) {
        if (!parameters.isVideoStabilizationSupported() || parameters.getVideoStabilization()) {
            return;
        }
        parameters.setVideoStabilization(true);
    }

    private static String m(Iterable iterable) {
        if (iterable == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Camera.Area area = (Camera.Area) it.next();
            sb2.append(area.rect);
            sb2.append(':');
            sb2.append(area.weight);
            sb2.append(' ');
        }
        return sb2.toString();
    }

    private static String n(Collection collection) {
        if (collection == null || collection.isEmpty()) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            sb2.append(Arrays.toString((int[]) it.next()));
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(']');
        return sb2.toString();
    }
}
