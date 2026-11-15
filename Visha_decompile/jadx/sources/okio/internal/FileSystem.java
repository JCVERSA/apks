package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.hg;
import defpackage.nt1;
import defpackage.pc9;
import defpackage.s74;
import defpackage.sc9;
import defpackage.tc9;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y71;
import defpackage.z45;
import defpackage.zfb;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.Okio;
import okio.Path;
import okio.Source;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a#\u0010\f\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\f\u0010\r\u001a#\u0010\u0010\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a#\u0010\u0014\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0014\u0010\r\u001a)\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016*\u00020\u00002\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001aH\u0010\u001e\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00002\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0080@¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001d\u0010 \u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lokio/FileSystem;", "Lokio/Path;", "path", "Lokio/FileMetadata;", "commonMetadata", "(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;", "", "commonExists", "(Lokio/FileSystem;Lokio/Path;)Z", "dir", "mustCreate", "Lzfb;", "commonCreateDirectories", "(Lokio/FileSystem;Lokio/Path;Z)V", "source", TypedValues.AttributesType.S_TARGET, "commonCopy", "(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V", "fileOrDirectory", "mustExist", "commonDeleteRecursively", "followSymlinks", "Lpc9;", "commonListRecursively", "(Lokio/FileSystem;Lokio/Path;Z)Lpc9;", "Lsc9;", "fileSystem", "Lhg;", "stack", "postorder", "collectRecursively", "(Lsc9;Lokio/FileSystem;Lhg;Lokio/Path;ZZLwh1;)Ljava/lang/Object;", "symlinkTarget", "(Lokio/FileSystem;Lokio/Path;)Lokio/Path;", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class FileSystem {

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @nt1(c = "okio.internal.-FileSystem", f = "FileSystem.kt", l = {116, 135, 145}, m = "collectRecursively")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        boolean Z$1;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileSystem.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lsc9;", "Lokio/Path;", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "okio.internal.-FileSystem$commonListRecursively$1", f = "FileSystem.kt", l = {96}, m = "invokeSuspend")
    public static final class C30541 extends RestrictedSuspendLambda implements s74 {
        final Path $dir;
        final boolean $followSymlinks;
        final okio.FileSystem $this_commonListRecursively;
        private Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C30541(Path path, okio.FileSystem fileSystem, boolean z, wh1<? super C30541> wh1Var) {
            super(2, wh1Var);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            C30541 c30541 = new C30541(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, wh1Var);
            c30541.L$0 = obj;
            return c30541;
        }

        @Override
        public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
            return ((C30541) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            sc9 sc9Var;
            hg hgVar;
            Iterator<Path> it;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                sc9 sc9Var2 = (sc9) this.L$0;
                hg hgVar2 = new hg();
                hgVar2.addLast(this.$dir);
                sc9Var = sc9Var2;
                hgVar = hgVar2;
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                hg hgVar3 = (hg) this.L$1;
                sc9 sc9Var3 = (sc9) this.L$0;
                c.b(obj);
                hgVar = hgVar3;
                sc9Var = sc9Var3;
            }
            while (it.hasNext()) {
                Path next = it.next();
                okio.FileSystem fileSystem = this.$this_commonListRecursively;
                boolean z = this.$followSymlinks;
                this.L$0 = sc9Var;
                this.L$1 = hgVar;
                this.L$2 = it;
                this.label = 1;
                if (FileSystem.collectRecursively(sc9Var, fileSystem, hgVar, next, z, false, this) == objF) {
                    return objF;
                }
            }
            return zfb.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f6 A[Catch: all -> 0x005d, TRY_LEAVE, TryCatch #1 {all -> 0x005d, blocks: (B:17:0x0058, B:48:0x00f0, B:50:0x00f6), top: B:69:0x0058 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0132  */
    /* JADX WARN: Code duplicated, block: B:62:0x0145 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x0149  */
    /* JADX WARN: Code duplicated, block: B:72:0x011f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:? A[LOOP:0: B:48:0x00f0->B:74:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static final Object collectRecursively(sc9 sc9Var, okio.FileSystem fileSystem, hg hgVar, Path path, boolean z, boolean z2, wh1<? super zfb> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        okio.FileSystem fileSystem2;
        hg hgVar2;
        boolean z3;
        okio.FileSystem fileSystem3;
        sc9 sc9Var2;
        boolean z4;
        hg hgVar3;
        Path path2;
        boolean z5;
        boolean z6;
        Iterator<Path> it;
        Path next;
        Path path3 = path;
        boolean z7 = z2;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        int i3 = 0;
        if (i2 == 0) {
            c.b(obj);
            if (z7) {
                fileSystem2 = fileSystem;
                hgVar2 = hgVar;
                z3 = z;
            } else {
                anonymousClass1.L$0 = sc9Var;
                fileSystem2 = fileSystem;
                anonymousClass1.L$1 = fileSystem2;
                hgVar2 = hgVar;
                anonymousClass1.L$2 = hgVar2;
                anonymousClass1.L$3 = path3;
                z3 = z;
                anonymousClass1.Z$0 = z3;
                anonymousClass1.Z$1 = z7;
                anonymousClass1.label = 1;
                if (sc9Var.b(path3, anonymousClass1) == objF) {
                    return objF;
                }
            }
            fileSystem3 = fileSystem2;
            boolean z8 = z3;
            sc9Var2 = sc9Var;
            z4 = z8;
        } else {
            if (i2 != 1) {
                if (i2 == 2) {
                    z6 = anonymousClass1.Z$1;
                    z5 = anonymousClass1.Z$0;
                    it = (Iterator) anonymousClass1.L$4;
                    path2 = (Path) anonymousClass1.L$3;
                    hgVar3 = (hg) anonymousClass1.L$2;
                    fileSystem3 = (okio.FileSystem) anonymousClass1.L$1;
                    sc9Var2 = (sc9) anonymousClass1.L$0;
                    try {
                        c.b(obj);
                        while (it.hasNext()) {
                            next = it.next();
                            anonymousClass1.L$0 = sc9Var2;
                            anonymousClass1.L$1 = fileSystem3;
                            anonymousClass1.L$2 = hgVar3;
                            anonymousClass1.L$3 = path2;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = z5;
                            anonymousClass1.Z$1 = z6;
                            anonymousClass1.label = 2;
                            if (collectRecursively(sc9Var2, fileSystem3, hgVar3, next, z5, z6, anonymousClass1) == objF) {
                                return objF;
                            }
                        }
                        hgVar3.removeLast();
                        z7 = z6;
                        path3 = path2;
                        if (z7) {
                            return zfb.a;
                        }
                        anonymousClass1.L$0 = null;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.L$4 = null;
                        anonymousClass1.label = 3;
                        if (sc9Var2.b(path3, anonymousClass1) == objF) {
                            return objF;
                        }
                    } catch (Throwable th) {
                        th = th;
                        hgVar3.removeLast();
                        throw th;
                    }
                } else {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
                return zfb.a;
            }
            boolean z9 = anonymousClass1.Z$1;
            boolean z10 = anonymousClass1.Z$0;
            Path path4 = (Path) anonymousClass1.L$3;
            hgVar2 = (hg) anonymousClass1.L$2;
            fileSystem3 = (okio.FileSystem) anonymousClass1.L$1;
            sc9Var2 = (sc9) anonymousClass1.L$0;
            c.b(obj);
            z7 = z9;
            z4 = z10;
            path3 = path4;
        }
        List<Path> listListOrNull = fileSystem3.listOrNull(path3);
        if (listListOrNull == null) {
            listListOrNull = y71.k();
        }
        if (!listListOrNull.isEmpty()) {
            Path path5 = path3;
            while (true) {
                if (z4 && hgVar2.contains(path5)) {
                    throw new IOException("symlink cycle at " + path3);
                }
                Path pathSymlinkTarget = symlinkTarget(fileSystem3, path5);
                if (pathSymlinkTarget != null) {
                    i3++;
                    path5 = pathSymlinkTarget;
                } else if (z4 || i3 == 0) {
                    hgVar2.addLast(path5);
                    try {
                        hgVar3 = hgVar2;
                        path2 = path3;
                        z5 = z4;
                        z6 = z7;
                        it = listListOrNull.iterator();
                        while (it.hasNext()) {
                            next = it.next();
                            anonymousClass1.L$0 = sc9Var2;
                            anonymousClass1.L$1 = fileSystem3;
                            anonymousClass1.L$2 = hgVar3;
                            anonymousClass1.L$3 = path2;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = z5;
                            anonymousClass1.Z$1 = z6;
                            anonymousClass1.label = 2;
                            if (collectRecursively(sc9Var2, fileSystem3, hgVar3, next, z5, z6, anonymousClass1) == objF) {
                                return objF;
                            }
                        }
                        hgVar3.removeLast();
                        z7 = z6;
                        path3 = path2;
                    } catch (Throwable th2) {
                        th = th2;
                        hgVar3 = hgVar2;
                        hgVar3.removeLast();
                        throw th;
                    }
                }
            }
        }
        if (z7) {
            return zfb.a;
        }
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.L$3 = null;
        anonymousClass1.L$4 = null;
        anonymousClass1.label = 3;
        if (sc9Var2.b(path3, anonymousClass1) == objF) {
            return objF;
        }
        return zfb.a;
    }

    public static final void commonCopy(okio.FileSystem fileSystem, Path path, Path path2) throws IOException {
        Long lValueOf;
        Throwable th;
        Long lValueOf2;
        y45.j(fileSystem, "<this>");
        y45.j(path, "source");
        y45.j(path2, TypedValues.AttributesType.S_TARGET);
        Source source = fileSystem.source(path);
        Throwable th2 = null;
        try {
            BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(path2));
            try {
                lValueOf2 = Long.valueOf(bufferedSinkBuffer.writeAll(source));
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                th = null;
            } catch (Throwable th4) {
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th5) {
                        ue3.a(th4, th5);
                    }
                }
                th = th4;
                lValueOf2 = null;
            }
            if (th != null) {
                throw th;
            }
            y45.g(lValueOf2);
            lValueOf = Long.valueOf(lValueOf2.longValue());
            if (source != null) {
                try {
                    source.close();
                } catch (Throwable th6) {
                    th2 = th6;
                }
            }
            if (th2 != null) {
                throw th2;
            }
            y45.g(lValueOf);
        } catch (Throwable th7) {
            if (source != null) {
                try {
                    source.close();
                } catch (Throwable th8) {
                    ue3.a(th7, th8);
                }
            }
            th2 = th7;
            lValueOf = null;
        }
    }

    public static final void commonCreateDirectories(okio.FileSystem fileSystem, Path path, boolean z) throws IOException {
        y45.j(fileSystem, "<this>");
        y45.j(path, "dir");
        hg hgVar = new hg();
        for (Path pathParent = path; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            hgVar.addFirst(pathParent);
        }
        if (z && hgVar.isEmpty()) {
            throw new IOException(path + " already exists.");
        }
        Iterator<E> it = hgVar.iterator();
        while (it.hasNext()) {
            fileSystem.createDirectory((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(okio.FileSystem fileSystem, Path path, boolean z) throws IOException {
        y45.j(fileSystem, "<this>");
        y45.j(path, "fileOrDirectory");
        Iterator it = tc9.b(new FileSystem$commonDeleteRecursively$sequence$1(fileSystem, path, null)).iterator();
        while (it.hasNext()) {
            fileSystem.delete((Path) it.next(), z && !it.hasNext());
        }
    }

    public static final boolean commonExists(okio.FileSystem fileSystem, Path path) throws IOException {
        y45.j(fileSystem, "<this>");
        y45.j(path, "path");
        return fileSystem.metadataOrNull(path) != null;
    }

    public static final pc9 commonListRecursively(okio.FileSystem fileSystem, Path path, boolean z) throws IOException {
        y45.j(fileSystem, "<this>");
        y45.j(path, "dir");
        return tc9.b(new C30541(path, fileSystem, z, null));
    }

    public static final FileMetadata commonMetadata(okio.FileSystem fileSystem, Path path) throws IOException {
        y45.j(fileSystem, "<this>");
        y45.j(path, "path");
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    public static final Path symlinkTarget(okio.FileSystem fileSystem, Path path) throws IOException {
        y45.j(fileSystem, "<this>");
        y45.j(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path pathParent = path.parent();
        y45.g(pathParent);
        return pathParent.resolve(symlinkTarget);
    }
}
