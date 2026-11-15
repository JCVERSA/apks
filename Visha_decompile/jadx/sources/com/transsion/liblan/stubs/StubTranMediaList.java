package com.transsion.liblan.stubs;

import android.os.Handler;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaList;

public class StubTranMediaList extends StubTranLANObject<ITranMediaList.TranEvent> implements ITranMediaList {
    @Override
    public int getCount() {
        return 0;
    }

    @Override
    public ITranMedia getMediaOfIndex(int i) {
        return null;
    }

    @Override
    public boolean isBeLocked() {
        return false;
    }

    @Override
    public void setTranEventListener(ITranMediaList.TranEventListener tranEventListener, Handler handler) {
    }
}
