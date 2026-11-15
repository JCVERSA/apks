package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.cloud_drive.base.api.model.FileBatchFailResult;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.internal.request.CopyShareFilesRequest;
import com.transsion.cloud_drive.base.internal.request.CreateFileShareLinkRequest;
import com.transsion.cloud_drive.base.internal.request.DeleteFileBatchRequest;
import com.transsion.cloud_drive.base.internal.request.DeleteFileRequest;
import com.transsion.cloud_drive.base.internal.request.GetFileInfoBatchRequest;
import com.transsion.cloud_drive.base.internal.request.GetFileInfoRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareFileDownloadUrlRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareFileListRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareLinkAnonymousRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareLinkTokenRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareVideoFilePlayInfoRequest;
import com.transsion.cloud_drive.base.internal.request.GetVideoFilePlayInfoRequest;
import com.transsion.cloud_drive.base.internal.request.GetVideoTranscodeStatusRequest;
import com.transsion.cloud_drive.base.internal.request.RetryVideoTranscodeRequest;
import com.transsion.cloud_drive.base.internal.request.UpdateFileRequest;
import com.transsion.cloud_drive.base.internal.request.UpdateFileShareLinkRequest;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class nq3 implements mq3 {
    public final pr3 a;
    public final jg9 b;

    public nq3(pr3 pr3Var, jg9 jg9Var) {
        y45.j(pr3Var, "fileService");
        y45.j(jg9Var, "shareService");
        this.a = pr3Var;
        this.b = jg9Var;
    }

    public final List a(List list, int i) {
        if (list.size() <= i) {
            return x71.e(list);
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size() - 1;
        if (i <= 0) {
            throw new IllegalArgumentException("Step must be positive, was: " + i + Consts.DOT);
        }
        int i2 = 0;
        int iC = xh8.c(0, size, i);
        if (iC >= 0) {
            while (true) {
                int i3 = i2 + i;
                arrayList.add(list.subList(i2, Math.min(i3, list.size())));
                if (i2 == iC) {
                    break;
                }
                i2 = i3;
            }
        }
        return arrayList;
    }

    @Override
    public ApiResponse b(String str) {
        y45.j(str, "fileId");
        return this.a.i(new RetryVideoTranscodeRequest(str));
    }

    @Override
    public ApiResponse c(String str, String str2, String str3, List list, String str4) {
        y45.j(str, "token");
        y45.j(str2, "shareId");
        y45.j(str3, "parentId");
        y45.j(list, "fileIds");
        y45.j(str4, TtmlNode.TAG_REGION);
        return this.b.h(str, new CopyShareFilesRequest(str2, str3, list, str4));
    }

    @Override
    public ApiResponse d(String str, String str2, String str3, String str4, String str5, LocalDateTime localDateTime) {
        y45.j(str, "shareId");
        y45.j(str2, "sharePwd");
        y45.j(str3, "shareName");
        y45.j(str4, "description");
        y45.j(str5, "status");
        return this.b.e(new UpdateFileShareLinkRequest(str, str2, str3, str4, str5, localDateTime));
    }

    @Override
    public ApiResponse delete(String str) {
        y45.j(str, "fileId");
        return this.a.k(new DeleteFileRequest(str));
    }

    @Override
    public ApiResponse e(String str, String str2, String str3, String str4) {
        y45.j(str, "token");
        y45.j(str2, "shareId");
        y45.j(str3, "parentId");
        return this.b.f(str, new GetShareFileListRequest(str2, str3), str4);
    }

    @Override
    public ApiResponse f(String str) {
        y45.j(str, "fileId");
        return this.a.j(new GetVideoTranscodeStatusRequest(str));
    }

    @Override
    public ApiResponse g(String str, String str2, long j, String str3) {
        y45.j(str, "shareId");
        y45.j(str2, "sharePwd");
        return this.b.g(new GetShareLinkTokenRequest(str, str2, j), str3);
    }

    @Override
    public ApiResponse getConfig() {
        return this.a.getConfig();
    }

    @Override
    public ApiResponse h(String str, String str2, String str3, long j, String str4) {
        y45.j(str, "token");
        y45.j(str2, "shareId");
        y45.j(str3, "fileId");
        return this.b.b(str, new GetShareFileDownloadUrlRequest(str2, str3, j), str4);
    }

    @Override
    public ApiResponse i(List list, Integer num, Integer num2) {
        y45.j(list, "fileIds");
        return this.a.f(new GetFileInfoBatchRequest(list, num, num2));
    }

    @Override
    public ApiResponse j(String str, String str2) {
        y45.j(str, "shareId");
        return this.b.d(new GetShareLinkAnonymousRequest(str), str2);
    }

    @Override
    public ApiResponse k(List list, String str, String str2, String str3, LocalDateTime localDateTime) {
        y45.j(list, "fileIds");
        y45.j(str, "sharePwd");
        y45.j(str2, "shareName");
        y45.j(str3, "description");
        return this.b.c(new CreateFileShareLinkRequest(list, str, str2, str3, localDateTime));
    }

    @Override
    public ApiResponse l(String str, String str2, long j) {
        y45.j(str, "fileId");
        y45.j(str2, "templateId");
        return this.a.l(new GetVideoFilePlayInfoRequest(str, str2, j));
    }

    @Override
    public ApiResponse m(String str, String str2, String str3, String str4, long j, String str5) {
        y45.j(str, "token");
        y45.j(str2, "shareId");
        y45.j(str3, "fileId");
        y45.j(str4, "templateId");
        return this.b.a(str, new GetShareVideoFilePlayInfoRequest(str2, str3, str4, j), str5);
    }

    @Override
    public ApiResponse n(String str, String str2) {
        FileInfo fileInfo;
        y45.j(str, "fileId");
        y45.j(str2, "name");
        ApiResponse<FileInfo> apiResponseA = this.a.a(new UpdateFileRequest(str, str2));
        if ((apiResponseA instanceof ApiResponse.Success) && (fileInfo = (FileInfo) ((ApiResponse.Success) apiResponseA).getData()) != null) {
            fileInfo.setUpdateTime(qn5.a.a("UTC"));
        }
        return apiResponseA;
    }

    @Override
    public ApiResponse o(String str, Integer num, Integer num2) {
        y45.j(str, "fileId");
        return this.a.m(new GetFileInfoRequest(str, num, num2));
    }

    @Override
    public ApiResponse p(List list) {
        y45.j(list, "fileIds");
        ArrayList arrayList = new ArrayList();
        Iterator it = a(list, 200).iterator();
        while (it.hasNext()) {
            ApiResponse<List<FileBatchFailResult>> apiResponseH = this.a.h(new DeleteFileBatchRequest((List) it.next()));
            if (!(apiResponseH instanceof ApiResponse.Success)) {
                return apiResponseH;
            }
            List list2 = (List) ((ApiResponse.Success) apiResponseH).getData();
            if (list2 != null) {
                arrayList.addAll(list2);
            }
        }
        return new ApiResponse.Success(arrayList);
    }
}
