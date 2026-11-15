package com.transsion.letswitch.install;

import android.content.Context;
import android.content.pm.PackageInstaller;
import android.os.ParcelFileDescriptor;
import com.transsion.letswitch.service.api.data.InstallFileInfo;
import com.transsion.letswitch.service.api.data.InstallParams;
import defpackage.ly0;
import defpackage.y45;
import defpackage.zfb;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/transsion/letswitch/install/AppInstaller;", "", MethodDecl.initName, "()V", "BUFFER_SIZE", "", "buffer", "", "commitInstall", "", "context", "Landroid/content/Context;", "installParams", "Lcom/transsion/letswitch/service/api/data/InstallParams;", "runInstallWrite", "installFileInfo", "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;", "sessionId", "installer", "Landroid/content/pm/PackageInstaller;", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppInstaller {
    private static final int BUFFER_SIZE = 65536;
    public static final AppInstaller INSTANCE = new AppInstaller();
    private static final byte[] buffer = new byte[65536];

    private AppInstaller() {
    }

    private final int runInstallWrite(InstallFileInfo installFileInfo, int sessionId, PackageInstaller installer) {
        long length = installFileInfo.getLength();
        String fileName = installFileInfo.getFileName();
        try {
            PackageInstaller.Session sessionOpenSession = installer.openSession(sessionId);
            try {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(installFileInfo.getPfd());
                try {
                    OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(fileName, 0L, length);
                    while (true) {
                        try {
                            byte[] bArr = buffer;
                            int i = autoCloseInputStream.read(bArr);
                            if (i == -1) {
                                sessionOpenSession.fsync(outputStreamOpenWrite);
                                zfb zfbVar = zfb.a;
                                ly0.a(outputStreamOpenWrite, null);
                                ly0.a(autoCloseInputStream, null);
                                ly0.a(sessionOpenSession, null);
                                return 0;
                            }
                            outputStreamOpenWrite.write(bArr, 0, i);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                ly0.a(outputStreamOpenWrite, th);
                                throw th2;
                            }
                        }
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            ly0.a(autoCloseInputStream, th);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    throw th4;
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    ly0.a(sessionOpenSession, th5);
                    throw th6;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return 1;
        }
    }

    public final synchronized boolean commitInstall(Context context, InstallParams installParams) {
        y45.j(context, "context");
        y45.j(installParams, "installParams");
        List<InstallFileInfo> fileInfos = installParams.getFileInfos();
        if (fileInfos.isEmpty()) {
            return false;
        }
        Iterator<T> it = fileInfos.iterator();
        long j = 0;
        while (it.hasNext()) {
            long length = ((InstallFileInfo) it.next()).getLength();
            if (length <= 0) {
                return false;
            }
            j += length;
        }
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        sessionParams.setAppPackageName(installParams.getPackageInfo().packageName);
        sessionParams.setInstallLocation(installParams.getPackageInfo().installLocation);
        sessionParams.setSize(j);
        PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
        y45.i(packageInstaller, "getPackageInstaller(...)");
        int iCreateSession = packageInstaller.createSession(sessionParams);
        Iterator<InstallFileInfo> it2 = fileInfos.iterator();
        while (it2.hasNext()) {
            if (runInstallWrite(it2.next(), iCreateSession, packageInstaller) != 0) {
                return false;
            }
        }
        packageInstaller.openSession(iCreateSession).commit(installParams.getIntentSender());
        return true;
    }
}
