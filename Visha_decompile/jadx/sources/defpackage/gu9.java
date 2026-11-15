package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.api.model.FreeSpaceRequest;
import com.transsion.cloud_drive.base.api.model.FreeSpaceResponse;
import com.transsion.cloud_drive.base.api.model.ReceiveFreeSpaceRequest;
import com.transsion.cloud_drive.base.api.model.ReceiveFreeSpaceResponse;
import com.transsion.cloud_drive.base.api.model.SpaceStatistics;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0006H'¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u000bH'¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lgu9;", "", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;", "c", "()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;", Progress.REQUEST, "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;", "b", "(Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;", "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface gu9 {
    @zu7("/os-cloud-space/app/space/free/receive")
    ApiResponse<ReceiveFreeSpaceResponse> a(@gg0 ReceiveFreeSpaceRequest request);

    @zu7("/os-cloud-space/app/space/free/get")
    ApiResponse<FreeSpaceResponse> b(@gg0 FreeSpaceRequest request);

    @zu7("/os-cloud-space/app/space/statistics")
    ApiResponse<SpaceStatistics> c();
}
