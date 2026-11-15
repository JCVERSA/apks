package defpackage;

import com.transsion.cloud_drive.base.network.response.ApiResponse;
import java.time.LocalDateTime;
import java.util.List;

public interface mq3 {

    public static final class a {
        public static ApiResponse a(mq3 mq3Var, List list, String str, String str2, String str3, LocalDateTime localDateTime, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createShareLink");
            }
            String str4 = (i & 2) != 0 ? "" : str;
            String str5 = (i & 4) != 0 ? "" : str2;
            String str6 = (i & 8) != 0 ? "" : str3;
            if ((i & 16) != 0) {
                localDateTime = null;
            }
            return mq3Var.k(list, str4, str5, str6, localDateTime);
        }

        public static ApiResponse b(mq3 mq3Var, String str, Integer num, Integer num2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFileInfo");
            }
            if ((i & 2) != 0) {
                num = null;
            }
            if ((i & 4) != 0) {
                num2 = null;
            }
            return mq3Var.o(str, num, num2);
        }

        public static ApiResponse c(mq3 mq3Var, String str, String str2, String str3, long j, String str4, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShareDownloadUrl");
            }
            if ((i & 8) != 0) {
                j = 115200;
            }
            long j2 = j;
            if ((i & 16) != 0) {
                str4 = null;
            }
            return mq3Var.h(str, str2, str3, j2, str4);
        }

        public static ApiResponse d(mq3 mq3Var, String str, String str2, long j, String str3, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShareLinkToken");
            }
            if ((i & 2) != 0) {
                str2 = "";
            }
            String str4 = str2;
            if ((i & 4) != 0) {
                j = 0;
            }
            long j2 = j;
            if ((i & 8) != 0) {
                str3 = null;
            }
            return mq3Var.g(str, str4, j2, str3);
        }

        public static ApiResponse e(mq3 mq3Var, String str, String str2, String str3, String str4, long j, String str5, int i, Object obj) {
            if (obj == null) {
                return mq3Var.m(str, str2, str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? 900L : j, (i & 32) != 0 ? null : str5);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShareVideoPlayInfo");
        }

        public static ApiResponse f(mq3 mq3Var, String str, String str2, long j, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoPlayInfo");
            }
            if ((i & 2) != 0) {
                str2 = "";
            }
            if ((i & 4) != 0) {
                j = 900;
            }
            return mq3Var.l(str, str2, j);
        }

        public static ApiResponse g(mq3 mq3Var, String str, String str2, String str3, String str4, String str5, LocalDateTime localDateTime, int i, Object obj) {
            if (obj == null) {
                return mq3Var.d(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) == 0 ? str4 : "", (i & 16) != 0 ? "enabled" : str5, (i & 32) != 0 ? null : localDateTime);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateShareLink");
        }
    }

    ApiResponse b(String str);

    ApiResponse c(String str, String str2, String str3, List list, String str4);

    ApiResponse d(String str, String str2, String str3, String str4, String str5, LocalDateTime localDateTime);

    ApiResponse delete(String str);

    ApiResponse e(String str, String str2, String str3, String str4);

    ApiResponse f(String str);

    ApiResponse g(String str, String str2, long j, String str3);

    ApiResponse getConfig();

    ApiResponse h(String str, String str2, String str3, long j, String str4);

    ApiResponse i(List list, Integer num, Integer num2);

    ApiResponse j(String str, String str2);

    ApiResponse k(List list, String str, String str2, String str3, LocalDateTime localDateTime);

    ApiResponse l(String str, String str2, long j);

    ApiResponse m(String str, String str2, String str3, String str4, long j, String str5);

    ApiResponse n(String str, String str2);

    ApiResponse o(String str, Integer num, Integer num2);

    ApiResponse p(List list);
}
