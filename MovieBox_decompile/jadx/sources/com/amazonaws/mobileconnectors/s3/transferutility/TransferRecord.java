package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.util.json.JsonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Future;

class TransferRecord {
    private static final Log M = LogFactory.b(TransferRecord.class);
    public String A;
    public String B;
    public Map C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public TransferUtilityOptions J;
    private Future K;
    private Gson L = new Gson();

    public int f17864a;

    public int f17865b;

    public int f17866c;

    public int f17867d;

    public int f17868e;

    public int f17869f;

    public int f17870g;

    public long f17871h;

    public long f17872i;

    public long f17873j;

    public long f17874k;

    public long f17875l;

    public long f17876m;

    public TransferType f17877n;

    public TransferState f17878o;

    public String f17879p;

    public String f17880q;

    public String f17881r;

    public String f17882s;

    public String f17883t;

    public String f17884u;

    public String f17885v;

    public String f17886w;

    public String f17887x;

    public String f17888y;

    public String f17889z;

    public TransferRecord(int i10) {
        this.f17864a = i10;
    }

    private boolean c() {
        return this.f17870g == 0 && !TransferState.COMPLETED.equals(this.f17878o);
    }

    private boolean d(TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        TransferUtilityOptions transferUtilityOptions;
        if (connectivityManager == null || (transferUtilityOptions = this.J) == null || transferUtilityOptions.getTransferNetworkConnectionType().isConnected(connectivityManager)) {
            return true;
        }
        M.d("Network Connection " + this.J.getTransferNetworkConnectionType() + " is not available.");
        transferStatusUpdater.l(this.f17864a, TransferState.WAITING_FOR_NETWORK);
        return false;
    }

