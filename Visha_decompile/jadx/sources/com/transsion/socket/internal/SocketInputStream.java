package com.transsion.socket.internal;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class SocketInputStream extends DataInputStream {
    private CountInputStream mCIS;
    private InputStream mIS;

    public SocketInputStream(InputStream inputStream) {
        super(new CountInputStream(inputStream));
        this.mCIS = (CountInputStream) ((DataInputStream) this).in;
        this.mIS = inputStream;
    }

    public long getInputSize() {
        return this.mCIS.getInputSize();
    }

    @Override
    public int read() throws IOException {
        this.mCIS.mCount++;
        return this.mIS.read();
    }

    public void resetReceiveTraffic() {
        this.mCIS.resetCount();
    }

    public void stopReceiveCount() {
        this.mCIS.setStopCount(true);
    }
}
