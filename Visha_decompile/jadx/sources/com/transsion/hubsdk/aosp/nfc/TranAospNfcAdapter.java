package com.transsion.hubsdk.aosp.nfc;

import android.content.Context;
import android.nfc.NfcAdapter;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.nfc.ITranNfcAdapter;
import java.lang.reflect.Method;

public class TranAospNfcAdapter implements ITranNfcAdapter {
    @Override
    public int getAdapterState(NfcAdapter nfcAdapter) {
        Method method = TranDoorMan.getMethod(nfcAdapter.getClass(), "getAdapterState", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, nfcAdapter, new Object[0])).intValue();
        }
        return 1;
    }

    @Override
    public NfcAdapter getNfcAdapter(Context context) {
        Method method = TranDoorMan.getMethod(NfcAdapter.class, "getNfcAdapter", Context.class);
        if (method != null) {
            return (NfcAdapter) TranDoorMan.invokeMethod(method, null, context);
        }
        return null;
    }
}
