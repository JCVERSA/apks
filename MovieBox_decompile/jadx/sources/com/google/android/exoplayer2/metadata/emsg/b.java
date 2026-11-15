package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class b {

    private final ByteArrayOutputStream f24781a;

    private final DataOutputStream f24782b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f24781a = byteArrayOutputStream;
        this.f24782b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(EventMessage eventMessage) {
        this.f24781a.reset();
        try {
            b(this.f24782b, eventMessage.schemeIdUri);
            String str = eventMessage.value;
            if (str == null) {
                str = "";
            }
            b(this.f24782b, str);
            this.f24782b.writeLong(eventMessage.durationMs);
            this.f24782b.writeLong(eventMessage.f24780id);
            this.f24782b.write(eventMessage.messageData);
            this.f24782b.flush();
            return this.f24781a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
