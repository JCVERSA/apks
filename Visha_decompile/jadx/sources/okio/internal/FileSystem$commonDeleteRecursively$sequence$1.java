package okio.internal;

import defpackage.hg;
import defpackage.nt1;
import defpackage.s74;
import defpackage.sc9;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import okio.FileSystem;
import okio.Path;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lsc9;", "Lokio/Path;", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {1, 9, 0})
@nt1(c = "okio.internal.-FileSystem$commonDeleteRecursively$sequence$1", f = "FileSystem.kt", l = {75}, m = "invokeSuspend")
public final class FileSystem$commonDeleteRecursively$sequence$1 extends RestrictedSuspendLambda implements s74 {
    final Path $fileOrDirectory;
    final FileSystem $this_commonDeleteRecursively;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystem$commonDeleteRecursively$sequence$1(FileSystem fileSystem, Path path, wh1<? super FileSystem$commonDeleteRecursively$sequence$1> wh1Var) {
        super(2, wh1Var);
        this.$this_commonDeleteRecursively = fileSystem;
        this.$fileOrDirectory = path;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$1 = new FileSystem$commonDeleteRecursively$sequence$1(this.$this_commonDeleteRecursively, this.$fileOrDirectory, wh1Var);
        fileSystem$commonDeleteRecursively$sequence$1.L$0 = obj;
        return fileSystem$commonDeleteRecursively$sequence$1;
    }

    @Override
    public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
        return ((FileSystem$commonDeleteRecursively$sequence$1) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            sc9 sc9Var = (sc9) this.L$0;
            FileSystem fileSystem = this.$this_commonDeleteRecursively;
            hg hgVar = new hg();
            Path path = this.$fileOrDirectory;
            this.label = 1;
            if (FileSystem.collectRecursively(sc9Var, fileSystem, hgVar, path, false, true, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
