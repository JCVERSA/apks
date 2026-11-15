package com.transsion.letswitch.service.api.internal.service;

import android.app.Application;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.transsion.letswitch.ipc.IPCApiService;
import com.transsion.letswitch.ipc.IPCClass;
import com.transsion.letswitch.ipc.IPCMethod;
import com.transsion.letswitch.service.api.CmdResult;
import com.transsion.letswitch.service.api.FileInformation;
import com.transsion.letswitch.service.api.IFileOperation;
import com.transsion.letswitch.service.api.sandaccessor.SandAccessor;
import com.transsion.letswitch.service.api.utils.FileTools;
import defpackage.el0;
import defpackage.hk1;
import defpackage.ly0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.se;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.d;

@IPCClass(className = "FileOperationApiService")
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J/\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0017¢\u0006\u0004\b\u001f\u0010 J)\u0010!\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0017¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0011H\u0017¢\u0006\u0004\b$\u0010%J'\u0010)\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020#H\u0017¢\u0006\u0004\b)\u0010*J\u0017\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020\u0011H\u0017¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0011H\u0017¢\u0006\u0004\b/\u00100J\u0019\u00103\u001a\u0002022\b\u00101\u001a\u0004\u0018\u00010\u0011H\u0017¢\u0006\u0004\b3\u00104J3\u00109\u001a\u0002022\b\u00105\u001a\u0004\u0018\u00010\u00112\b\u00106\u001a\u0004\u0018\u00010\u00112\u0006\u00107\u001a\u0002022\u0006\u00108\u001a\u000202H\u0017¢\u0006\u0004\b9\u0010:J1\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010>2\b\u0010;\u001a\u0004\u0018\u00010\u00112\u0006\u0010<\u001a\u0002022\u0006\u0010=\u001a\u000202H\u0017¢\u0006\u0004\b\u000e\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010C\u001a\u0002028\u0002X\u0082T¢\u0006\u0006\n\u0004\bC\u0010DR\u0017\u0010F\u001a\u00020E8\u0006¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR\u0014\u0010K\u001a\u00020J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010L¨\u0006M"}, d2 = {"Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;", "Lcom/transsion/letswitch/ipc/IPCApiService;", "Lcom/transsion/letswitch/service/api/IFileOperation;", MethodDecl.initName, "()V", "Landroid/app/Application;", "context", "Lzfb;", "checkSandAccessor", "(Landroid/app/Application;)V", "Lcom/transsion/letswitch/service/api/FileInformation;", "fileInformation", "", "Ljava/io/File;", "listFile", "parseFileInfo", "(Lcom/transsion/letswitch/service/api/FileInformation;[Ljava/io/File;)V", "", "path", "Landroid/os/ParcelFileDescriptor;", "readFd", "", "position", SessionDescription.ATTR_LENGTH, "readFromPipe", "(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V", "writeFd", "writeToPipe", "(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V", "getFileInfo", "(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;", "openFile", "(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;", "openFileW", "(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;", "", "mkdirs", "(Ljava/lang/String;)Z", "src", "dest", "overlay", "rename", "(Ljava/lang/String;Ljava/lang/String;Z)Z", "cmd", "Lcom/transsion/letswitch/service/api/CmdResult;", "runCmd", "(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;", "getErrorMessage", "()Ljava/lang/String;", "targetFile", "", "deleteFile", "(Ljava/lang/String;)I", "source", "targetDir", "uid", "gid", "copyFile", "(Ljava/lang/String;Ljava/lang/String;II)I", "targetPackage", "userId", "flags", "", "(Ljava/lang/String;II)Ljava/util/List;", "Lhk1;", "coroutineExceptionHandler", "Lhk1;", "CAPACITY", "I", "Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;", "sandAccessor", "Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;", "getSandAccessor", "()Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;", "Lnk1;", "coroutineScope", "Lnk1;", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileOperationApiService implements IPCApiService, IFileOperation {
    private static final int CAPACITY = 204800;
    public static final FileOperationApiService INSTANCE = new FileOperationApiService();
    private static final hk1 coroutineExceptionHandler;
    private static final nk1 coroutineScope;
    private static final SandAccessor sandAccessor;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.letswitch.service.api.internal.service.FileOperationApiService$readFromPipe$1", f = "FileOperationApiService.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final long $length;
        final String $path;
        final long $position;
        final ParcelFileDescriptor $readFd;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$path = str;
            this.$readFd = parcelFileDescriptor;
            this.$position = j;
            this.$length = j2;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$path, this.$readFd, this.$position, this.$length, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            File file = new File(this.$path);
            ParcelFileDescriptor parcelFileDescriptor = this.$readFd;
            long j = this.$position;
            long j2 = this.$length;
            String str = this.$path;
            try {
                FileChannel channel = new RandomAccessFile(file, "rw").getChannel();
                try {
                    channel.position(j);
                    FileChannel channel2 = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor).getChannel();
                    long j3 = j2 - j;
                    try {
                        Log.d("FileOperation", "readFromPipe position: " + j + ", length: " + j2 + "， path: " + str);
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(FileOperationApiService.CAPACITY);
                        long j4 = 0;
                        do {
                            byteBufferAllocate.clear();
                            int i = channel2.read(byteBufferAllocate);
                            if (i <= 0) {
                                break;
                            }
                            byteBufferAllocate.limit(i);
                            byteBufferAllocate.flip();
                            int i2 = 0;
                            do {
                                int iWrite = channel.write(byteBufferAllocate);
                                if (iWrite <= 0) {
                                    break;
                                }
                                i2 += iWrite;
                            } while (i2 < i);
                            j4 += (long) i;
                        } while (j4 < j3);
                        Log.d("FileOperation", "readFromPipe readSize: " + j4);
                        zfb zfbVar = zfb.a;
                        ly0.a(channel2, null);
                        ly0.a(channel, null);
                        ly0.a(parcelFileDescriptor, null);
                        return zfb.a;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            ly0.a(channel2, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        ly0.a(channel, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    ly0.a(parcelFileDescriptor, th5);
                    throw th6;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.letswitch.service.api.internal.service.FileOperationApiService$writeToPipe$1", f = "FileOperationApiService.kt", l = {}, m = "invokeSuspend")
    public static final class C23751 extends SuspendLambda implements s74 {
        final String $path;
        final ParcelFileDescriptor $writeFd;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23751(String str, ParcelFileDescriptor parcelFileDescriptor, wh1<? super C23751> wh1Var) {
            super(2, wh1Var);
            this.$path = str;
            this.$writeFd = parcelFileDescriptor;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new C23751(this.$path, this.$writeFd, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23751) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws FileNotFoundException {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            File file = new File(this.$path);
            long length = file.length();
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
            ParcelFileDescriptor parcelFileDescriptor = this.$writeFd;
            try {
                FileChannel channel = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorOpen).getChannel();
                try {
                    FileChannel channel2 = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor).getChannel();
                    try {
                        Log.d("FileOperation", "transferTo length: " + length);
                        long j = 0L;
                        do {
                            long jTransferTo = channel.transferTo(j, length - j, channel2);
                            if (jTransferTo > 0) {
                                j += jTransferTo;
                            }
                        } while (j < length);
                        Log.d("FileOperation", "transferTo end transferred: " + j);
                        zfb zfbVar = zfb.a;
                        ly0.a(channel2, null);
                        ly0.a(channel, null);
                        ly0.a(parcelFileDescriptorOpen, null);
                        return zfb.a;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            ly0.a(channel2, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        ly0.a(channel, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    ly0.a(parcelFileDescriptorOpen, th5);
                    throw th6;
                }
            }
        }
    }

    static {
        FileOperationApiService$special$$inlined$CoroutineExceptionHandler$1 fileOperationApiService$special$$inlined$CoroutineExceptionHandler$1 = new FileOperationApiService$special$$inlined$CoroutineExceptionHandler$1(hk1.w1);
        coroutineExceptionHandler = fileOperationApiService$special$$inlined$CoroutineExceptionHandler$1;
        sandAccessor = new SandAccessor(se.a());
        coroutineScope = d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(fileOperationApiService$special$$inlined$CoroutineExceptionHandler$1));
    }

    private FileOperationApiService() {
    }

    private final void checkSandAccessor(Application context) {
        new SandAccessor(context);
    }

    private final void parseFileInfo(FileInformation fileInformation, File[] listFile) throws IOException {
        ArrayList<FileInformation> listFile2;
        for (File file : listFile) {
            String canonicalPath = file.getCanonicalPath();
            y45.i(canonicalPath, "getCanonicalPath(...)");
            String name = file.getName();
            y45.i(name, "getName(...)");
            FileInformation fileInformation2 = new FileInformation(canonicalPath, name, file.length(), file.isFile(), file.isDirectory(), file.canRead(), null, 64, null);
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                    return;
                }
                fileInformation2.setListFile(new ArrayList<>());
                parseFileInfo(fileInformation2, fileArrListFiles);
            } else if (file.isFile() && (listFile2 = fileInformation.getListFile()) != null) {
                listFile2.add(fileInformation2);
            }
        }
    }

    private final void readFromPipe(String path, ParcelFileDescriptor readFd, long position, long length) {
        el0.d(coroutineScope, mc2.b(), null, new AnonymousClass1(path, readFd, position, length, null), 2, null);
    }

    private final void writeToPipe(String path, ParcelFileDescriptor writeFd) {
        el0.d(coroutineScope, mc2.b(), null, new C23751(path, writeFd, null), 2, null);
    }

    @Override
    @IPCMethod(methodName = "copyFile")
    public int copyFile(String source, String targetDir, int uid, int gid) {
        SandAccessor sandAccessor2 = sandAccessor;
        if (sandAccessor2.isSupport()) {
            return sandAccessor2.copyFile(source, targetDir, uid, gid);
        }
        return -1;
    }

    @Override
    @IPCMethod(methodName = "deleteFile")
    public int deleteFile(String targetFile) {
        SandAccessor sandAccessor2 = sandAccessor;
        if (sandAccessor2.isSupport()) {
            return sandAccessor2.deleteFile(targetFile);
        }
        return -1;
    }

    @Override
    @IPCMethod(methodName = "getErrorMessage")
    public String getErrorMessage() {
        String errorMessage = sandAccessor.getErrorMessage();
        y45.i(errorMessage, "getErrorMessage(...)");
        return errorMessage;
    }

    @Override
    public FileInformation getFileInfo(String path) throws IOException {
        File[] fileArrListFiles;
        y45.j(path, "path");
        File file = new File(path);
        String name = file.getName();
        y45.i(name, "getName(...)");
        FileInformation fileInformation = new FileInformation(path, name, file.length(), file.isFile(), file.isDirectory(), file.canRead(), null, 64, null);
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length != 0) {
            fileInformation.setListFile(new ArrayList<>());
            parseFileInfo(fileInformation, fileArrListFiles);
        }
        return fileInformation;
    }

    public final SandAccessor getSandAccessor() {
        return sandAccessor;
    }

    @Override
    @IPCMethod(methodName = "listFile")
    public List<String> listFile(String targetPackage, int userId, int flags) {
        SandAccessor sandAccessor2 = sandAccessor;
        if (sandAccessor2.isSupport()) {
            return sandAccessor2.listAppDataFile(targetPackage, userId, flags);
        }
        return null;
    }

    @Override
    @IPCMethod(methodName = "mkdirs")
    public boolean mkdirs(String path) {
        y45.j(path, "path");
        try {
            File file = new File(path);
            if (file.exists()) {
                Log.i("FileOperation", "mkdirs exists");
                return true;
            }
            boolean zMkdirs = file.mkdirs();
            Log.i("FileOperation", "mkdirs ret: " + zMkdirs);
            return zMkdirs;
        } catch (Exception e) {
            Log.e("FileOperation", "mkdirs failed with e: " + e.getMessage());
            return false;
        }
    }

    @Override
    @IPCMethod(methodName = "openFile")
    public ParcelFileDescriptor openFile(String path) {
        y45.j(path, "path");
        Log.d("FileOperation", "openFile path: " + path);
        try {
            ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
            ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
            ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
            y45.g(parcelFileDescriptor2);
            writeToPipe(path, parcelFileDescriptor2);
            return parcelFileDescriptor;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    @IPCMethod(methodName = "openFileW")
    public ParcelFileDescriptor openFileW(String path, long position, long length) {
        y45.j(path, "path");
        Log.d("FileOperation", "openFileW path: " + path);
        try {
            ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
            ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
            ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
            y45.g(parcelFileDescriptor);
            readFromPipe(path, parcelFileDescriptor, position, length);
            return parcelFileDescriptor2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    @IPCMethod(methodName = "rename")
    public boolean rename(String src, String dest, boolean overlay) {
        y45.j(src, "src");
        y45.j(dest, "dest");
        FileTools fileTools = FileTools.INSTANCE;
        boolean zRenameFile = fileTools.renameFile(src, dest, overlay);
        if (zRenameFile) {
            Application applicationA = se.a();
            y45.i(applicationA, "getApp(...)");
            fileTools.scanFile(applicationA, dest);
        }
        Log.i("FileOperation", "rename success: " + zRenameFile + " overlay: " + overlay + ", src: " + src + ", dest: " + dest);
        return zRenameFile;
    }

    @Override
    @IPCMethod(methodName = "runCmd")
    public CmdResult runCmd(String cmd) {
        y45.j(cmd, "cmd");
        Log.d("FileOperation", "runCmd cmd: " + cmd);
        SandAccessor sandAccessor2 = sandAccessor;
        if (!sandAccessor2.isSupport()) {
            Log.d("FileOperation", "runCmd not support");
            return CmdResult.INSTANCE.getFAIL_RESULT();
        }
        SandAccessor.CommandResult commandResultRunCommandAndWaitResult = sandAccessor2.runCommandAndWaitResult(cmd);
        y45.i(commandResultRunCommandAndWaitResult, "runCommandAndWaitResult(...)");
        Log.d("FileOperation", "runCmd result: " + commandResultRunCommandAndWaitResult.result + ", message: " + commandResultRunCommandAndWaitResult.message);
        return new CmdResult(commandResultRunCommandAndWaitResult.result, commandResultRunCommandAndWaitResult.message);
    }
}
