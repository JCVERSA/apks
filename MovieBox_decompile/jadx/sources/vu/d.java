package vu;

import android.text.TextUtils;
import com.amazonaws.auth.BasicSessionCredentials;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferListener;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferState;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.S3ClientOptions;
import com.blankj.utilcode.util.Utils;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class d extends vu.a {

    private TransferUtility f73826b;

    private String f73827c = "";

    private LinkedHashMap f73828d = new LinkedHashMap();

    public static final class a implements TransferListener {

        final String f73830b;

        final uu.a f73831c;

        final String f73832d;

        final TransferObserver f73833e;

        public class C0917a {

            public static final int[] f73834a;

            static {
                int[] iArr = new int[TransferState.values().length];
                try {
                    iArr[TransferState.COMPLETED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TransferState.FAILED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TransferState.CANCELED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f73834a = iArr;
            }
        }

        a(String str, uu.a aVar, String str2, TransferObserver transferObserver) {
            this.f73830b = str;
            this.f73831c = aVar;
            this.f73832d = str2;
            this.f73833e = transferObserver;
        }

        @Override
        public void a(int i10, TransferState transferState) {
            int i11 = transferState == null ? -1 : C0917a.f73834a[transferState.ordinal()];
            if (i11 == 1) {
                wu.a.f74770a.b(d.this.d() + " --> onStateChanged() --> COMPLETED --> file path == " + this.f73830b + " --> id = " + i10);
                uu.a aVar = this.f73831c;
                if (aVar != null) {
                    String str = this.f73832d;
                    String str2 = this.f73830b;
                    String strE = this.f73833e.e();
                    Intrinsics.g(strE, "transferObserver.bucket");
                    aVar.b(str, str2, strE);
                    return;
                }
                return;
            }
            if (i11 == 2) {
                wu.a.f74770a.c(d.this.d() + " --> onStateChanged() --> FAILED");
                uu.a aVar2 = this.f73831c;
                if (aVar2 != null) {
                    aVar2.c(this.f73832d, "failed", "", d.this.f());
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
            wu.a.f74770a.b(d.this.d() + " --> onStateChanged() --> CANCELED --> 取消了");
            uu.a aVar3 = this.f73831c;
            if (aVar3 != null) {
                aVar3.c(this.f73832d, "canceled", "", d.this.f());
            }
        }

        @Override
        public void b(int i10, long j10, long j11) {
            wu.a.f74770a.b(d.this.d() + " --> onProgressChanged() --> id = " + i10 + " --> bytesCurrent = " + j10 + " --> bytesTotal = " + j11);
            uu.a aVar = this.f73831c;
            if (aVar != null) {
                aVar.a(this.f73832d, j10, j11);
            }
        }

        @Override
        public void c(int i10, Exception exc) {
            wu.a.f74770a.b(d.this.d() + " --> onError() --> id = " + i10 + " --> ex = " + (exc != null ? exc.getMessage() : null));
            uu.a aVar = this.f73831c;
            if (aVar != null) {
                aVar.c(this.f73832d, exc != null ? exc.getMessage() : null, "", d.this.f());
            }
        }
    }

    private final void j(boolean z10, TransferObserver transferObserver) {
        if (z10) {
            if (!this.f73828d.containsKey(this.f73826b)) {
                this.f73828d.put(this.f73826b, CollectionsKt.q(transferObserver));
                return;
            }
            List list = (List) this.f73828d.get(this.f73826b);
            if (list != null) {
                list.add(transferObserver);
            }
        }
    }

    private final void k(TstTokenEntity tstTokenEntity) {
        AmazonS3Client amazonS3Client = new AmazonS3Client(new BasicSessionCredentials(tstTokenEntity.getAccessKeyId(), tstTokenEntity.getAccessKeySecret(), tstTokenEntity.getSecurityToken()), Region.e(Regions.fromName(tstTokenEntity.getRegionId())));
        amazonS3Client.d0(S3ClientOptions.a().b(false).c(true).a());
        this.f73826b = TransferUtility.c().c(amazonS3Client).b(Utils.a()).a();
    }

    private final void l(TstTokenEntity tstTokenEntity, String str, UploadFileType uploadFileType, boolean z10, uu.a aVar) {
        String strA = a(uploadFileType, str);
        TransferUtility transferUtility = this.f73826b;
        TransferObserver transferObserverI = transferUtility != null ? transferUtility.i(tstTokenEntity.getBucket(), strA, new File(str)) : null;
        j(z10, transferObserverI);
        if (transferObserverI != null) {
            transferObserverI.g(new a(strA, aVar, str, transferObserverI));
        }
    }

    @Override
    public void b() {
        for (Map.Entry entry : this.f73828d.entrySet()) {
            for (TransferObserver transferObserver : (Iterable) entry.getValue()) {
                TransferUtility transferUtility = (TransferUtility) entry.getKey();
                if (transferUtility != null) {
                    transferUtility.d(transferObserver != null ? transferObserver.f() : 0);
                }
                if (transferObserver != null) {
                    transferObserver.d();
                }
            }
        }
        this.f73828d.clear();
        wu.a.f74770a.b(d() + " --> cancel() --> end");
    }

    @Override
    public void c(TstTokenEntity tstToken, String localFilePath, UploadFileType uploadFileType, boolean z10, uu.a aVar) {
        Intrinsics.h(tstToken, "tstToken");
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        l(tstToken, localFilePath, uploadFileType, z10, aVar);
    }

    @Override
    public UploadTstTokenStorageType f() {
        return UploadTstTokenStorageType.TST_TOKEN_STORAGE_S3;
    }

    @Override
    public void h(TstTokenEntity tstToken) {
        Intrinsics.h(tstToken, "tstToken");
        if (TextUtils.equals(this.f73827c, tstToken.getAccessKeyId())) {
            return;
        }
        String accessKeyId = tstToken.getAccessKeyId();
        if (accessKeyId == null) {
            accessKeyId = "";
        }
        this.f73827c = accessKeyId;
        k(tstToken);
    }
}
