package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.j05;
import defpackage.pc9;
import defpackage.ue3;
import defpackage.y45;
import java.io.IOException;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.internal.ResourceFileSystem;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b&\u0018\u0000 B2\u00020\u0001:\u0001BB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u000b\u0010\nJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u000f\u001a\u00020\u0004H&¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0004H&¢\u0006\u0004\b\u0013\u0010\u0012J'\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0004H&¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\f2\b\b\u0002\u0010\u001e\u001a\u00020\fH&¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u001f\u0010\u001cJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u0004H&¢\u0006\u0004\b\"\u0010#J5\u0010*\u001a\u00028\u0000\"\u0004\b\u0000\u0010$2\u0006\u0010\u0019\u001a\u00020\u00042\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00028\u00000%H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010)J!\u0010,\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\fH&¢\u0006\u0004\b,\u0010-J\u0015\u0010,\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b,\u0010.J?\u00103\u001a\u00028\u0000\"\u0004\b\u0000\u0010$2\u0006\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\f2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00028\u00000%H\u0087\bø\u0001\u0000¢\u0006\u0004\b1\u00102J!\u00104\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\fH&¢\u0006\u0004\b4\u0010-J\u0015\u00104\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b4\u0010.J!\u00106\u001a\u0002052\u0006\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\fH&¢\u0006\u0004\b6\u00107J\u0015\u00106\u001a\u0002052\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b6\u00108J\u001f\u00109\u001a\u0002052\u0006\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\f¢\u0006\u0004\b9\u00107J\u0015\u00109\u001a\u0002052\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b9\u00108J\u001f\u0010;\u001a\u0002052\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u0004H&¢\u0006\u0004\b;\u0010<J\u001f\u0010=\u001a\u0002052\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u0004H\u0016¢\u0006\u0004\b=\u0010<J!\u0010>\u001a\u0002052\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\fH&¢\u0006\u0004\b>\u00107J\u0015\u0010>\u001a\u0002052\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b>\u00108J!\u0010@\u001a\u0002052\u0006\u0010?\u001a\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\fH\u0016¢\u0006\u0004\b@\u00107J\u0015\u0010@\u001a\u0002052\u0006\u0010?\u001a\u00020\u0004¢\u0006\u0004\b@\u00108J\u001f\u0010A\u001a\u0002052\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u0004H&¢\u0006\u0004\bA\u0010<\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006C"}, d2 = {"Lokio/FileSystem;", "", MethodDecl.initName, "()V", "Lokio/Path;", "path", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", TtmlNode.TAG_METADATA, "(Lokio/Path;)Lokio/FileMetadata;", "metadataOrNull", "", "exists", "(Lokio/Path;)Z", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "followSymlinks", "Lpc9;", "listRecursively", "(Lokio/Path;Z)Lpc9;", "(Lokio/Path;)Lpc9;", "file", "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "T", "Lkotlin/Function1;", "Lokio/BufferedSource;", "readerAction", "-read", "(Lokio/Path;Le74;)Ljava/lang/Object;", "read", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "(Lokio/Path;)Lokio/Sink;", "Lokio/BufferedSink;", "writerAction", "-write", "(Lokio/Path;ZLe74;)Ljava/lang/Object;", "write", "appendingSink", "Lzfb;", "createDirectory", "(Lokio/Path;Z)V", "(Lokio/Path;)V", "createDirectories", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "copy", "delete", "fileOrDirectory", "deleteRecursively", "createSymlink", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class FileSystem {

    public static final Companion INSTANCE = new Companion(null);
    public static final FileSystem RESOURCES;
    public static final FileSystem SYSTEM;
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\b\u001a\u00020\u0004*\u00020\tH\u0007¢\u0006\u0002\b\nR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lokio/FileSystem$Companion;", "", "()V", "RESOURCES", "Lokio/FileSystem;", "SYSTEM", "SYSTEM_TEMPORARY_DIRECTORY", "Lokio/Path;", "asOkioFileSystem", "Ljava/nio/file/FileSystem;", "get", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FileSystem get(java.nio.file.FileSystem fileSystem) {
            y45.j(fileSystem, "<this>");
            return new NioFileSystemWrappingFileSystem(fileSystem);
        }

        private Companion() {
        }
    }

    public static Object m446write$default(FileSystem fileSystem, Path path, boolean z, e74 e74Var, int i, Object obj) throws Throwable {
        Object objInvoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        y45.j(path, "file");
        y45.j(e74Var, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(path, z));
        Throwable th = null;
        try {
            objInvoke = e74Var.invoke(bufferedSinkBuffer);
            j05.b(1);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            j05.a(1);
        } catch (Throwable th3) {
            j05.b(1);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th4) {
                    ue3.a(th3, th4);
                }
            }
            j05.a(1);
            objInvoke = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        y45.g(objInvoke);
        return objInvoke;
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.INSTANCE;
        String property = System.getProperty("java.io.tmpdir");
        y45.i(property, "getProperty(...)");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        y45.i(classLoader, "getClassLoader(...)");
        RESOURCES = new ResourceFileSystem(classLoader, false, null, 4, null);
    }

    public static Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.appendingSink(path, z);
    }

    public static void createDirectories$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectories(path, z);
    }

    public static void createDirectory$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectory(path, z);
    }

    public static void delete$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.delete(path, z);
    }

    public static void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.deleteRecursively(path, z);
    }

    public static final FileSystem get(java.nio.file.FileSystem fileSystem) {
        return INSTANCE.get(fileSystem);
    }

    public static pc9 listRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.listRecursively(path, z);
    }

    public static FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z, boolean z2, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return fileSystem.openReadWrite(path, z, z2);
    }

    public static Sink sink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.sink(path, z);
    }

    public final <T> T m447read(Path file, e74 readerAction) throws Throwable {
        T t;
        y45.j(file, "file");
        y45.j(readerAction, "readerAction");
        BufferedSource bufferedSourceBuffer = Okio.buffer(source(file));
        Throwable th = null;
        try {
            t = (T) readerAction.invoke(bufferedSourceBuffer);
            j05.b(1);
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            j05.a(1);
        } catch (Throwable th3) {
            j05.b(1);
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th4) {
                    ue3.a(th3, th4);
                }
            }
            j05.a(1);
            th = th3;
            t = null;
        }
        if (th != null) {
            throw th;
        }
        y45.g(t);
        return t;
    }

    public final <T> T m448write(Path file, boolean mustCreate, e74 writerAction) throws Throwable {
        T t;
        y45.j(file, "file");
        y45.j(writerAction, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink(file, mustCreate));
        Throwable th = null;
        try {
            t = (T) writerAction.invoke(bufferedSinkBuffer);
            j05.b(1);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            j05.a(1);
        } catch (Throwable th3) {
            j05.b(1);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th4) {
                    ue3.a(th3, th4);
                }
            }
            j05.a(1);
            t = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        y45.g(t);
        return t;
    }

    public final Sink appendingSink(Path file) throws IOException {
        y45.j(file, "file");
        return appendingSink(file, false);
    }

    public abstract Sink appendingSink(Path file, boolean mustExist) throws IOException;

    public abstract void atomicMove(Path source, Path target) throws IOException;

    public abstract Path canonicalize(Path path) throws IOException;

    public void copy(Path source, Path target) throws IOException {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        okio.internal.FileSystem.commonCopy(this, source, target);
    }

    public final void createDirectories(Path dir, boolean mustCreate) throws IOException {
        y45.j(dir, "dir");
        okio.internal.FileSystem.commonCreateDirectories(this, dir, mustCreate);
    }

    public final void createDirectory(Path dir) throws IOException {
        y45.j(dir, "dir");
        createDirectory(dir, false);
    }

    public abstract void createDirectory(Path dir, boolean mustCreate) throws IOException;

    public abstract void createSymlink(Path source, Path target) throws IOException;

    public final void delete(Path path) throws IOException {
        y45.j(path, "path");
        delete(path, false);
    }

    public abstract void delete(Path path, boolean mustExist) throws IOException;

    public void deleteRecursively(Path fileOrDirectory, boolean mustExist) throws IOException {
        y45.j(fileOrDirectory, "fileOrDirectory");
        okio.internal.FileSystem.commonDeleteRecursively(this, fileOrDirectory, mustExist);
    }

    public final boolean exists(Path path) throws IOException {
        y45.j(path, "path");
        return okio.internal.FileSystem.commonExists(this, path);
    }

    public abstract List<Path> list(Path dir) throws IOException;

    public abstract List<Path> listOrNull(Path dir);

    public pc9 listRecursively(Path dir, boolean followSymlinks) {
        y45.j(dir, "dir");
        return okio.internal.FileSystem.commonListRecursively(this, dir, followSymlinks);
    }

    public final FileMetadata metadata(Path path) throws IOException {
        y45.j(path, "path");
        return okio.internal.FileSystem.commonMetadata(this, path);
    }

    public abstract FileMetadata metadataOrNull(Path path) throws IOException;

    public abstract FileHandle openReadOnly(Path file) throws IOException;

    public final FileHandle openReadWrite(Path file) throws IOException {
        y45.j(file, "file");
        return openReadWrite(file, false, false);
    }

    public abstract FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws IOException;

    public final Sink sink(Path file) throws IOException {
        y45.j(file, "file");
        return sink(file, false);
    }

    public abstract Sink sink(Path file, boolean mustCreate) throws IOException;

    public abstract Source source(Path file) throws IOException;

    public final void createDirectories(Path dir) throws IOException {
        y45.j(dir, "dir");
        createDirectories(dir, false);
    }

    public final void deleteRecursively(Path fileOrDirectory) throws IOException {
        y45.j(fileOrDirectory, "fileOrDirectory");
        deleteRecursively(fileOrDirectory, false);
    }

    public final pc9 listRecursively(Path dir) {
        y45.j(dir, "dir");
        return listRecursively(dir, false);
    }
}
