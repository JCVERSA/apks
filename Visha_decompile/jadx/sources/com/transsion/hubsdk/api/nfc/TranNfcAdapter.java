package com.transsion.hubsdk.api.nfc;

import android.content.Context;
import android.nfc.NfcAdapter;
import com.transsion.hubsdk.aosp.nfc.TranAospNfcAdapter;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.net.TranThubNfcAdapter;
import com.transsion.hubsdk.interfaces.nfc.ITranNfcAdapter;

public class TranNfcAdapter {
    private static final String TAG = "TranNfcAdapter";
    private TranAospNfcAdapter mAospService;
    private TranThubNfcAdapter mThubService;

    public int getAdapterState(NfcAdapter nfcAdapter) {
        if (nfcAdapter != null) {
            return getService(TranVersion.Core.VERSION_33311).getAdapterState(nfcAdapter);
        }
        throw new IllegalArgumentException("nfcAdapter is null");
    }

    public NfcAdapter getNfcAdapter(Context context) {
        if (context != null) {
            return getService(TranVersion.Core.VERSION_33311).getNfcAdapter(context);
        }
        throw new IllegalArgumentException("context is null");
    }

    public ITranNfcAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubNfcAdapter");
            TranThubNfcAdapter tranThubNfcAdapter = this.mThubService;
            if (tranThubNfcAdapter != null) {
                return tranThubNfcAdapter;
            }
            TranThubNfcAdapter tranThubNfcAdapter2 = new TranThubNfcAdapter();
            this.mThubService = tranThubNfcAdapter2;
            return tranThubNfcAdapter2;
        }
        TranSdkLog.i(TAG, "TranAospNfcAdapter");
        TranAospNfcAdapter tranAospNfcAdapter = this.mAospService;
        if (tranAospNfcAdapter != null) {
            return tranAospNfcAdapter;
        }
        TranAospNfcAdapter tranAospNfcAdapter2 = new TranAospNfcAdapter();
        this.mAospService = tranAospNfcAdapter2;
        return tranAospNfcAdapter2;
    }
}
