package ul;

import com.transsion.lib_web.download_render.c;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import kotlin.jvm.internal.Intrinsics;

public interface b {

    public interface a {
        CompareResponse a(CompareRequest compareRequest);
    }

    public static final class C0898b {
        public static FileData a(b bVar, FileData remoteFileData) {
            Intrinsics.h(remoteFileData, "remoteFileData");
            return c.f44800a.e(remoteFileData);
        }
    }

    CompareResponse a(CompareRequest compareRequest, a aVar);
}
