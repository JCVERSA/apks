package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.i81;
import defpackage.ue3;
import defpackage.y45;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u0000 62\u00020\u0001:\u00016B7\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u000eJ\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010!J\u001f\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\"\u0010!J\u0017\u0010$\u001a\u00020#2\u0006\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\u00020&2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0010H\u0016¢\u0006\u0004\b'\u0010(J\u001f\u0010)\u001a\u00020&2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010(J\u001f\u0010+\u001a\u00020*2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0010H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010.\u001a\u00020*2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0002H\u0016¢\u0006\u0004\b.\u0010/J\u001f\u00100\u001a\u00020*2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0010H\u0016¢\u0006\u0004\b0\u0010,J\u001f\u00101\u001a\u00020*2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0002H\u0016¢\u0006\u0004\b1\u0010/R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00102R\u0014\u0010\u0004\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u00103R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00104R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00105¨\u00067"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "fileSystem", "", "Lokio/internal/ZipEntry;", TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES, "", "comment", MethodDecl.initName, "(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V", "path", "canonicalizeInternal", "(Lokio/Path;)Lokio/Path;", "dir", "", "throwOnFailure", "", "list", "(Lokio/Path;Z)Ljava/util/List;", "canonicalize", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "file", "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "Lzfb;", "createDirectory", "(Lokio/Path;Z)V", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "Lokio/Path;", "Lokio/FileSystem;", "Ljava/util/Map;", "Ljava/lang/String;", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ZipFileSystem extends FileSystem {
    private static final Companion Companion = new Companion(null);
    private static final Path ROOT = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
    private final String comment;
    private final Map<Path, ZipEntry> entries;
    private final FileSystem fileSystem;
    private final Path zipPath;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokio/ZipFileSystem$Companion;", "", "()V", "ROOT", "Lokio/Path;", "getROOT", "()Lokio/Path;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Path getROOT() {
            return ZipFileSystem.ROOT;
        }

        private Companion() {
        }
    }

    public ZipFileSystem(Path path, FileSystem fileSystem, Map<Path, ZipEntry> map, String str) {
        y45.j(path, "zipPath");
        y45.j(fileSystem, "fileSystem");
        y45.j(map, TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES);
        this.zipPath = path;
        this.fileSystem = fileSystem;
        this.entries = map;
        this.comment = str;
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    @Override
    public Sink appendingSink(Path file, boolean mustExist) throws IOException {
        y45.j(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override
    public void atomicMove(Path source, Path target) throws IOException {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        throw new IOException("zip file systems are read-only");
    }

    @Override
    public Path canonicalize(Path path) throws FileNotFoundException {
        y45.j(path, "path");
        Path pathCanonicalizeInternal = canonicalizeInternal(path);
        if (this.entries.containsKey(pathCanonicalizeInternal)) {
            return pathCanonicalizeInternal;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    @Override
    public void createDirectory(Path dir, boolean mustCreate) throws IOException {
        y45.j(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override
    public void createSymlink(Path source, Path target) throws IOException {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        throw new IOException("zip file systems are read-only");
    }

    @Override
    public void delete(Path path, boolean mustExist) throws IOException {
        y45.j(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override
    public List<Path> list(Path dir) throws IOException {
        y45.j(dir, "dir");
        List<Path> list = list(dir, true);
        y45.g(list);
        return list;
    }

    @Override
    public List<Path> listOrNull(Path dir) {
        y45.j(dir, "dir");
        return list(dir, false);
    }

    @Override
    public FileMetadata metadataOrNull(Path path) throws Throwable {
        FileMetadata localHeader;
        Throwable th;
        y45.j(path, "path");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        Throwable th2 = null;
        if (zipEntry == null) {
            return null;
        }
        FileMetadata fileMetadata = new FileMetadata(!zipEntry.getIsDirectory(), zipEntry.getIsDirectory(), null, zipEntry.getIsDirectory() ? null : Long.valueOf(zipEntry.getSize()), null, zipEntry.getLastModifiedAtMillis(), null, null, 128, null);
        if (zipEntry.getOffset() == -1) {
            return fileMetadata;
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
            try {
                localHeader = ZipFilesKt.readLocalHeader(bufferedSourceBuffer, fileMetadata);
                if (bufferedSourceBuffer != null) {
                    try {
                        bufferedSourceBuffer.close();
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                th = null;
            } catch (Throwable th4) {
                if (bufferedSourceBuffer != null) {
                    try {
                        bufferedSourceBuffer.close();
                    } catch (Throwable th5) {
                        ue3.a(th4, th5);
                    }
                }
                th = th4;
                localHeader = null;
            }
            if (th != null) {
                throw th;
            }
            y45.g(localHeader);
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th6) {
                    th2 = th6;
                }
            }
            if (th2 != null) {
                throw th2;
            }
            y45.g(localHeader);
            return localHeader;
        } catch (Throwable th7) {
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th8) {
                    ue3.a(th7, th8);
                }
            }
            localHeader = null;
            th2 = th7;
        }
    }

    @Override
    public FileHandle openReadOnly(Path file) {
        y45.j(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws IOException {
        y45.j(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override
    public Sink sink(Path file, boolean mustCreate) throws IOException {
        y45.j(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override
    public Source source(Path file) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        y45.j(file, "file");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(file));
        if (zipEntry == null) {
            throw new FileNotFoundException("no such file: " + file);
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        Throwable th = null;
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th4) {
                    ue3.a(th3, th4);
                }
            }
            bufferedSourceBuffer = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        y45.g(bufferedSourceBuffer);
        ZipFilesKt.skipLocalHeader(bufferedSourceBuffer);
        return zipEntry.getCompressionMethod() == 0 ? new FixedLengthSource(bufferedSourceBuffer, zipEntry.getSize(), true) : new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSourceBuffer, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
    }

    private final List<Path> list(Path dir, boolean throwOnFailure) throws IOException {
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(dir));
        if (zipEntry != null) {
            return i81.b1(zipEntry.getChildren());
        }
        if (!throwOnFailure) {
            return null;
        }
        throw new IOException("not a directory: " + dir);
    }
}
