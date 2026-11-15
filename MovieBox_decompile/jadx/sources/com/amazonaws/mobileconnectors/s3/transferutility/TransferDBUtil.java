package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.json.JsonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

class TransferDBUtil {

    private static final Log f17842b = LogFactory.b(TransferDBUtil.class);

    private static final Object f17843c = new Object();

    private static TransferDBBase f17844d;

    private Gson f17845a = new Gson();

    public TransferDBUtil(Context context) {
        synchronized (f17843c) {
            try {
                if (f17844d == null) {
                    f17844d = new TransferDBBase(context);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String b(int i10) {
        if (i10 <= 0) {
            f17842b.f("Cannot create a string of 0 or less placeholders.");
            return null;
        }
        StringBuilder sb2 = new StringBuilder((i10 * 2) - 1);
        sb2.append(UrlUtils.QUESTION_MARK);
        for (int i11 = 1; i11 < i10; i11++) {
            sb2.append(",?");
        }
        return sb2.toString();
    }

    private ContentValues e(ObjectMetadata objectMetadata) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("user_metadata", JsonUtils.e(objectMetadata.getUserMetadata()));
        contentValues.put("header_content_type", objectMetadata.getContentType());
        contentValues.put("header_content_encoding", objectMetadata.getContentEncoding());
        contentValues.put("header_cache_control", objectMetadata.getCacheControl());
        contentValues.put("content_md5", objectMetadata.getContentMD5());
        contentValues.put("header_content_disposition", objectMetadata.getContentDisposition());
        contentValues.put("sse_algorithm", objectMetadata.getSSEAlgorithm());
        contentValues.put("kms_key", objectMetadata.getSSEAwsKmsKeyId());
        contentValues.put("expiration_time_rule_id", objectMetadata.getExpirationTimeRuleId());
        if (objectMetadata.getHttpExpiresDate() != null) {
            contentValues.put("http_expires_date", String.valueOf(objectMetadata.getHttpExpiresDate().getTime()));
        }
        if (objectMetadata.getStorageClass() != null) {
            contentValues.put("header_storage_class", objectMetadata.getStorageClass());
        }
        return contentValues;
    }

    private ContentValues f(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, transferType.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put("bucket_name", str);
        contentValues.put("key", str2);
        contentValues.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, file.getAbsolutePath());
        contentValues.put("bytes_current", (Long) 0L);
        if (transferType.equals(TransferType.UPLOAD)) {
            contentValues.put("bytes_total", Long.valueOf(file.length()));
        }
        contentValues.put("is_multipart", (Integer) 0);
        contentValues.put("part_num", (Integer) 0);
        contentValues.put("is_encrypted", (Integer) 0);
        contentValues.putAll(e(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put("canned_acl", cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put("transfer_utility_options", this.f17845a.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public int a(ContentValues[] contentValuesArr) {
        TransferDBBase transferDBBase = f17844d;
        return transferDBBase.a(transferDBBase.d(), contentValuesArr);
    }

    public int c(int i10) {
        return f17844d.b(i(i10), null, null);
    }

    public ContentValues d(String str, String str2, File file, long j10, int i10, String str3, long j11, int i11, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, TransferType.UPLOAD.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put("bucket_name", str);
        contentValues.put("key", str2);
        contentValues.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, file.getAbsolutePath());
        contentValues.put("bytes_current", (Long) 0L);
        contentValues.put("bytes_total", Long.valueOf(j11));
        contentValues.put("is_multipart", (Integer) 1);
        contentValues.put("part_num", Integer.valueOf(i10));
        contentValues.put("file_offset", Long.valueOf(j10));
        contentValues.put("multipart_id", str3);
        contentValues.put("is_last_part", Integer.valueOf(i11));
        contentValues.put("is_encrypted", (Integer) 0);
        contentValues.putAll(e(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put("canned_acl", cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put("transfer_utility_options", this.f17845a.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public List g(int i10, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorF = null;
        try {
            cursorF = f17844d.f(h(i10), null, null, null, null);
            while (cursorF.moveToNext()) {
                if (!TransferState.PART_COMPLETED.equals(TransferState.getState(cursorF.getString(cursorF.getColumnIndexOrThrow("state"))))) {
                    UploadPartRequest uploadPartRequestWithPartSize = new UploadPartRequest().withId(cursorF.getInt(cursorF.getColumnIndexOrThrow("_id"))).withMainUploadId(cursorF.getInt(cursorF.getColumnIndexOrThrow("main_upload_id"))).withBucketName(cursorF.getString(cursorF.getColumnIndexOrThrow("bucket_name"))).withKey(cursorF.getString(cursorF.getColumnIndexOrThrow("key"))).withUploadId(str).withFile(new File(cursorF.getString(cursorF.getColumnIndexOrThrow(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)))).withFileOffset(cursorF.getLong(cursorF.getColumnIndexOrThrow("file_offset"))).withPartNumber(cursorF.getInt(cursorF.getColumnIndexOrThrow("part_num"))).withPartSize(cursorF.getLong(cursorF.getColumnIndexOrThrow("bytes_total")));
                    boolean z10 = true;
                    if (1 != cursorF.getInt(cursorF.getColumnIndexOrThrow("is_last_part"))) {
                        z10 = false;
                    }
                    arrayList.add(uploadPartRequestWithPartSize.withLastPart(z10));
                }
            }
            cursorF.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorF != null) {
                cursorF.close();
            }
            throw th2;
        }
    }

    public Uri h(int i10) {
        return Uri.parse(f17844d.d() + "/part/" + i10);
    }

    public Uri i(int i10) {
        return Uri.parse(f17844d.d() + "/" + i10);
    }

    TransferRecord j(int i10) throws Throwable {
        Cursor cursor = null;
        TransferRecord transferRecord = null;
        try {
            Cursor cursorN = n(i10);
            try {
                if (cursorN.moveToFirst()) {
                    transferRecord = new TransferRecord(i10);
                    transferRecord.j(cursorN);
                }
                cursorN.close();
                return transferRecord;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorN;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Uri k(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValuesF = f(transferType, str, str2, file, objectMetadata, cannedAccessControlList, transferUtilityOptions);
        TransferDBBase transferDBBase = f17844d;
        return transferDBBase.e(transferDBBase.d(), contentValuesF);
    }

    public long l(int i10) {
        Cursor cursorF = null;
        try {
            cursorF = f17844d.f(h(i10), null, null, null, null);
            long j10 = 0;
            while (cursorF.moveToNext()) {
                if (TransferState.PART_COMPLETED.equals(TransferState.getState(cursorF.getString(cursorF.getColumnIndexOrThrow("state"))))) {
                    j10 += cursorF.getLong(cursorF.getColumnIndexOrThrow("bytes_total"));
                }
            }
            cursorF.close();
            return j10;
        } catch (Throwable th2) {
            if (cursorF != null) {
                cursorF.close();
            }
            throw th2;
        }
    }

    public List m(int i10) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorF = null;
        try {
            cursorF = f17844d.f(h(i10), null, null, null, null);
            while (cursorF.moveToNext()) {
                arrayList.add(new PartETag(cursorF.getInt(cursorF.getColumnIndexOrThrow("part_num")), cursorF.getString(cursorF.getColumnIndexOrThrow(DownloadModel.ETAG))));
            }
            cursorF.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorF != null) {
                cursorF.close();
            }
            throw th2;
        }
    }

    public Cursor n(int i10) {
        return f17844d.f(i(i10), null, null, null, null);
    }

    public Cursor o(TransferType transferType, TransferState[] transferStateArr) {
        String str;
        String[] strArr;
        int length = transferStateArr.length;
        String strB = b(length);
        int i10 = 0;
        if (transferType == TransferType.ANY) {
            String str2 = "state in (" + strB + ")";
            String[] strArr2 = new String[length];
            while (i10 < length) {
                strArr2[i10] = transferStateArr[i10].toString();
                i10++;
            }
            str = str2;
            strArr = strArr2;
        } else {
            String str3 = "state in (" + strB + ") and " + NativeComponentConstants.KEY_COMPONENT_TYPE + "=?";
            String[] strArr3 = new String[length + 1];
            while (i10 < length) {
                strArr3[i10] = transferStateArr[i10].toString();
                i10++;
            }
            strArr3[i10] = transferType.toString();
            str = str3;
            strArr = strArr3;
        }
        TransferDBBase transferDBBase = f17844d;
        return transferDBBase.f(transferDBBase.d(), null, str, strArr, null);
    }

    public int p(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("bytes_current", Long.valueOf(j10));
        return f17844d.g(i(i10), contentValues, null, null);
    }

    public int q(int i10, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DownloadModel.ETAG, str);
        return f17844d.g(i(i10), contentValues, null, null);
    }

    public int r(int i10, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("multipart_id", str);
        return f17844d.g(i(i10), contentValues, null, null);
    }

    public int s(int i10, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", transferState.toString());
        return TransferState.FAILED.equals(transferState) ? f17844d.g(i(i10), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()}) : f17844d.g(i(i10), contentValues, null, null);
    }

    public int t(TransferRecord transferRecord) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(transferRecord.f17864a));
        contentValues.put("state", transferRecord.f17878o.toString());
        contentValues.put("bytes_total", Long.valueOf(transferRecord.f17871h));
        contentValues.put("bytes_current", Long.valueOf(transferRecord.f17872i));
        return f17844d.g(i(transferRecord.f17864a), contentValues, null, null);
    }
}
