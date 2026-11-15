package kotlinx.coroutines.channels;

import defpackage.eu0;
import defpackage.s74;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class BufferedChannelKt$createSegmentFunction$1 extends FunctionReferenceImpl implements s74 {
    public static final BufferedChannelKt$createSegmentFunction$1 INSTANCE = new BufferedChannelKt$createSegmentFunction$1();

    public BufferedChannelKt$createSegmentFunction$1() {
        super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    public final eu0 invoke(long j, eu0 eu0Var) {
        return BufferedChannelKt.x(j, eu0Var);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).longValue(), (eu0) obj2);
    }
}
