package com.transsion.hubsdk.interfaces.nfc;

import android.content.Context;
import android.nfc.NfcAdapter;

public interface ITranNfcAdapter {
    int getAdapterState(NfcAdapter nfcAdapter);

    NfcAdapter getNfcAdapter(Context context);
}