    private boolean e(TransferState transferState) {
        return TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState);
    }

    public boolean b(final AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (e(this.f17878o)) {
            return false;
        }
        transferStatusUpdater.l(this.f17864a, TransferState.PENDING_CANCEL);
        if (f()) {
            this.K.cancel(true);
        }
        if (TransferType.UPLOAD.equals(this.f17877n) && this.f17867d == 1) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        AmazonS3 amazonS4 = amazonS3;
                        TransferRecord transferRecord = TransferRecord.this;
                        amazonS4.e(new AbortMultipartUploadRequest(transferRecord.f17879p, transferRecord.f17880q, transferRecord.f17883t));
                        TransferRecord.M.a("Successfully clean up multipart upload: " + TransferRecord.this.f17864a);
                    } catch (AmazonClientException e10) {
                        TransferRecord.M.g("Failed to abort multiplart upload: " + TransferRecord.this.f17864a, e10);
                    }
                }
            }).start();
        } else if (TransferType.DOWNLOAD.equals(this.f17877n)) {
            new File(this.f17882s).delete();
        }
        return true;
    }

    boolean f() {
        Future future = this.K;
        return (future == null || future.isDone()) ? false : true;
    }

    public boolean g(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (e(this.f17878o) || TransferState.PAUSED.equals(this.f17878o)) {
            return false;
        }
        TransferState transferState = TransferState.PENDING_PAUSE;
        if (transferState.equals(this.f17878o)) {
            return false;
        }
        transferStatusUpdater.l(this.f17864a, transferState);
        if (f()) {
            this.K.cancel(true);
        }
        return true;
    }

    boolean h(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        boolean zD = d(transferStatusUpdater, connectivityManager);
        boolean z10 = false;
        if (!zD && !e(this.f17878o)) {
            z10 = true;
            if (f()) {
                this.K.cancel(true);
            }
        }
        return z10;
    }

    public boolean i(AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        if (f() || !c() || !d(transferStatusUpdater, connectivityManager)) {
            return false;
        }
        if (this.f17877n.equals(TransferType.DOWNLOAD)) {
            this.K = TransferThreadPool.c(new DownloadTask(this, amazonS3, transferStatusUpdater));
            return true;
        }
        this.K = TransferThreadPool.c(new UploadTask(this, amazonS3, transferDBUtil, transferStatusUpdater));
        return true;
    }

    public void j(Cursor cursor) {
        this.f17864a = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        this.f17865b = cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"));
        this.f17877n = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow(NativeComponentConstants.KEY_COMPONENT_TYPE)));
        this.f17878o = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state")));
        this.f17879p = cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"));
        this.f17880q = cursor.getString(cursor.getColumnIndexOrThrow("key"));
        this.f17881r = cursor.getString(cursor.getColumnIndexOrThrow("version_id"));
        this.f17871h = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
        this.f17872i = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_current"));
        this.f17873j = cursor.getLong(cursor.getColumnIndexOrThrow("speed"));
        this.f17866c = cursor.getInt(cursor.getColumnIndexOrThrow("is_requester_pays"));
        this.f17867d = cursor.getInt(cursor.getColumnIndexOrThrow("is_multipart"));
        this.f17868e = cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"));
        this.f17869f = cursor.getInt(cursor.getColumnIndexOrThrow("is_encrypted"));
        this.f17870g = cursor.getInt(cursor.getColumnIndexOrThrow("part_num"));
        this.f17884u = cursor.getString(cursor.getColumnIndexOrThrow(DownloadModel.ETAG));
        this.f17882s = cursor.getString(cursor.getColumnIndexOrThrow(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE));
        this.f17883t = cursor.getString(cursor.getColumnIndexOrThrow("multipart_id"));
        this.f17874k = cursor.getLong(cursor.getColumnIndexOrThrow("range_start"));
        this.f17875l = cursor.getLong(cursor.getColumnIndexOrThrow("range_last"));
        this.f17876m = cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"));
        this.f17885v = cursor.getString(cursor.getColumnIndexOrThrow("header_content_type"));
        this.f17886w = cursor.getString(cursor.getColumnIndexOrThrow("header_content_language"));
        this.f17887x = cursor.getString(cursor.getColumnIndexOrThrow("header_content_disposition"));
        this.f17888y = cursor.getString(cursor.getColumnIndexOrThrow("header_content_encoding"));
        this.f17889z = cursor.getString(cursor.getColumnIndexOrThrow("header_cache_control"));
        this.A = cursor.getString(cursor.getColumnIndexOrThrow("header_expire"));
        this.C = JsonUtils.d(cursor.getString(cursor.getColumnIndexOrThrow("user_metadata")));
        this.D = cursor.getString(cursor.getColumnIndexOrThrow("expiration_time_rule_id"));
        this.E = cursor.getString(cursor.getColumnIndexOrThrow("http_expires_date"));
        this.F = cursor.getString(cursor.getColumnIndexOrThrow("sse_algorithm"));
        this.G = cursor.getString(cursor.getColumnIndexOrThrow("kms_key"));
        this.H = cursor.getString(cursor.getColumnIndexOrThrow("content_md5"));
        this.I = cursor.getString(cursor.getColumnIndexOrThrow("canned_acl"));
        this.B = cursor.getString(cursor.getColumnIndexOrThrow("header_storage_class"));
        this.J = (TransferUtilityOptions) this.L.fromJson(cursor.getString(cursor.getColumnIndexOrThrow("transfer_utility_options")), TransferUtilityOptions.class);
    }

    public String toString() {
        return "[id:" + this.f17864a + ",bucketName:" + this.f17879p + ",key:" + this.f17880q + ",file:" + this.f17882s + ",type:" + this.f17877n + ",bytesTotal:" + this.f17871h + ",bytesCurrent:" + this.f17872i + ",fileOffset:" + this.f17876m + ",state:" + this.f17878o + ",cannedAcl:" + this.I + ",mainUploadId:" + this.f17865b + ",isMultipart:" + this.f17867d + ",isLastPart:" + this.f17868e + ",partNumber:" + this.f17870g + ",multipartId:" + this.f17883t + ",eTag:" + this.f17884u + ",storageClass:" + this.B + ",userMetadata:" + this.C.toString() + ",transferUtilityOptions:" + this.L.toJson(this.J) + "]";
    }
}
