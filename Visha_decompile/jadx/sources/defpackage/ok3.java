package defpackage;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfo;

public abstract class ok3 {
    public static tl5.a a(Info info, tl5 tl5Var) {
        try {
            tl5.a aVarR = tl5Var.r();
            info.addAllErrors(aVarR.b());
            return aVarR;
        } catch (Exception e) {
            info.addError(e);
            return tl5.a.a();
        }
    }

    public static List b(StreamInfo streamInfo, StreamExtractor streamExtractor) {
        try {
            yz4 yz4VarH = streamExtractor.H();
            if (yz4VarH == null) {
                return Collections.emptyList();
            }
            streamInfo.addAllErrors(yz4VarH.e());
            return yz4VarH.f();
        } catch (Exception e) {
            streamInfo.addError(e);
            return Collections.emptyList();
        }
    }
}
