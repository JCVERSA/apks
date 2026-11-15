package com.transsion.hubsdk.core.net;

import android.content.Context;
import android.nfc.NfcAdapter;
import com.transsion.hubsdk.interfaces.nfc.ITranNfcAdapter;
import com.transsion.hubsdk.nfc.TranNfcAdapter;

public class TranThubNfcAdapter implements ITranNfcAdapter {
    private TranNfcAdapter mTranNfcAdapter = new TranNfcAdapter();

    @Override
    public int getAdapterState(NfcAdapter nfcAdapter) {
        TranNfcAdapter tranNfcAdapter = this.mTranNfcAdapter;
        if (tranNfcAdapter != null) {
            return tranNfcAdapter.getAdapterState(nfcAdapter);
        }
        return 1;
    }

    @Override
    public NfcAdapter getNfcAdapter(Context context) {
        TranNfcAdapter tranNfcAdapter = this.mTranNfcAdapter;
        if (tranNfcAdapter != null) {
            return (NfcAdapter) tranNfcAdapter.getNfcAdapter(context);
        }
        return null;
    }
}
