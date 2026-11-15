package c5;

import b5.b2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;

public class u implements z0, b2 {

    public static final u f16669a = new u();

    public static class a {

        public byte[] f16670a;

        public int f16671b;

        public int f16672c;

        public ByteBuffer a() {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f16670a);
            byteBufferWrap.limit(this.f16671b);
            byteBufferWrap.position(this.f16672c);
            return byteBufferWrap;
        }
    }

    @Override
    public int b() {
        return 14;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        byte[] bArrArray = byteBuffer.array();
        j1 j1Var = o0Var.f16619k;
        j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        j1Var.u("array");
        j1Var.r(bArrArray);
        j1Var.x(',', "limit", byteBuffer.limit());
        j1Var.x(',', RequestParameters.POSITION, byteBuffer.position());
        j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        return ((a) aVar.j0(a.class)).a();
    }
}
