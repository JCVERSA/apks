package kotlin.io;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public class f extends d {

    public static final class a implements Function2 {

        public static final a f64284a = new a();

        a() {
        }

        @Override
        public final Void invoke(File file, IOException exception) throws IOException {
            Intrinsics.h(file, "<unused var>");
            Intrinsics.h(exception, "exception");
            throw exception;
        }
    }

    public static final String A(File file, File base) throws IOException {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(base, "base");
        String strB = B(file, base);
        if (strB != null) {
            return strB;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + file + " and " + base + '.');
    }

    private static final String B(File file, File file2) throws IOException {
        FilePathComponents filePathComponentsZ = z(b.b(file));
        FilePathComponents filePathComponentsZ2 = z(b.b(file2));
        if (!Intrinsics.c(filePathComponentsZ.getRoot(), filePathComponentsZ2.getRoot())) {
            return null;
        }
        int iC = filePathComponentsZ2.c();
        int iC2 = filePathComponentsZ.c();
        int iMin = Math.min(iC2, iC);
        int i10 = 0;
        while (i10 < iMin && Intrinsics.c(filePathComponentsZ.getSegments().get(i10), filePathComponentsZ2.getSegments().get(i10))) {
            i10++;
        }
        StringBuilder sb2 = new StringBuilder();
        int i11 = iC - 1;
        if (i10 <= i11) {
            while (!Intrinsics.c(((File) filePathComponentsZ2.getSegments().get(i11)).getName(), "..")) {
                sb2.append("..");
                if (i11 != i10) {
                    sb2.append(File.separatorChar);
                }
                if (i11 != i10) {
                    i11--;
                }
            }
            return null;
        }
        if (i10 < iC2) {
            if (i10 < iC) {
                sb2.append(File.separatorChar);
            }
            List listD0 = CollectionsKt.d0(filePathComponentsZ.getSegments(), i10);
            String separator = File.separator;
            Intrinsics.g(separator, "separator");
            CollectionsKt___CollectionsKt.p0(listD0, sb2, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 2) != 0 ? ", " : separator, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 4) != 0 ? "" : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 8) == 0 ? null : "", (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 16) != 0 ? -1 : 0, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 32) != 0 ? "..." : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 64) != 0 ? null : null);
        }
        return sb2.toString();
    }

    public static final boolean q(File file, File target, boolean z10, final Function2 onError) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(target, "target");
        Intrinsics.h(onError, "onError");
        if (!file.exists()) {
            return onError.invoke(file, new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null)) != OnErrorAction.TERMINATE;
        }
        try {
            for (File file2 : d.o(file).h(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return f.s(onError, (File) obj, (IOException) obj2);
                }
            })) {
                if (file2.exists()) {
                    File file3 = new File(target, A(file2, file));
                    if (file3.exists() && (!file2.isDirectory() || !file3.isDirectory())) {
                        if (z10) {
                            if (file3.isDirectory()) {
                                if (!FilesKt.v(file3)) {
                                }
                            } else if (!file3.delete()) {
                            }
                        }
                        if (onError.invoke(file3, new FileAlreadyExistsException(file2, file3, "The destination file already exists.")) == OnErrorAction.TERMINATE) {
                            return false;
                        }
                    }
                    if (file2.isDirectory()) {
                        file3.mkdirs();
                    } else if (FilesKt.u(file2, file3, z10, 0, 4, null).length() != file2.length() && onError.invoke(file2, new IOException("Source file wasn't copied completely, length of destination file differs.")) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                } else {
                    if (onError.invoke(file2, new NoSuchFileException(file2, null, "The source file doesn't exist.", 2, null)) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                }
            }
            return true;
        } catch (TerminateException unused) {
            return false;
        }
    }

    public static boolean r(File file, File file2, boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            function2 = a.f64284a;
        }
        return q(file, file2, z10, function2);
    }

    public static final Unit s(Function2 function2, File f10, IOException e10) throws TerminateException {
        Intrinsics.h(f10, "f");
        Intrinsics.h(e10, "e");
        if (function2.invoke(f10, e10) != OnErrorAction.TERMINATE) {
            return Unit.f64096a;
        }
        throw new TerminateException(f10);
    }

    public static final File t(File file, File target, boolean z10, int i10) throws FileSystemException {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(target, "target");
        if (!file.exists()) {
            throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            if (!z10) {
                throw new FileAlreadyExistsException(file, target, "The destination file already exists.");
            }
            if (!target.delete()) {
                throw new FileAlreadyExistsException(file, target, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!file.isDirectory()) {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    ByteStreamsKt.a(fileInputStream, fileOutputStream, i10);
                    CloseableKt.a(fileOutputStream, null);
                    CloseableKt.a(fileInputStream, null);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(fileOutputStream, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.a(fileInputStream, th4);
                    throw th5;
                }
            }
        } else if (!target.mkdirs()) {
            throw new FileSystemException(file, target, "Failed to create target directory.");
        }
        return target;
    }

    public static File u(File file, File file2, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 8192;
        }
        return t(file, file2, z10, i10);
    }

    public static boolean v(File file) {
        Intrinsics.h(file, "<this>");
        while (true) {
            boolean z10 = true;
            for (File file2 : d.n(file)) {
                if (file2.delete() || !file2.exists()) {
                    if (z10) {
                    }
                }
                z10 = false;
            }
            return z10;
        }
    }

    public static String w(File file) {
        Intrinsics.h(file, "<this>");
        String name = file.getName();
        Intrinsics.g(name, "getName(...)");
        return StringsKt.c1(name, '.', "");
    }

    public static String x(File file) {
        Intrinsics.h(file, "<this>");
        String name = file.getName();
        Intrinsics.g(name, "getName(...)");
        return StringsKt.l1(name, ".", null, 2, null);
    }

    private static final List y(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String name = file.getName();
            if (!Intrinsics.c(name, ".")) {
                if (!Intrinsics.c(name, "..")) {
                    arrayList.add(file);
                } else if (arrayList.isEmpty() || Intrinsics.c(((File) CollectionsKt.u0(arrayList)).getName(), "..")) {
                    arrayList.add(file);
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        return arrayList;
    }

    private static final FilePathComponents z(FilePathComponents filePathComponents) {
        return new FilePathComponents(filePathComponents.getRoot(), y(filePathComponents.getSegments()));
    }
}
