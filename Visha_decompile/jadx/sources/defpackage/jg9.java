package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.api.model.CopyShareFilesResult;
import com.transsion.cloud_drive.base.api.model.FileDownloadUrl;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileShareLink;
import com.transsion.cloud_drive.base.api.model.PageResult;
import com.transsion.cloud_drive.base.api.model.ShareFileVideoPlayInfoResult;
import com.transsion.cloud_drive.base.internal.request.CopyShareFilesRequest;
import com.transsion.cloud_drive.base.internal.request.CreateFileShareLinkRequest;
import com.transsion.cloud_drive.base.internal.request.FileShareLinkToken;
import com.transsion.cloud_drive.base.internal.request.GetShareFileDownloadUrlRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareFileListRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareLinkAnonymousRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareLinkTokenRequest;
import com.transsion.cloud_drive.base.internal.request.GetShareVideoFilePlayInfoRequest;
import com.transsion.cloud_drive.base.internal.request.UpdateFileShareLinkRequest;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\bH'¢\u0006\u0004\b\t\u0010\nJ+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u000b2\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\fH'¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u00102\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\fH'¢\u0006\u0004\b\u0012\u0010\u0013J;\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00042\b\b\u0001\u0010\u0014\u001a\u00020\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00152\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\fH'¢\u0006\u0004\b\u0018\u0010\u0019J)\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\b\b\u0001\u0010\u0014\u001a\u00020\f2\b\b\u0001\u0010\u0003\u001a\u00020\u001aH'¢\u0006\u0004\b\u001c\u0010\u001dJ5\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\b\b\u0001\u0010\u0014\u001a\u00020\f2\b\b\u0001\u0010\u0003\u001a\u00020\u001e2\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\fH'¢\u0006\u0004\b \u0010!J5\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\u00042\b\b\u0001\u0010\u0014\u001a\u00020\f2\b\b\u0001\u0010\u0003\u001a\u00020\"2\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\fH'¢\u0006\u0004\b$\u0010%¨\u0006&"}, d2 = {"Ljg9;", "", "Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;", Progress.REQUEST, "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;", "c", "(Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/UpdateFileShareLinkRequest;", "e", "(Lcom/transsion/cloud_drive/base/internal/request/UpdateFileShareLinkRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkAnonymousRequest;", "", "customHost", "d", "(Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkAnonymousRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;", "Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;", GslbInterceptor.HEADER_KEY_GSLB, "(Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "token", "Lcom/transsion/cloud_drive/base/internal/request/GetShareFileListRequest;", "Lcom/transsion/cloud_drive/base/api/model/PageResult;", "Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "f", "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/GetShareFileListRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;", "Lcom/transsion/cloud_drive/base/api/model/CopyShareFilesResult;", CmcdData.STREAMING_FORMAT_HLS, "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetShareVideoFilePlayInfoRequest;", "Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/GetShareVideoFilePlayInfoRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetShareFileDownloadUrlRequest;", "Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;", "b", "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/GetShareFileDownloadUrlRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface jg9 {
    @qd
    @ma3(false)
    @zu7("os-cloud-disk/v2/share_link/get_video_preview_play_info")
    ApiResponse<ShareFileVideoPlayInfoResult> a(@oo4("x-share-token") String token, @gg0 GetShareVideoFilePlayInfoRequest request, @oo4("X-Custom-Host") String customHost);

    @qd
    @ma3(false)
    @zu7("os-cloud-disk/v2/share_link/get_download_url")
    ApiResponse<FileDownloadUrl> b(@oo4("x-share-token") String token, @gg0 GetShareFileDownloadUrlRequest request, @oo4("X-Custom-Host") String customHost);

    @zu7("os-cloud-disk/v2/share_link/create")
    ApiResponse<FileShareLink> c(@gg0 CreateFileShareLinkRequest request);

    @qd
    @ma3(false)
    @zu7("os-cloud-disk/v2/share_link/get_by_anonymous")
    ApiResponse<FileShareLink> d(@gg0 GetShareLinkAnonymousRequest request, @oo4("X-Custom-Host") String customHost);

    @zu7("os-cloud-disk/v2/share_link/update")
    ApiResponse<FileShareLink> e(@gg0 UpdateFileShareLinkRequest request);

    @qd
    @ma3(false)
    @zu7("os-cloud-disk/v2/share_link/list_file")
    ApiResponse<PageResult<FileInfo>> f(@oo4("x-share-token") String token, @gg0 GetShareFileListRequest request, @oo4("X-Custom-Host") String customHost);

    @qd
    @ma3(false)
    @zu7("os-cloud-disk/v2/share_link/get_share_token")
    ApiResponse<FileShareLinkToken> g(@gg0 GetShareLinkTokenRequest request, @oo4("X-Custom-Host") String customHost);

    @zu7("os-cloud-disk/v2/share_link/copy")
    ApiResponse<CopyShareFilesResult> h(@oo4("x-share-token") String token, @gg0 CopyShareFilesRequest request);
}
