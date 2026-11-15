package com.google.android.gms.location;

import defpackage.wd8;
import java.util.Comparator;

final class zzq implements Comparator<DetectedActivity> {
    @Override
    public final int compare(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
        DetectedActivity detectedActivity3 = detectedActivity;
        DetectedActivity detectedActivity4 = detectedActivity2;
        wd8.l(detectedActivity3);
        wd8.l(detectedActivity4);
        int iCompareTo = Integer.valueOf(detectedActivity4.getConfidence()).compareTo(Integer.valueOf(detectedActivity3.getConfidence()));
        return iCompareTo == 0 ? Integer.valueOf(detectedActivity3.getType()).compareTo(Integer.valueOf(detectedActivity4.getType())) : iCompareTo;
    }
}
