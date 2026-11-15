package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.VersionInfoUtils;
import java.io.File;

public class TransferUtility {

    private static final Log f17908g = LogFactory.b(TransferUtility.class);

    private static final Object f17909h = new Object();

    private static String f17910i = "";

    private TransferStatusUpdater f17911a;

    private TransferDBUtil f17912b;

    final ConnectivityManager f17913c;

    private final AmazonS3 f17914d;

    private final String f17915e;

    private final TransferUtilityOptions f17916f;

    public static class Builder {

        private AmazonS3 f17917a;

        private Context f17918b;

        private String f17919c;

        private TransferUtilityOptions f17920d;

        protected Builder() {
        }

        public TransferUtility a() {
            if (this.f17917a == null) {
                throw new IllegalArgumentException("AmazonS3 client is required please set using .s3Client(yourClient)");
            }
            if (this.f17918b == null) {
                throw new IllegalArgumentException("Context is required please set using .context(applicationContext)");
            }
            if (this.f17920d == null) {
                this.f17920d = new TransferUtilityOptions();
            }
            return new TransferUtility(this.f17917a, this.f17918b, this.f17919c, this.f17920d);
        }

        public Builder b(Context context) {
            this.f17918b = context.getApplicationContext();
            return this;
        }

        public Builder c(AmazonS3 amazonS3) {
            this.f17917a = amazonS3;
            return this;
        }
    }

    static AmazonWebServiceRequest a(AmazonWebServiceRequest amazonWebServiceRequest) {
        amazonWebServiceRequest.getRequestClientOptions().a("TransferService_multipart/" + f() + VersionInfoUtils.c());
        return amazonWebServiceRequest;
    }

    static AmazonWebServiceRequest b(AmazonWebServiceRequest amazonWebServiceRequest) {
        amazonWebServiceRequest.getRequestClientOptions().a("TransferService/" + f() + VersionInfoUtils.c());
        return amazonWebServiceRequest;
    }

    public static Builder c() {
        return new Builder();
    }

    private int e(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        long length = file.length();
        double d10 = length;
        long jMax = (long) Math.max(Math.ceil(d10 / 10000.0d), 5242880.0d);
        int iCeil = ((int) Math.ceil(d10 / jMax)) + 1;
        ContentValues[] contentValuesArr = new ContentValues[iCeil];
        contentValuesArr[0] = this.f17912b.d(str, str2, file, 0L, 0, "", file.length(), 0, objectMetadata, cannedAccessControlList, this.f17916f);
        int i10 = 1;
        long j10 = 0;
        for (int i11 = 1; i11 < iCeil; i11++) {
            long jMin = Math.min(jMax, length);
            length -= jMax;
            contentValuesArr[i11] = this.f17912b.d(str, str2, file, j10, i10, "", jMin, length <= 0 ? 1 : 0, objectMetadata, cannedAccessControlList, this.f17916f);
            j10 += jMax;
            i10++;
        }
        return this.f17912b.a(contentValuesArr);
    }

    private static String f() {
        synchronized (f17909h) {
            try {
                String str = f17910i;
                if (str != null && !str.trim().isEmpty()) {
                    return f17910i.trim() + "/";
                }
                return "";
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean g(File file) {
        return file != null && file.length() > 5242880;
    }

    private synchronized void h(String str, int i10) {
        S3ClientReference.b(Integer.valueOf(i10), this.f17914d);
        TransferRecord transferRecordD = this.f17911a.d(i10);
        if (transferRecordD == null) {
            transferRecordD = this.f17912b.j(i10);
            if (transferRecordD == null) {
                f17908g.f("Cannot find transfer with id: " + i10);
                return;
            }
            this.f17911a.b(transferRecordD);
        } else if ("add_transfer".equals(str)) {
            f17908g.j("Transfer has already been added: " + i10);
            return;
        }
        if ("add_transfer".equals(str) || "resume_transfer".equals(str)) {
            transferRecordD.i(this.f17914d, this.f17912b, this.f17911a, this.f17913c);
        } else if ("pause_transfer".equals(str)) {
            transferRecordD.g(this.f17914d, this.f17911a);
        } else if ("cancel_transfer".equals(str)) {
            transferRecordD.b(this.f17914d, this.f17911a);
        } else {
            f17908g.f("Unknown action: " + str);
        }
    }

    public boolean d(int i10) {
        h("cancel_transfer", i10);
        return true;
    }

    public TransferObserver i(String str, String str2, File file) {
        return j(str, str2, file, new ObjectMetadata());
    }

    public TransferObserver j(String str, String str2, File file, ObjectMetadata objectMetadata) {
        return k(str, str2, file, objectMetadata, null);
    }

    public TransferObserver k(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        return l(str, str2, file, objectMetadata, cannedAccessControlList, null);
    }

    public TransferObserver l(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferListener transferListener) {
        if (file == null || file.isDirectory() || !file.exists()) {
            throw new IllegalArgumentException("Invalid file: " + file);
        }
        int iE = g(file) ? e(str, str2, file, objectMetadata, cannedAccessControlList) : Integer.parseInt(this.f17912b.k(TransferType.UPLOAD, str, str2, file, objectMetadata, cannedAccessControlList, this.f17916f).getLastPathSegment());
        TransferObserver transferObserver = new TransferObserver(iE, this.f17912b, str, str2, file, transferListener);
        h("add_transfer", iE);
        return transferObserver;
    }

    private TransferUtility(AmazonS3 amazonS3, Context context, String str, TransferUtilityOptions transferUtilityOptions) {
        this.f17914d = amazonS3;
        this.f17915e = str;
        this.f17916f = transferUtilityOptions;
        this.f17912b = new TransferDBUtil(context.getApplicationContext());
        this.f17911a = TransferStatusUpdater.c(context.getApplicationContext());
        TransferThreadPool.b(transferUtilityOptions.getTransferThreadPoolSize());
        this.f17913c = (ConnectivityManager) context.getSystemService("connectivity");
    }
}
