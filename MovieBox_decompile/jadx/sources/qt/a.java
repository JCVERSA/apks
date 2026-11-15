package qt;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.coroutines.Continuation;

public interface a {

    public static final class C0864a {
        public static Object a(a aVar, int i10, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getDownloadFailureList");
            }
            if ((i11 & 1) != 0) {
                i10 = 6;
            }
            return aVar.d(i10, continuation);
        }
    }

    Object a(String str, Continuation continuation);

    Object b(String str, Continuation continuation);

    SubtitleDownloadTable c(String str, int i10);

    Object d(int i10, Continuation continuation);

    Object e(SubtitleDownloadTable subtitleDownloadTable, Continuation continuation);

    void f(SubtitleDownloadTable subtitleDownloadTable);

    void g(SubtitleDownloadTable subtitleDownloadTable);
}
