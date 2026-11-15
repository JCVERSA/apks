package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.c81;
import defpackage.ny7;
import defpackage.x71;
import defpackage.xq8;
import defpackage.y45;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\r2\u0006\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0016J\u001f\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010$\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b&\u0010%J\u001f\u0010(\u001a\u00020'2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010+\u001a\u00020'2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020'2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b-\u0010)J\u001f\u0010.\u001a\u00020'2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010,J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00102¨\u00063"}, d2 = {"Lokio/NioFileSystemWrappingFileSystem;", "Lokio/NioSystemFileSystem;", "Ljava/nio/file/FileSystem;", "nioFileSystem", MethodDecl.initName, "(Ljava/nio/file/FileSystem;)V", "Lokio/Path;", "Ljava/nio/file/Path;", "resolve", "(Lokio/Path;)Ljava/nio/file/Path;", "dir", "", "throwOnFailure", "", "list", "(Lokio/Path;Z)Ljava/util/List;", "path", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "file", "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "Lzfb;", "createDirectory", "(Lokio/Path;Z)V", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "", "toString", "()Ljava/lang/String;", "Ljava/nio/file/FileSystem;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NioFileSystemWrappingFileSystem extends NioSystemFileSystem {
    private final java.nio.file.FileSystem nioFileSystem;

    public NioFileSystemWrappingFileSystem(java.nio.file.FileSystem fileSystem) {
        y45.j(fileSystem, "nioFileSystem");
        this.nioFileSystem = fileSystem;
    }

    private final java.nio.file.Path resolve(Path path) {
        java.nio.file.Path path2 = this.nioFileSystem.getPath(path.toString(), new String[0]);
        y45.i(path2, "getPath(...)");
        return path2;
    }

    @Override
    public Sink appendingSink(Path file, boolean mustExist) throws IOException {
        y45.j(file, "file");
        List listC = x71.c();
        listC.add(StandardOpenOption.APPEND);
        if (!mustExist) {
            listC.add(StandardOpenOption.CREATE);
        }
        List listA = x71.a(listC);
        java.nio.file.Path pathResolve = resolve(file);
        StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) listA.toArray(new StandardOpenOption[0]);
        OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(pathResolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        y45.i(outputStreamNewOutputStream, "newOutputStream(...)");
        return Okio.sink(outputStreamNewOutputStream);
    }

    @Override
    public void atomicMove(Path source, Path target) throws IOException {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        try {
            y45.i(Files.move(resolve(source), resolve(target), (CopyOption[]) Arrays.copyOf(new CopyOption[]{StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING}, 2)), "move(...)");
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override
    public Path canonicalize(Path path) throws IOException {
        y45.j(path, "path");
        try {
            Path.Companion companion = Path.INSTANCE;
            java.nio.file.Path realPath = resolve(path).toRealPath(new LinkOption[0]);
            y45.i(realPath, "toRealPath(...)");
            return Path.Companion.get$default(companion, realPath, false, 1, (Object) null);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + path);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override
    public void createDirectory(Path dir, boolean mustCreate) throws IOException {
        boolean z;
        y45.j(dir, "dir");
        FileMetadata fileMetadataMetadataOrNull = metadataOrNull(dir);
        if (fileMetadataMetadataOrNull != null) {
            z = fileMetadataMetadataOrNull.getIsDirectory();
        }
        if (z && mustCreate) {
            throw new IOException(dir + " already exists.");
        }
        try {
            y45.i(Files.createDirectory(resolve(dir), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectory(...)");
        } catch (IOException e) {
            if (z) {
                return;
            }
            throw new IOException("failed to create directory: " + dir, e);
        }
    }

    @Override
    public void createSymlink(Path source, Path target) {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        y45.i(Files.createSymbolicLink(resolve(source), resolve(target), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createSymbolicLink(...)");
    }

    @Override
    public void delete(Path path, boolean mustExist) throws IOException {
        y45.j(path, "path");
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        java.nio.file.Path pathResolve = resolve(path);
        try {
            Files.delete(pathResolve);
        } catch (NoSuchFileException unused) {
            if (mustExist) {
                throw new FileNotFoundException("no such file: " + path);
            }
        } catch (IOException unused2) {
            if (Files.exists(pathResolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                throw new IOException("failed to delete " + path);
            }
        }
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
    public FileMetadata metadataOrNull(Path path) {
        y45.j(path, "path");
        return metadataOrNull(resolve(path));
    }

    @Override
    public FileHandle openReadOnly(Path file) throws IOException {
        y45.j(file, "file");
        try {
            FileChannel fileChannelOpen = FileChannel.open(resolve(file), StandardOpenOption.READ);
            y45.g(fileChannelOpen);
            return new NioFileSystemFileHandle(false, fileChannelOpen);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws IOException {
        y45.j(file, "file");
        if (mustCreate && mustExist) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.");
        }
        List listC = x71.c();
        listC.add(StandardOpenOption.READ);
        listC.add(StandardOpenOption.WRITE);
        if (mustCreate) {
            listC.add(StandardOpenOption.CREATE_NEW);
        } else if (!mustExist) {
            listC.add(StandardOpenOption.CREATE);
        }
        List listA = x71.a(listC);
        try {
            java.nio.file.Path pathResolve = resolve(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) listA.toArray(new StandardOpenOption[0]);
            FileChannel fileChannelOpen = FileChannel.open(pathResolve, (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length));
            y45.g(fileChannelOpen);
            return new NioFileSystemFileHandle(true, fileChannelOpen);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override
    public Sink sink(Path file, boolean mustCreate) throws IOException {
        y45.j(file, "file");
        List listC = x71.c();
        if (mustCreate) {
            listC.add(StandardOpenOption.CREATE_NEW);
        }
        List listA = x71.a(listC);
        try {
            java.nio.file.Path pathResolve = resolve(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) listA.toArray(new StandardOpenOption[0]);
            OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
            OutputStream outputStreamNewOutputStream = Files.newOutputStream(pathResolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
            y45.i(outputStreamNewOutputStream, "newOutputStream(...)");
            return Okio.sink(outputStreamNewOutputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override
    public Source source(Path file) throws IOException {
        y45.j(file, "file");
        try {
            InputStream inputStreamNewInputStream = Files.newInputStream(resolve(file), (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0));
            y45.i(inputStreamNewInputStream, "newInputStream(...)");
            return Okio.source(inputStreamNewInputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override
    public String toString() {
        String strO = xq8.b(this.nioFileSystem.getClass()).o();
        y45.g(strO);
        return strO;
    }

    private final List<Path> list(Path dir, boolean throwOnFailure) throws IOException {
        java.nio.file.Path pathResolve = resolve(dir);
        try {
            List listB = ny7.b(pathResolve, null, 1, null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listB.iterator();
            while (it.hasNext()) {
                arrayList.add(Path.Companion.get$default(Path.INSTANCE, (java.nio.file.Path) it.next(), false, 1, (Object) null));
            }
            c81.A(arrayList);
            return arrayList;
        } catch (Exception unused) {
            if (!throwOnFailure) {
                return null;
            }
            if (Files.exists(pathResolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                throw new IOException("failed to list " + dir);
            }
            throw new FileNotFoundException("no such file: " + dir);
        }
    }
}
