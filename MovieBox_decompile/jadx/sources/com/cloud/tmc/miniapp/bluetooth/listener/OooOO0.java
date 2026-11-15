package com.cloud.tmc.miniapp.bluetooth.listener;

import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import java.util.List;

public final class OooOO0 extends ScanCallback {
    public final OooO00o OooO00o;

    public interface OooO00o {
        void OooO00o(int i10);

        void OooO00o(int i10, ScanResult scanResult);

        void OooO00o(List<ScanResult> list);
    }

    public OooOO0(OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override
    public void onBatchScanResults(List<ScanResult> list) {
        super.onBatchScanResults(list);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            oooO00o.OooO00o(list);
        }
    }

    @Override
    public void onScanFailed(int i10) {
        super.onScanFailed(i10);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            oooO00o.OooO00o(i10);
        }
    }

    @Override
    public void onScanResult(int i10, ScanResult scanResult) {
        super.onScanResult(i10, scanResult);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            oooO00o.OooO00o(i10, scanResult);
        }
    }
}
