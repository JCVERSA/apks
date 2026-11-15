package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.c81;
import defpackage.e74;
import defpackage.pc9;
import defpackage.xq8;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00142\u0006\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J%\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u001a2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010 J'\u0010#\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010)\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0018H\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b+\u0010*J\u001f\u0010-\u001a\u00020,2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0018H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u00100\u001a\u00020,2\u0006\u0010&\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u00101J\u001f\u00102\u001a\u00020,2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b2\u0010.J\u001f\u00103\u001a\u00020,2\u0006\u0010&\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u00101J\u000f\u00104\u001a\u00020\u0007H\u0016¢\u0006\u0004\b4\u00105R\u0017\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\f\n\u0004\b\u0002\u00106\u001a\u0004\b\u0002\u00107¨\u00068"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "delegate", MethodDecl.initName, "(Lokio/FileSystem;)V", "Lokio/Path;", "path", "", "functionName", "parameterName", "onPathParameter", "(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;", "onPathResult", "(Lokio/Path;Ljava/lang/String;)Lokio/Path;", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "", "followSymlinks", "Lpc9;", "listRecursively", "(Lokio/Path;Z)Lpc9;", "file", "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "Lzfb;", "createDirectory", "(Lokio/Path;Z)V", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "toString", "()Ljava/lang/String;", "Lokio/FileSystem;", "()Lokio/FileSystem;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ForwardingFileSystem extends FileSystem {
    private final FileSystem delegate;

    public ForwardingFileSystem(FileSystem fileSystem) {
        y45.j(fileSystem, "delegate");
        this.delegate = fileSystem;
    }

    @Override
    public Sink appendingSink(Path file, boolean mustExist) throws IOException {
        y45.j(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", "file"), mustExist);
    }

    @Override
    public void atomicMove(Path source, Path target) throws IOException {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", "source"), onPathParameter(target, "atomicMove", TypedValues.AttributesType.S_TARGET));
    }

    @Override
    public Path canonicalize(Path path) throws IOException {
        y45.j(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override
    public void createDirectory(Path dir, boolean mustCreate) throws IOException {
        y45.j(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), mustCreate);
    }

    @Override
    public void createSymlink(Path source, Path target) throws IOException {
        y45.j(source, "source");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", "source"), onPathParameter(target, "createSymlink", TypedValues.AttributesType.S_TARGET));
    }

    public final FileSystem getDelegate() {
        return this.delegate;
    }

    @Override
    public void delete(Path path, boolean mustExist) throws IOException {
        y45.j(path, "path");
        this.delegate.delete(onPathParameter(path, "delete", "path"), mustExist);
    }

    @Override
    public List<Path> list(Path dir) throws IOException {
        y45.j(dir, "dir");
        List<Path> list = this.delegate.list(onPathParameter(dir, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        c81.A(arrayList);
        return arrayList;
    }

    @Override
    public List<Path> listOrNull(Path dir) {
        y45.j(dir, "dir");
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        c81.A(arrayList);
        return arrayList;
    }

    @Override
    public pc9 listRecursively(Path dir, boolean followSymlinks) {
        y45.j(dir, "dir");
        return SequencesKt___SequencesKt.R(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), followSymlinks), new e74() {
            {
                super(1);
            }

            @Override
            public final Path invoke(Path path) {
                y45.j(path, "it");
                return ForwardingFileSystem.this.onPathResult(path, "listRecursively");
            }
        });
    }

    @Override
    public FileMetadata metadataOrNull(Path path) throws IOException {
        y45.j(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : fileMetadataMetadataOrNull.copy((251 & 1) != 0 ? fileMetadataMetadataOrNull.isRegularFile : false, (251 & 2) != 0 ? fileMetadataMetadataOrNull.isDirectory : false, (251 & 4) != 0 ? fileMetadataMetadataOrNull.symlinkTarget : onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), (251 & 8) != 0 ? fileMetadataMetadataOrNull.size : null, (251 & 16) != 0 ? fileMetadataMetadataOrNull.createdAtMillis : null, (251 & 32) != 0 ? fileMetadataMetadataOrNull.lastModifiedAtMillis : null, (251 & 64) != 0 ? fileMetadataMetadataOrNull.lastAccessedAtMillis : null, (251 & 128) != 0 ? fileMetadataMetadataOrNull.extras : null);
    }

    public Path onPathParameter(Path path, String functionName, String parameterName) {
        y45.j(path, "path");
        y45.j(functionName, "functionName");
        y45.j(parameterName, "parameterName");
        return path;
    }

    public Path onPathResult(Path path, String functionName) {
        y45.j(path, "path");
        y45.j(functionName, "functionName");
        return path;
    }

    @Override
    public FileHandle openReadOnly(Path file) throws IOException {
        y45.j(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", "file"));
    }

    @Override
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws IOException {
        y45.j(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", "file"), mustCreate, mustExist);
    }

    @Override
    public Sink sink(Path file, boolean mustCreate) throws IOException {
        y45.j(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", "file"), mustCreate);
    }

    @Override
    public Source source(Path file) throws IOException {
        y45.j(file, "file");
        return this.delegate.source(onPathParameter(file, "source", "file"));
    }

    public String toString() {
        return xq8.b(getClass()).o() + '(' + this.delegate + ')';
    }
}
