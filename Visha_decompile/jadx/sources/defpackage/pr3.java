package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.api.model.CloudConfig;
import com.transsion.cloud_drive.base.api.model.CreateFileResult;
import com.transsion.cloud_drive.base.api.model.FileBatchFailResult;
import com.transsion.cloud_drive.base.api.model.FileDownloadUrl;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileUploadUrl;
import com.transsion.cloud_drive.base.api.model.FileVideoPlayInfoResult;
import com.transsion.cloud_drive.base.api.model.VideoTranscodeResult;
import com.transsion.cloud_drive.base.internal.request.CompleteUploadFileRequest;
import com.transsion.cloud_drive.base.internal.request.CreateFileRequest;
import com.transsion.cloud_drive.base.internal.request.DeleteFileBatchRequest;
import com.transsion.cloud_drive.base.internal.request.DeleteFileRequest;
import com.transsion.cloud_drive.base.internal.request.GetDownloadUrlRequest;
import com.transsion.cloud_drive.base.internal.request.GetFileInfoBatchRequest;
import com.transsion.cloud_drive.base.internal.request.GetFileInfoRequest;
import com.transsion.cloud_drive.base.internal.request.GetUploadUrlRequest;
import com.transsion.cloud_drive.base.internal.request.GetVideoFilePlayInfoRequest;
import com.transsion.cloud_drive.base.internal.request.GetVideoTranscodeStatusRequest;
import com.transsion.cloud_drive.base.internal.request.RestoreRecycleBinFileRequest;
import com.transsion.cloud_drive.base.internal.request.RetryVideoTranscodeRequest;
import com.transsion.cloud_drive.base.internal.request.UpdateFileRequest;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0006H'¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u000bH'¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u000fH'¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0012H'¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0016H'¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u001bH'¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u001eH'¢\u0006\u0004\b \u0010!J\u001f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\"H'¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\b\b\u0001\u0010\u0007\u001a\u00020&H'¢\u0006\u0004\b'\u0010(J%\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00170\u00022\b\b\u0001\u0010\u0007\u001a\u00020)H'¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\b\u0012\u0004\u0012\u00020-0\u00022\b\b\u0001\u0010\u0007\u001a\u00020,H'¢\u0006\u0004\b.\u0010/J\u001f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00130\u00022\b\b\u0001\u0010\u0007\u001a\u000200H'¢\u0006\u0004\b1\u00102J\u001f\u00105\u001a\b\u0012\u0004\u0012\u0002040\u00022\b\b\u0001\u0010\u0007\u001a\u000203H'¢\u0006\u0004\b5\u00106¨\u00067"}, d2 = {"Lpr3;", "", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/CloudConfig;", "getConfig", "()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;", Progress.REQUEST, "Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;", "b", "(Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/CompleteUploadFileRequest;", "Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "c", "(Lcom/transsion/cloud_drive/base/internal/request/CompleteUploadFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/UpdateFileRequest;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/transsion/cloud_drive/base/internal/request/UpdateFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/DeleteFileRequest;", "", "k", "(Lcom/transsion/cloud_drive/base/internal/request/DeleteFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/DeleteFileBatchRequest;", "", "Lcom/transsion/cloud_drive/base/api/model/FileBatchFailResult;", CmcdData.STREAMING_FORMAT_HLS, "(Lcom/transsion/cloud_drive/base/internal/request/DeleteFileBatchRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileRequest;", "d", "(Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetDownloadUrlRequest;", "Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;", GslbInterceptor.HEADER_KEY_GSLB, "(Lcom/transsion/cloud_drive/base/internal/request/GetDownloadUrlRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetUploadUrlRequest;", "Lcom/transsion/cloud_drive/base/api/model/FileUploadUrl;", "e", "(Lcom/transsion/cloud_drive/base/internal/request/GetUploadUrlRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;", CmcdData.OBJECT_TYPE_MANIFEST, "(Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoBatchRequest;", "f", "(Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoBatchRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetVideoTranscodeStatusRequest;", "Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;", "j", "(Lcom/transsion/cloud_drive/base/internal/request/GetVideoTranscodeStatusRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/RetryVideoTranscodeRequest;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Lcom/transsion/cloud_drive/base/internal/request/RetryVideoTranscodeRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/internal/request/GetVideoFilePlayInfoRequest;", "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;", CmcdData.STREAM_TYPE_LIVE, "(Lcom/transsion/cloud_drive/base/internal/request/GetVideoFilePlayInfoRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface pr3 {
    @zu7("os-cloud-disk/v2/file/update")
    ApiResponse<FileInfo> a(@gg0 UpdateFileRequest request);

    @zu7("os-cloud-disk/v2/file/create")
    ApiResponse<CreateFileResult> b(@gg0 CreateFileRequest request);

    @zu7("os-cloud-disk/v2/file/complete")
    ApiResponse<FileInfo> c(@gg0 CompleteUploadFileRequest request);

    @zu7("os-cloud-disk/v2/recyclebin/restore")
    ApiResponse<FileInfo> d(@gg0 RestoreRecycleBinFileRequest request);

    @zu7("os-cloud-disk/v2/file/get_upload_url")
    ApiResponse<FileUploadUrl> e(@gg0 GetUploadUrlRequest request);

    @zu7("os-cloud-disk/v2/file/get/batch")
    ApiResponse<List<FileInfo>> f(@gg0 GetFileInfoBatchRequest request);

    @zu7("os-cloud-disk/v2/file/get_download_url")
    ApiResponse<FileDownloadUrl> g(@gg0 GetDownloadUrlRequest request);

    @zu7("os-cloud-disk/v2/file/get_config")
    ApiResponse<CloudConfig> getConfig();

    @zu7("os-cloud-disk/v2/file/delete/batch")
    ApiResponse<List<FileBatchFailResult>> h(@gg0 DeleteFileBatchRequest request);

    @zu7("os-cloud-disk/v2/video/transcode/try")
    ApiResponse i(@gg0 RetryVideoTranscodeRequest request);

    @zu7("os-cloud-disk/v2/video/transcode/status")
    ApiResponse<VideoTranscodeResult> j(@gg0 GetVideoTranscodeStatusRequest request);

    @zu7("os-cloud-disk/v2/file/delete")
    ApiResponse k(@gg0 DeleteFileRequest request);

    @zu7("os-cloud-disk/v2/file/get_video_preview_play_info")
    ApiResponse<FileVideoPlayInfoResult> l(@gg0 GetVideoFilePlayInfoRequest request);

    @zu7("os-cloud-disk/v2/file/get")
    ApiResponse<FileInfo> m(@gg0 GetFileInfoRequest request);
}
