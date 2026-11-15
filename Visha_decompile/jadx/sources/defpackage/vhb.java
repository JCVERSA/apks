package defpackage;

import com.transsion.cloud_drive.base.api.model.CreateFileResult;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileUploadUrl;
import com.transsion.cloud_drive.base.api.model.FileUserTag;
import com.transsion.cloud_drive.base.api.model.UploadPartInfo;
import com.transsion.cloud_drive.base.internal.ServiceProvider;
import com.transsion.cloud_drive.base.internal.request.CompleteUploadFileRequest;
import com.transsion.cloud_drive.base.internal.request.CreateFileRequest;
import com.transsion.cloud_drive.base.internal.request.GetUploadUrlRequest;
import com.transsion.cloud_drive.base.internal.request.RestoreRecycleBinFileRequest;
import com.transsion.cloud_drive.base.network.RequestErrorCode;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloud_drive.transfer.api.model.UploadTaskInfo;
import com.transsion.cloud_drive.transfer.common.CommonFileUtils;
import com.transsion.cloud_drive.transfer.common.TransferErrorCode;
import com.transsion.cloud_drive.transfer.exception.TransferException;
import com.transsion.cloud_drive.transfer.internal.upload.UploadState;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.Response;

public final class vhb extends wc0 {
    public final String i;
    public final String j;
    public jhb k;
    public thb l;
    public nt4 m;
    public boolean n;
    public mhb o;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[UploadState.values().length];
            try {
                iArr[UploadState.FILE_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UploadState.PRE_HASH_COLLISION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UploadState.RESTORE_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UploadState.CRC_HASH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UploadState.GET_URL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[UploadState.UPLOADING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[UploadState.FILE_COMPLETE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vhb(UploadTaskInfo uploadTaskInfo) {
        super(uploadTaskInfo);
        y45.j(uploadTaskInfo, "taskInfo");
        this.i = "UploadSerialTask";
        this.j = uploadTaskInfo.getTaskId();
    }

    private final void L() {
        oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] is cancelled!");
        y();
    }

    private final void N() throws FileNotFoundException {
        oq5.a.a(this.i, "execute upload task start:" + ((UploadTaskInfo) i()).getTaskId());
        w();
        File file = new File(((UploadTaskInfo) i()).getFile());
        if (!file.exists()) {
            throw new FileNotFoundException(file.getAbsolutePath());
        }
        List listQ = Q();
        while (!this.n) {
            mhb mhbVar = this.o;
            if (mhbVar == null) {
                y45.B("uploadInfo");
                mhbVar = null;
            }
            switch (a.a[mhbVar.g().ordinal()]) {
                case 1:
                    if (!M(listQ, true)) {
                        return;
                    }
                    break;
                case 2:
                    if (!M(listQ, false)) {
                        return;
                    }
                    break;
                case 3:
                    if (!R()) {
                        return;
                    }
                    break;
                case 4:
                    K();
                    break;
                case 5:
                    if (!O(listQ)) {
                        return;
                    }
                    break;
                case 6:
                    if (!U(listQ)) {
                        oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] chunks fail");
                        return;
                    }
                    break;
                    break;
                case 7:
                    if (W()) {
                        oq5.a.a(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] file:" + ((UploadTaskInfo) i()).getFileName() + " completed!");
                        return;
                    }
                    return;
            }
        }
    }

    public static final void V(vhb vhbVar, long j) {
        y45.j(vhbVar, "this$0");
        UploadTaskInfo uploadTaskInfo = (UploadTaskInfo) vhbVar.i();
        uploadTaskInfo.setTransferredSize(uploadTaskInfo.getTransferredSize() + j);
        vhbVar.t();
    }

    /* JADX WARN: Code duplicated, block: B:67:0x013e A[Catch: Exception -> 0x00e3, TryCatch #0 {Exception -> 0x00e3, blocks: (B:43:0x00da, B:45:0x00de, B:48:0x00e6, B:50:0x00ea, B:51:0x00ee, B:67:0x013e, B:69:0x0146, B:70:0x014a, B:72:0x0170, B:74:0x017b, B:75:0x017f, B:77:0x0187, B:78:0x018b, B:80:0x01b3, B:81:0x01b7, B:83:0x01be, B:85:0x01c3, B:58:0x0111, B:61:0x011a, B:62:0x0124, B:64:0x012c, B:65:0x0136, B:71:0x0167), top: B:89:0x00da }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0146 A[Catch: Exception -> 0x00e3, TryCatch #0 {Exception -> 0x00e3, blocks: (B:43:0x00da, B:45:0x00de, B:48:0x00e6, B:50:0x00ea, B:51:0x00ee, B:67:0x013e, B:69:0x0146, B:70:0x014a, B:72:0x0170, B:74:0x017b, B:75:0x017f, B:77:0x0187, B:78:0x018b, B:80:0x01b3, B:81:0x01b7, B:83:0x01be, B:85:0x01c3, B:58:0x0111, B:61:0x011a, B:62:0x0124, B:64:0x012c, B:65:0x0136, B:71:0x0167), top: B:89:0x00da }] */
    public final void K() {
        mhb mhbVar;
        mhb mhbVar2 = this.o;
        mhb mhbVar3 = null;
        if (mhbVar2 == null) {
            y45.B("uploadInfo");
            mhbVar2 = null;
        }
        if (j1a.o0(mhbVar2.a())) {
            oq5.a.d(this.i, "CRC algorithm is empty, cannot calculate CRC");
            return;
        }
        File file = new File(((UploadTaskInfo) i()).getFile());
        long jLastModified = file.lastModified();
        String strA = "";
        if (((UploadTaskInfo) i()).getFileSize() == 0) {
            oq5.a.d(this.i, "file size is 0, CRC value is empty");
            mhb mhbVar4 = this.o;
            if (mhbVar4 == null) {
                y45.B("uploadInfo");
                mhbVar4 = null;
            }
            mhbVar4.k("");
            mhb mhbVar5 = this.o;
            if (mhbVar5 == null) {
                y45.B("uploadInfo");
                mhbVar5 = null;
            }
            mhbVar5.p(UploadState.UPLOADING);
            mhb mhbVar6 = this.o;
            if (mhbVar6 == null) {
                y45.B("uploadInfo");
            } else {
                mhbVar3 = mhbVar6;
            }
            mhbVar3.n(jLastModified);
            S();
            return;
        }
        mhb mhbVar7 = this.o;
        if (mhbVar7 == null) {
            y45.B("uploadInfo");
            mhbVar7 = null;
        }
        if (mhbVar7.e() == jLastModified) {
            mhb mhbVar8 = this.o;
            if (mhbVar8 == null) {
                y45.B("uploadInfo");
                mhbVar8 = null;
            }
            if (mhbVar8.b().length() != 0) {
                oq5 oq5Var = oq5.a;
                String str = this.i;
                mhb mhbVar9 = this.o;
                if (mhbVar9 == null) {
                    y45.B("uploadInfo");
                    mhbVar9 = null;
                }
                oq5Var.d(str, "file not changed, use cached CRC value: " + mhbVar9.b());
                mhb mhbVar10 = this.o;
                if (mhbVar10 == null) {
                    y45.B("uploadInfo");
                } else {
                    mhbVar3 = mhbVar10;
                }
                mhbVar3.p(UploadState.UPLOADING);
                S();
                return;
            }
        }
        try {
            mhb mhbVar11 = this.o;
            if (mhbVar11 == null) {
                y45.B("uploadInfo");
                mhbVar11 = null;
            }
            mhb mhbVar12 = this.o;
            if (mhbVar12 == null) {
                y45.B("uploadInfo");
                mhbVar12 = null;
            }
            String lowerCase = mhbVar12.a().toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -1352399984) {
                if (iHashCode != 94921523) {
                    if (iHashCode == 94921618 && lowerCase.equals("crc64")) {
                        strA = new eq3(file).a();
                    } else {
                        oq5 oq5Var2 = oq5.a;
                        String str2 = this.i;
                        mhbVar = this.o;
                        if (mhbVar == null) {
                            y45.B("uploadInfo");
                            mhbVar = null;
                        }
                        oq5Var2.b(str2, "unsupported CRC algorithm: " + mhbVar.a());
                    }
                } else if (lowerCase.equals("crc32")) {
                    strA = new dq3(file).a();
                } else {
                    oq5 oq5Var3 = oq5.a;
                    String str3 = this.i;
                    mhbVar = this.o;
                    if (mhbVar == null) {
                        y45.B("uploadInfo");
                        mhbVar = null;
                    }
                    oq5Var3.b(str3, "unsupported CRC algorithm: " + mhbVar.a());
                }
            } else if (lowerCase.equals("crc32c")) {
                strA = new cq3(file).a();
            } else {
                oq5 oq5Var4 = oq5.a;
                String str4 = this.i;
                mhbVar = this.o;
                if (mhbVar == null) {
                    y45.B("uploadInfo");
                    mhbVar = null;
                }
                oq5Var4.b(str4, "unsupported CRC algorithm: " + mhbVar.a());
            }
            mhbVar11.k(strA);
            oq5 oq5Var5 = oq5.a;
            String str5 = this.i;
            mhb mhbVar13 = this.o;
            if (mhbVar13 == null) {
                y45.B("uploadInfo");
                mhbVar13 = null;
            }
            String strA2 = mhbVar13.a();
            mhb mhbVar14 = this.o;
            if (mhbVar14 == null) {
                y45.B("uploadInfo");
                mhbVar14 = null;
            }
            oq5Var5.a(str5, "calculate file CRC with algorithm: " + strA2 + "  hash:" + mhbVar14.b());
            mhb mhbVar15 = this.o;
            if (mhbVar15 == null) {
                y45.B("uploadInfo");
                mhbVar15 = null;
            }
            mhbVar15.n(jLastModified);
            mhb mhbVar16 = this.o;
            if (mhbVar16 == null) {
                y45.B("uploadInfo");
            } else {
                mhbVar3 = mhbVar16;
            }
            mhbVar3.p(UploadState.UPLOADING);
            S();
        } catch (Exception e) {
            oq5.a.b(this.i, "calculate file CRC error:", e);
        }
    }

    public final boolean M(List list, boolean z) throws Throwable {
        mhb mhbVar;
        boolean z2;
        CreateFileRequest createFileRequest = new CreateFileRequest(((UploadTaskInfo) i()).getFileName(), ((UploadTaskInfo) i()).getParentId(), "file");
        createFileRequest.setSize(((UploadTaskInfo) i()).getFileSize());
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (true) {
            mhbVar = null;
            if (!it.hasNext()) {
                break;
            }
            arrayList.add(new UploadPartInfo(((ihb) it.next()).a(), null, 2, null));
        }
        createFileRequest.setPartInfoList(arrayList);
        if (z) {
            createFileRequest.setPreHash(CommonFileUtils.a.c(((UploadTaskInfo) i()).getFile()));
        } else {
            createFileRequest.setContentHash(CommonFileUtils.a.d(((UploadTaskInfo) i()).getFile()));
        }
        List<FileUserTag> listE1 = i81.e1(((UploadTaskInfo) i()).getTags());
        listE1.add(new FileUserTag("file_path", ((UploadTaskInfo) i()).getFile()));
        createFileRequest.setUserTags(listE1);
        ApiResponse<CreateFileResult> apiResponseB = ServiceProvider.a.a().b(createFileRequest);
        boolean z3 = true;
        if (apiResponseB instanceof ApiResponse.Success) {
            Object data = ((ApiResponse.Success) apiResponseB).getData();
            y45.g(data);
            CreateFileResult createFileResult = (CreateFileResult) data;
            mhb mhbVar2 = this.o;
            if (mhbVar2 == null) {
                y45.B("uploadInfo");
                mhbVar2 = null;
            }
            mhbVar2.m(createFileResult.getFileId());
            mhb mhbVar3 = this.o;
            if (mhbVar3 == null) {
                y45.B("uploadInfo");
                mhbVar3 = null;
            }
            mhbVar3.r(createFileResult.getUploadId());
            ((UploadTaskInfo) i()).setFileId(createFileResult.getFileId());
            ((UploadTaskInfo) i()).setHasTranscodeTask(createFileResult.getHasTranscodeTask());
            if (createFileResult.getRapidUpload()) {
                this.n = true;
                thb thbVar = this.l;
                if (thbVar == null) {
                    y45.B("uploadDbChannel");
                    thbVar = null;
                }
                mhb mhbVar4 = this.o;
                if (mhbVar4 == null) {
                    y45.B("uploadInfo");
                    mhbVar4 = null;
                }
                thbVar.delete(mhbVar4.h());
                ((UploadTaskInfo) i()).setFileId(createFileResult.getFileId());
                oq5.a.d(this.i, "upload file [" + ((UploadTaskInfo) i()).getFileName() + "] rapid success,taskInfo:" + i());
                n();
            } else {
                T(list, createFileResult.getPartInfoList());
                if (createFileResult.getCrc().length() > 0) {
                    mhb mhbVar5 = this.o;
                    if (mhbVar5 == null) {
                        y45.B("uploadInfo");
                        mhbVar5 = null;
                    }
                    mhbVar5.j(createFileResult.getCrc());
                    mhb mhbVar6 = this.o;
                    if (mhbVar6 == null) {
                        y45.B("uploadInfo");
                        mhbVar6 = null;
                    }
                    mhbVar6.p(UploadState.CRC_HASH);
                } else {
                    mhb mhbVar7 = this.o;
                    if (mhbVar7 == null) {
                        y45.B("uploadInfo");
                        mhbVar7 = null;
                    }
                    mhbVar7.p(UploadState.UPLOADING);
                }
                S();
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (apiResponseB instanceof ApiResponse.Failure.Error) {
            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseB;
            if (error.getErrorCode() == RequestErrorCode.FILE_PRE_HASH_COLLISION.getCode()) {
                mhb mhbVar8 = this.o;
                if (mhbVar8 == null) {
                    y45.B("uploadInfo");
                } else {
                    mhbVar = mhbVar8;
                }
                mhbVar.p(UploadState.PRE_HASH_COLLISION);
                oq5.a.d(this.i, "upload file [" + ((UploadTaskInfo) i()).getFileName() + "] pre-hash collision,try create file again");
            } else if (error.getErrorCode() == RequestErrorCode.PARENT_NOT_EXIST.getCode()) {
                oq5.a.d(this.i, "upload file [" + ((UploadTaskInfo) i()).getFileName() + "] parent not exist, try restore parent file");
                mhb mhbVar9 = this.o;
                if (mhbVar9 == null) {
                    y45.B("uploadInfo");
                } else {
                    mhbVar = mhbVar9;
                }
                mhbVar.p(UploadState.RESTORE_PARENT);
            } else {
                oq5.a.b(this.i, "create upload file fail, errCode:" + error.getErrorCode() + "  message:" + error.getMessage());
                p(new r5b(TransferErrorCode.CREATE_FILE_ERROR, null, Integer.valueOf(error.getErrorCode()), error.getMessage()));
                z3 = z2;
            }
            z2 = z3;
        }
        if (!(apiResponseB instanceof ApiResponse.Failure.Exception)) {
            return z2;
        }
        ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseB;
        if ((exception.getThrowable() instanceof InterruptedIOException) || (exception.getThrowable() instanceof InterruptedException)) {
            throw new InterruptedException();
        }
        oq5.a.b(this.i, "create file error:", exception.getThrowable());
        throw exception.getThrowable();
    }

    public final boolean O(List list) throws Throwable {
        boolean z;
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new UploadPartInfo(((ihb) it.next()).a(), null, 2, null));
        }
        mhb mhbVar = this.o;
        if (mhbVar == null) {
            y45.B("uploadInfo");
            mhbVar = null;
        }
        String strD = mhbVar.d();
        mhb mhbVar2 = this.o;
        if (mhbVar2 == null) {
            y45.B("uploadInfo");
            mhbVar2 = null;
        }
        ApiResponse<FileUploadUrl> apiResponseE = ServiceProvider.a.a().e(new GetUploadUrlRequest(strD, mhbVar2.i(), arrayList));
        if (apiResponseE instanceof ApiResponse.Success) {
            Object data = ((ApiResponse.Success) apiResponseE).getData();
            y45.g(data);
            T(list, ((FileUploadUrl) data).getPartInfoList());
            mhb mhbVar3 = this.o;
            if (mhbVar3 == null) {
                y45.B("uploadInfo");
                mhbVar3 = null;
            }
            mhbVar3.p(UploadState.UPLOADING);
            z = true;
        } else {
            z = false;
        }
        if (apiResponseE instanceof ApiResponse.Failure.Error) {
            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseE;
            oq5.a.b(this.i, "get download url fail,errCode:" + error.getErrorCode() + "  errMsg:" + error.getMessage());
            p(new r5b(TransferErrorCode.GET_UPLOAD_URL_ERROR, null, Integer.valueOf(error.getErrorCode()), error.getMessage()));
        }
        if (!(apiResponseE instanceof ApiResponse.Failure.Exception)) {
            return z;
        }
        ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseE;
        if ((exception.getThrowable() instanceof InterruptedException) || (exception.getThrowable() instanceof InterruptedIOException)) {
            throw new InterruptedException();
        }
        oq5.a.b(this.i, "get download url occur exception:", exception.getThrowable());
        throw exception.getThrowable();
    }

    public final void P(jhb jhbVar, thb thbVar, nt4 nt4Var) {
        y45.j(jhbVar, "config");
        y45.j(thbVar, "uploadBlockDbChannel");
        y45.j(nt4Var, "httpUploadChannel");
        this.k = jhbVar;
        this.l = thbVar;
        this.m = nt4Var;
    }

    public final List Q() {
        mhb mhbVar;
        long jB;
        long fileSize;
        synchronized (this) {
            try {
                thb thbVar = this.l;
                mhbVar = null;
                if (thbVar == null) {
                    y45.B("uploadDbChannel");
                    thbVar = null;
                }
                mhb mhbVarA = thbVar.a(getId());
                if (mhbVarA != null) {
                    this.o = mhbVarA;
                } else {
                    mhb mhbVar2 = new mhb();
                    mhbVar2.q(((UploadTaskInfo) i()).getTaskId());
                    mhbVar2.l(1);
                    this.o = mhbVar2;
                    thb thbVar2 = this.l;
                    if (thbVar2 == null) {
                        y45.B("uploadDbChannel");
                        thbVar2 = null;
                    }
                    mhb mhbVar3 = this.o;
                    if (mhbVar3 == null) {
                        y45.B("uploadInfo");
                        mhbVar3 = null;
                    }
                    thbVar2.b(mhbVar3);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        oq5 oq5Var = oq5.a;
        String str = this.i;
        String str2 = " upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] info:";
        mhb mhbVar4 = this.o;
        if (mhbVar4 == null) {
            y45.B("uploadInfo");
            mhbVar4 = null;
        }
        oq5Var.a(str, str2, mhbVar4);
        if (((UploadTaskInfo) i()).getFileSize() == 0) {
            oq5Var.j(this.i, "upload file [" + ((UploadTaskInfo) i()).getFileName() + "] skip,size is 0");
            return y71.k();
        }
        long fileSize2 = ((UploadTaskInfo) i()).getFileSize();
        jhb jhbVar = this.k;
        if (jhbVar == null) {
            y45.B("config");
            jhbVar = null;
        }
        if (fileSize2 % jhbVar.b() == 0) {
            long fileSize3 = ((UploadTaskInfo) i()).getFileSize();
            jhb jhbVar2 = this.k;
            if (jhbVar2 == null) {
                y45.B("config");
                jhbVar2 = null;
            }
            jB = fileSize3 / jhbVar2.b();
        } else {
            long fileSize4 = ((UploadTaskInfo) i()).getFileSize();
            jhb jhbVar3 = this.k;
            if (jhbVar3 == null) {
                y45.B("config");
                jhbVar3 = null;
            }
            jB = (fileSize4 / jhbVar3.b()) + 1;
        }
        int i = (int) jB;
        jhb jhbVar4 = this.k;
        if (jhbVar4 == null) {
            y45.B("config");
            jhbVar4 = null;
        }
        int iMin = Math.min(jhbVar4.a(), i);
        if (iMin == 1) {
            fileSize = ((UploadTaskInfo) i()).getFileSize();
            ((UploadTaskInfo) i()).getFileSize();
        } else {
            long j = iMin;
            if (((UploadTaskInfo) i()).getFileSize() % j == 0) {
                fileSize = ((UploadTaskInfo) i()).getFileSize() / j;
            } else {
                fileSize = (((UploadTaskInfo) i()).getFileSize() - (((UploadTaskInfo) i()).getFileSize() % j)) / ((long) (iMin - 1));
                ((UploadTaskInfo) i()).getFileSize();
            }
        }
        UploadTaskInfo uploadTaskInfo = (UploadTaskInfo) i();
        mhb mhbVar5 = this.o;
        if (mhbVar5 == null) {
            y45.B("uploadInfo");
        } else {
            mhbVar = mhbVar5;
        }
        uploadTaskInfo.setTransferredSize(((long) (mhbVar.c() - 1)) * fileSize);
        u15 u15Var = new u15(1, iMin);
        ArrayList arrayList = new ArrayList(z71.v(u15Var, 10));
        Iterator it = u15Var.iterator();
        while (it.hasNext()) {
            int iNextInt = ((q15) it).nextInt();
            arrayList.add(new ihb(iNextInt, ((long) (iNextInt - 1)) * fileSize, iNextInt == iMin ? ((UploadTaskInfo) i()).getFileSize() : ((long) iNextInt) * fileSize, null, 8, null));
        }
        return arrayList;
    }

    public final boolean R() throws Throwable {
        boolean z;
        ApiResponse<FileInfo> apiResponseD = ServiceProvider.a.a().d(new RestoreRecycleBinFileRequest(((UploadTaskInfo) i()).getParentId()));
        if (apiResponseD instanceof ApiResponse.Success) {
            mhb mhbVar = this.o;
            if (mhbVar == null) {
                y45.B("uploadInfo");
                mhbVar = null;
            }
            mhbVar.p(UploadState.UPLOADING);
            z = true;
        } else {
            z = false;
        }
        if (apiResponseD instanceof ApiResponse.Failure.Error) {
            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseD;
            if (error.getErrorCode() == RequestErrorCode.FILE_NOT_IN_RECYCLE_BIN.getCode()) {
                p(new r5b(TransferErrorCode.PARENT_FILE_NOT_EXIST, null, null, null, 14, null));
            } else {
                oq5.a.b(this.i, "restore upload file parent dir fail,errCode:" + error.getErrorCode() + "  message:" + error.getMessage());
                p(new r5b(TransferErrorCode.RESTORE_PARENT_ERROR, null, Integer.valueOf(error.getErrorCode()), error.getMessage()));
            }
        }
        if (!(apiResponseD instanceof ApiResponse.Failure.Exception)) {
            return z;
        }
        ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseD;
        if ((exception.getThrowable() instanceof InterruptedIOException) || (exception.getThrowable() instanceof InterruptedException)) {
            throw new InterruptedException();
        }
        oq5.a.b(this.i, "restore upload file parent dir occur exception ", exception.getThrowable());
        throw exception.getThrowable();
    }

    public final void S() {
        thb thbVar = this.l;
        mhb mhbVar = null;
        if (thbVar == null) {
            y45.B("uploadDbChannel");
            thbVar = null;
        }
        mhb mhbVar2 = this.o;
        if (mhbVar2 == null) {
            y45.B("uploadInfo");
        } else {
            mhbVar = mhbVar2;
        }
        thbVar.c(mhbVar);
    }

    public final void T(List list, List list2) {
        Object next;
        y45.j(list, "chunkList");
        y45.j(list2, "partInfoList");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ihb ihbVar = (ihb) it.next();
            Iterator it2 = list2.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (((UploadPartInfo) next).getPartNumber() != ihbVar.a());
            UploadPartInfo uploadPartInfo = (UploadPartInfo) next;
            if (uploadPartInfo != null) {
                ihbVar.e(uploadPartInfo.getUploadUrl());
            }
        }
    }

    public final boolean U(List list) throws Throwable {
        mhb mhbVar = null;
        mhb mhbVar2 = null;
        mhb mhbVar3 = null;
        mhb mhbVar4 = null;
        Response response = null;
        mhb mhbVar5 = null;
        if (list.isEmpty()) {
            oq5.a.b(this.i, "upload chunk list is empty,exit");
            this.n = true;
            thb thbVar = this.l;
            if (thbVar == null) {
                y45.B("uploadDbChannel");
                thbVar = null;
            }
            mhb mhbVar6 = this.o;
            if (mhbVar6 == null) {
                y45.B("uploadInfo");
            } else {
                mhbVar2 = mhbVar6;
            }
            thbVar.delete(mhbVar2.h());
            return true;
        }
        List list2 = list;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (j1a.o0(((ihb) it.next()).d())) {
                    oq5.a.j(this.i, "upload task[" + getId() + "] url is empty");
                    mhb mhbVar7 = this.o;
                    if (mhbVar7 == null) {
                        y45.B("uploadInfo");
                    } else {
                        mhbVar = mhbVar7;
                    }
                    mhbVar.p(UploadState.GET_URL);
                    return true;
                }
            }
        }
        is3 is3Var = new is3() {
            @Override
            public final void a(long j) {
                vhb.V(this.a, j);
            }
        };
        while (true) {
            mhb mhbVar8 = this.o;
            if (mhbVar8 == null) {
                y45.B("uploadInfo");
                mhbVar8 = null;
            }
            if (mhbVar8.c() > list.size()) {
                mhb mhbVar9 = this.o;
                if (mhbVar9 == null) {
                    y45.B("uploadInfo");
                    mhbVar9 = null;
                }
                if (mhbVar9.g() == UploadState.UPLOADING) {
                    mhb mhbVar10 = this.o;
                    if (mhbVar10 == null) {
                        y45.B("uploadInfo");
                    } else {
                        mhbVar5 = mhbVar10;
                    }
                    mhbVar5.p(UploadState.FILE_COMPLETE);
                    S();
                }
                oq5.a.a(this.i, " upload chunks complete");
                return true;
            }
            oq5 oq5Var = oq5.a;
            String str = this.i;
            mhb mhbVar11 = this.o;
            if (mhbVar11 == null) {
                y45.B("uploadInfo");
                mhbVar11 = null;
            }
            oq5Var.d(str, "start upload chunk [" + mhbVar11.c() + "]");
            mhb mhbVar12 = this.o;
            if (mhbVar12 == null) {
                y45.B("uploadInfo");
                mhbVar12 = null;
            }
            ihb ihbVar = (ihb) list.get(mhbVar12.c() - 1);
            try {
                try {
                    nt4 nt4Var = this.m;
                    if (nt4Var == null) {
                        y45.B("httpUploadChannel");
                        nt4Var = null;
                    }
                    Response responseA = nt4Var.a(new File(((UploadTaskInfo) i()).getFile()), ihbVar.d(), ihbVar.c(), ihbVar.b() - ihbVar.c(), is3Var);
                    try {
                        String str2 = this.i;
                        mhb mhbVar13 = this.o;
                        if (mhbVar13 == null) {
                            y45.B("uploadInfo");
                            mhbVar13 = null;
                        }
                        oq5Var.a(str2, "upload chunk [" + mhbVar13.c() + "] result:" + responseA.code());
                        responseA.close();
                        y45.g(responseA);
                        if (200 != responseA.code() && 409 != responseA.code()) {
                            if (403 == responseA.code()) {
                                mhb mhbVar14 = this.o;
                                if (mhbVar14 == null) {
                                    y45.B("uploadInfo");
                                } else {
                                    mhbVar3 = mhbVar14;
                                }
                                mhbVar3.p(UploadState.GET_URL);
                                return true;
                            }
                            String str3 = this.i;
                            mhb mhbVar15 = this.o;
                            if (mhbVar15 == null) {
                                y45.B("uploadInfo");
                                mhbVar15 = null;
                            }
                            oq5Var.b(str3, "upload chunk [" + mhbVar15.c() + "] error,code:" + responseA.code());
                            String fileName = ((UploadTaskInfo) i()).getFileName();
                            mhb mhbVar16 = this.o;
                            if (mhbVar16 == null) {
                                y45.B("uploadInfo");
                            } else {
                                mhbVar4 = mhbVar16;
                            }
                            throw new IllegalStateException("upload file[" + fileName + "] chunk " + mhbVar4.c() + " fail, code:" + responseA.code());
                        }
                        mhb mhbVar17 = this.o;
                        if (mhbVar17 == null) {
                            y45.B("uploadInfo");
                            mhbVar17 = null;
                        }
                        mhbVar17.l(mhbVar17.c() + 1);
                        S();
                    } catch (InterruptedIOException e) {
                        e = e;
                        oq5.a.b(this.i, " upload io interrupt:", e);
                        throw new InterruptedException();
                    } catch (InterruptedException e2) {
                        e = e2;
                        oq5.a.b(this.i, " upload interrupt:", e);
                        throw e;
                    } catch (Exception e3) {
                        e = e3;
                        oq5.a.b(this.i, "uploading file occur exception:", e);
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        response = responseA;
                        if (response != null) {
                            response.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (InterruptedIOException e4) {
                e = e4;
            } catch (InterruptedException e5) {
                e = e5;
            } catch (Exception e6) {
                e = e6;
            }
        }
    }

    public final boolean W() throws Throwable {
        boolean z;
        mhb mhbVar = this.o;
        if (mhbVar == null) {
            y45.B("uploadInfo");
            mhbVar = null;
        }
        String strD = mhbVar.d();
        mhb mhbVar2 = this.o;
        if (mhbVar2 == null) {
            y45.B("uploadInfo");
            mhbVar2 = null;
        }
        String strI = mhbVar2.i();
        mhb mhbVar3 = this.o;
        if (mhbVar3 == null) {
            y45.B("uploadInfo");
            mhbVar3 = null;
        }
        String strB = mhbVar3.b();
        if (strB.length() <= 0) {
            strB = null;
        }
        ApiResponse<FileInfo> apiResponseC = ServiceProvider.a.a().c(new CompleteUploadFileRequest(strD, strI, strB));
        if (apiResponseC instanceof ApiResponse.Success) {
            ApiResponse.Success success = (ApiResponse.Success) apiResponseC;
            thb thbVar = this.l;
            if (thbVar == null) {
                y45.B("uploadDbChannel");
                thbVar = null;
            }
            mhb mhbVar4 = this.o;
            if (mhbVar4 == null) {
                y45.B("uploadInfo");
                mhbVar4 = null;
            }
            thbVar.delete(mhbVar4.h());
            UploadTaskInfo uploadTaskInfo = (UploadTaskInfo) i();
            mhb mhbVar5 = this.o;
            if (mhbVar5 == null) {
                y45.B("uploadInfo");
                mhbVar5 = null;
            }
            uploadTaskInfo.setFileId(mhbVar5.d());
            ((UploadTaskInfo) i()).setFileInfo((FileInfo) success.getData());
            oq5.a.a(this.i, "upload task success -> " + i());
            z = true;
            this.n = true;
            n();
        } else {
            z = false;
        }
        if (apiResponseC instanceof ApiResponse.Failure.Error) {
            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseC;
            oq5.a.b(this.i, "upload file occur exception,complete step is fail,errCode:" + error.getErrorCode() + " errMsg:" + error.getMessage());
            p(new r5b(TransferErrorCode.UPLOAD_FAIL, null, Integer.valueOf(error.getErrorCode()), error.getMessage()));
        }
        if (!(apiResponseC instanceof ApiResponse.Failure.Exception)) {
            return z;
        }
        ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseC;
        if ((exception.getThrowable() instanceof InterruptedIOException) || (exception.getThrowable() instanceof InterruptedException)) {
            throw new InterruptedException();
        }
        oq5.a.b(this.i, "upload file occur exception,complete step is fail:", exception.getThrowable());
        throw exception.getThrowable();
    }

    @Override
    public void clear() {
        thb thbVar = this.l;
        if (thbVar != null) {
            if (thbVar == null) {
                y45.B("uploadDbChannel");
                thbVar = null;
            }
            thbVar.delete(((UploadTaskInfo) i()).getTaskId());
            oq5.a.a(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] cache cleared");
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x026f  */
    /* JADX WARN: Code duplicated, block: B:129:0x0270 A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0276 A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x027a A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x027f  */
    /* JADX WARN: Code duplicated, block: B:136:0x0284 A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0288 A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0294 A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0298 A[Catch: InterruptedException -> 0x02e1, TryCatch #4 {InterruptedException -> 0x02e1, blocks: (B:126:0x0269, B:131:0x0276, B:133:0x027a, B:135:0x0280, B:129:0x0270, B:136:0x0284, B:138:0x0288, B:139:0x028c, B:141:0x0294, B:143:0x0298, B:144:0x029c, B:145:0x02a3), top: B:173:0x0269 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x035f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:165:0x0360  */
    /* JADX WARN: Code duplicated, block: B:173:0x0269 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x011f A[Catch: InterruptedException -> 0x0191, TryCatch #5 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e2, B:106:0x01ef, B:108:0x01f3, B:109:0x01f7, B:104:0x01e9, B:110:0x01fe, B:112:0x0202, B:113:0x0206, B:115:0x020e, B:117:0x0212, B:118:0x0216, B:119:0x021d), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0134 A[Catch: InterruptedException -> 0x0191, TryCatch #5 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e2, B:106:0x01ef, B:108:0x01f3, B:109:0x01f7, B:104:0x01e9, B:110:0x01fe, B:112:0x0202, B:113:0x0206, B:115:0x020e, B:117:0x0212, B:118:0x0216, B:119:0x021d), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0138 A[Catch: InterruptedException -> 0x0191, TryCatch #5 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e2, B:106:0x01ef, B:108:0x01f3, B:109:0x01f7, B:104:0x01e9, B:110:0x01fe, B:112:0x0202, B:113:0x0206, B:115:0x020e, B:117:0x0212, B:118:0x0216, B:119:0x021d), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0144 A[Catch: InterruptedException -> 0x0191, TryCatch #5 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e2, B:106:0x01ef, B:108:0x01f3, B:109:0x01f7, B:104:0x01e9, B:110:0x01fe, B:112:0x0202, B:113:0x0206, B:115:0x020e, B:117:0x0212, B:118:0x0216, B:119:0x021d), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0148 A[Catch: InterruptedException -> 0x0191, TryCatch #5 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e2, B:106:0x01ef, B:108:0x01f3, B:109:0x01f7, B:104:0x01e9, B:110:0x01fe, B:112:0x0202, B:113:0x0206, B:115:0x020e, B:117:0x0212, B:118:0x0216, B:119:0x021d), top: B:174:0x0118 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:165:0x0360, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [r5b$a] */
    /* JADX WARN: Type inference failed for: r0v70, types: [jhb] */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r0v75, types: [jhb] */
    /* JADX WARN: Type inference failed for: r0v79, types: [jhb] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v3, types: [jhb] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r17v0, types: [vhb, wc0] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Object, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void execute() throws Throwable {
        TransferException transferExceptionA;
        ?? r6;
        ?? r11;
        ?? r12;
        int i;
        TransferException transferException;
        jhb jhbVar;
        jhb jhbVar2;
        jhb jhbVar3;
        jhb jhbVar4;
        ?? r15;
        ?? r13;
        jhb jhbVar5;
        jhb jhbVar6;
        ?? r0;
        z();
        jhb jhbVar7 = this.k;
        Throwable th = null;
        if (jhbVar7 == null) {
            y45.B("config");
            jhbVar7 = null;
        }
        long j = 2000;
        if (jhbVar7.d() >= 0) {
            int iD = 0;
            loop0: while (true) {
                r11 = th;
                ?? A = A;
                while (true) {
                    if (!this.n && !h()) {
                        jhb jhbVar8 = this.k;
                        if (jhbVar8 == null) {
                            r12 = jhbVar8;
                            y45.B("config");
                            r12 = th;
                        }
                        r12 = jhbVar8;
                        if (iD > r12.d()) {
                            break loop0;
                        }
                        i = iD + 1;
                        try {
                            try {
                                N();
                            } catch (Throwable th2) {
                                try {
                                    try {
                                        if (k(th2)) {
                                            try {
                                                Thread.sleep(j);
                                            } catch (Throwable th3) {
                                                th = th3;
                                                A = th;
                                                if (!this.n) {
                                                    if (A != 0) {
                                                        try {
                                                            if (A.isNoNetwork()) {
                                                                if (!v(A)) {
                                                                    jhbVar3 = this.k;
                                                                    if (jhbVar3 == null) {
                                                                        y45.B("config");
                                                                        jhbVar3 = null;
                                                                    }
                                                                    if (jhbVar3.e() > 0) {
                                                                        jhbVar4 = this.k;
                                                                        if (jhbVar4 == null) {
                                                                            y45.B("config");
                                                                            jhbVar4 = null;
                                                                        }
                                                                        Thread.sleep(jhbVar4.e());
                                                                    }
                                                                    oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                                }
                                                            }
                                                            jhbVar = this.k;
                                                            if (jhbVar == null) {
                                                                y45.B("config");
                                                                jhbVar2 = null;
                                                            } else {
                                                                jhbVar2 = jhbVar;
                                                            }
                                                            jhbVar2.d();
                                                        } catch (InterruptedException unused) {
                                                            L();
                                                            throw th;
                                                        }
                                                    } else if (!v(A)) {
                                                        jhbVar3 = this.k;
                                                        if (jhbVar3 == null) {
                                                            y45.B("config");
                                                            jhbVar3 = null;
                                                        }
                                                        if (jhbVar3.e() > 0) {
                                                            jhbVar4 = this.k;
                                                            if (jhbVar4 == null) {
                                                                y45.B("config");
                                                                jhbVar4 = null;
                                                            }
                                                            Thread.sleep(jhbVar4.e());
                                                        }
                                                        oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                    } else {
                                                        jhbVar = this.k;
                                                        if (jhbVar == null) {
                                                            y45.B("config");
                                                            jhbVar2 = null;
                                                        } else {
                                                            jhbVar2 = jhbVar;
                                                        }
                                                        jhbVar2.d();
                                                    }
                                                }
                                                throw th;
                                            }
                                        }
                                        A = A(th2);
                                        try {
                                            oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] occur error:", A);
                                            r15 = A;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            if (!this.n && !h()) {
                                                if (A != 0) {
                                                    if (A.isNoNetwork()) {
                                                        if (!v(A)) {
                                                            jhbVar3 = this.k;
                                                            if (jhbVar3 == null) {
                                                                y45.B("config");
                                                                jhbVar3 = null;
                                                            }
                                                            if (jhbVar3.e() > 0) {
                                                                jhbVar4 = this.k;
                                                                if (jhbVar4 == null) {
                                                                    y45.B("config");
                                                                    jhbVar4 = null;
                                                                }
                                                                Thread.sleep(jhbVar4.e());
                                                            }
                                                            oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                        }
                                                    }
                                                    jhbVar = this.k;
                                                    if (jhbVar == null) {
                                                        y45.B("config");
                                                        jhbVar2 = null;
                                                    } else {
                                                        jhbVar2 = jhbVar;
                                                    }
                                                    jhbVar2.d();
                                                } else if (!v(A)) {
                                                    jhbVar = this.k;
                                                    if (jhbVar == null) {
                                                        y45.B("config");
                                                        jhbVar2 = null;
                                                    } else {
                                                        jhbVar2 = jhbVar;
                                                    }
                                                    jhbVar2.d();
                                                } else {
                                                    jhbVar3 = this.k;
                                                    if (jhbVar3 == null) {
                                                        y45.B("config");
                                                        jhbVar3 = null;
                                                    }
                                                    if (jhbVar3.e() > 0) {
                                                        jhbVar4 = this.k;
                                                        if (jhbVar4 == null) {
                                                            y45.B("config");
                                                            jhbVar4 = null;
                                                        }
                                                        Thread.sleep(jhbVar4.e());
                                                    }
                                                    oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        A = 0;
                                    }
                                } catch (InterruptedException unused2) {
                                    L();
                                    r15 = 0;
                                }
                                if (this.n || h()) {
                                    iD = i;
                                    r15 = r15;
                                    r13 = r15;
                                } else {
                                    if (r15 != 0) {
                                        try {
                                            if (!r15.isNoNetwork()) {
                                                if (v(r15)) {
                                                    jhbVar5 = this.k;
                                                    if (jhbVar5 == null) {
                                                        y45.B("config");
                                                        jhbVar5 = null;
                                                    }
                                                    if (jhbVar5.e() > 0) {
                                                        jhbVar6 = this.k;
                                                        if (jhbVar6 == null) {
                                                            y45.B("config");
                                                            jhbVar6 = null;
                                                        }
                                                        Thread.sleep(jhbVar6.e());
                                                    }
                                                    oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                    iD = i;
                                                    r15 = r15;
                                                }
                                                r13 = r15;
                                            }
                                        } catch (InterruptedException unused3) {
                                            L();
                                            iD = i;
                                            r13 = 0;
                                        }
                                    } else {
                                        if (v(r15)) {
                                            jhbVar5 = this.k;
                                            if (jhbVar5 == null) {
                                                y45.B("config");
                                                jhbVar5 = null;
                                            }
                                            if (jhbVar5.e() > 0) {
                                                jhbVar6 = this.k;
                                                if (jhbVar6 == null) {
                                                    y45.B("config");
                                                    jhbVar6 = null;
                                                }
                                                Thread.sleep(jhbVar6.e());
                                            }
                                            oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                            iD = i;
                                            r15 = r15;
                                        }
                                        r13 = r15;
                                    }
                                    jhb jhbVar9 = this.k;
                                    if (jhbVar9 == null) {
                                        y45.B("config");
                                        jhbVar9 = null;
                                    }
                                    iD = jhbVar9.d() + 1;
                                    r15 = r15;
                                    r13 = r15;
                                }
                                th = null;
                                j = 2000;
                                r11 = r13;
                                A = r15;
                            }
                        } catch (InterruptedException e) {
                            if (D()) {
                                L();
                                transferException = null;
                            } else {
                                TransferException transferExceptionA2 = A(e);
                                oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] occur error:", transferExceptionA2);
                                transferException = transferExceptionA2;
                            }
                            if (this.n || h()) {
                                iD = i;
                                r15 = transferException;
                            } else if ((transferException == null || !transferException.isNoNetwork()) && !v(transferException)) {
                                jhb jhbVar10 = this.k;
                                if (jhbVar10 == null) {
                                    y45.B("config");
                                    jhbVar10 = null;
                                }
                                if (jhbVar10.e() > 0) {
                                    jhb jhbVar11 = this.k;
                                    if (jhbVar11 == null) {
                                        y45.B("config");
                                        jhbVar11 = null;
                                    }
                                    Thread.sleep(jhbVar11.e());
                                }
                                oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + " fileName: " + ((UploadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                iD = i;
                                r15 = transferException;
                            } else {
                                jhb jhbVar12 = this.k;
                                if (jhbVar12 == null) {
                                    y45.B("config");
                                    jhbVar12 = null;
                                }
                                iD = jhbVar12.d() + 1;
                                r15 = transferException;
                            }
                            r13 = r15;
                            th = null;
                            j = 2000;
                            r11 = r13;
                            A = r15;
                        }
                    } else {
                        break loop0;
                    }
                    th = null;
                    j = 2000;
                    r11 = r13;
                    A = r15;
                }
                if (!this.n && !h()) {
                    try {
                        if (v(th)) {
                            jhb jhbVar13 = this.k;
                            ?? r1 = jhbVar13;
                            if (jhbVar13 == null) {
                                y45.B("config");
                                r1 = th;
                            }
                            iD = r1.d() + 1;
                        } else {
                            jhb jhbVar14 = this.k;
                            ?? r2 = jhbVar14;
                            if (jhbVar14 == null) {
                                y45.B("config");
                                r2 = th;
                            }
                            if (r2.e() > 0) {
                                jhb jhbVar15 = this.k;
                                if (jhbVar15 == null) {
                                    r0 = jhbVar15;
                                    y45.B("config");
                                    r0 = th;
                                }
                                r0 = jhbVar15;
                                Thread.sleep(r0.e());
                            }
                            oq5 oq5Var = oq5.a;
                            String str = this.i;
                            String taskId = ((UploadTaskInfo) i()).getTaskId();
                            String fileName = ((UploadTaskInfo) i()).getFileName();
                            A = new StringBuilder();
                            A.append("upload task[");
                            A.append(taskId);
                            A.append(" fileName: ");
                            A.append(fileName);
                            A.append(" fail, retry ");
                            A.append(i);
                            A.append("]");
                            oq5Var.b(str, A.toString());
                        }
                    } catch (InterruptedException unused4) {
                        L();
                    }
                }
                iD = i;
            }
            r6 = r11;
        } else {
            try {
                N();
            } catch (InterruptedException e2) {
                if (D()) {
                    L();
                } else {
                    transferExceptionA = A(e2);
                    oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] occur error:", transferExceptionA);
                }
                if (r6 == 0) {
                    r6 = transferExceptionA;
                    return;
                }
                r6 = transferExceptionA;
                oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] finish,post error:", r6);
                p(r5b.f.a(r6));
                throw r6;
            } catch (Throwable th6) {
                if (k(th6)) {
                    Thread.sleep(2000L);
                }
                TransferException transferExceptionA3 = A(th6);
                oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] occur error:", transferExceptionA3);
                r6 = transferExceptionA3;
            }
            r6 = 0;
        }
        if (r6 == 0) {
            r6 = transferExceptionA;
            return;
        }
        r6 = transferExceptionA;
        oq5.a.b(this.i, "upload task[" + ((UploadTaskInfo) i()).getTaskId() + "] finish,post error:", r6);
        p(r5b.f.a(r6));
        throw r6;
    }

    @Override
    public String getId() {
        return this.j;
    }

    @Override
    public boolean isCompleted() {
        return this.n;
    }
}
