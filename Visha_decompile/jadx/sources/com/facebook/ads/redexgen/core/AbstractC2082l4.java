package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.Metadata;
import java.nio.ByteBuffer;

public abstract class AbstractC2082l4 implements HK {
    public static String[] A00 = {"S2ZlE7yw63A48uwr9dQcAEYhUnBJ4Yn0", "jzjCSZ", "gN1GhDNq1ONaTY", "QUbV6eP7CXYOE5n4wRXfJJIvrecH4qk8", "luywBeNRakBazgpsmb", "EdZTTUAmlRsHtXkkAmykmZcXBm9Gnzxa", "aBS20hcvH8Cg0VDZoQaxMtYiCLoGsxgc", "2I8VYTEH9eD6qwDjwvQqiLyn0yln2Tpt"};

    public abstract Metadata A0R(C07408z c07408z, ByteBuffer byteBuffer);

    /* JADX WARN: Code duplicated, block: B:16:0x0046  */
    @Override
    public final Metadata A5g(C07408z c07408z) {
        boolean z;
        ByteBuffer byteBuffer = (ByteBuffer) C3M.A01(c07408z.A02);
        if (byteBuffer.position() == 0 && byteBuffer.hasArray()) {
            int iArrayOffset = byteBuffer.arrayOffset();
            String[] strArr = A00;
            if (strArr[7].charAt(18) == strArr[3].charAt(18)) {
                throw new RuntimeException();
            }
            A00[1] = "EqsX6PhC";
            if (iArrayOffset == 0) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        C3M.A07(z);
        if (c07408z.A04()) {
            return null;
        }
        return A0R(c07408z, byteBuffer);
    }
}
