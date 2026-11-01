package n0;

import java.io.IOException;
import java.nio.file.AccessDeniedException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class c extends SimpleFileVisitor<Path> {

    public final AtomicInteger f1240a;

    public final AtomicLong f1241b;

    public final v0.d f1242c;

    public c(AtomicInteger atomicInteger, AtomicLong atomicLong, v0.d dVar) {
        this.f1240a = atomicInteger;
        this.f1241b = atomicLong;
        this.f1242c = dVar;
    }

    @Override
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        this.f1240a.incrementAndGet();
        this.f1241b.addAndGet(basicFileAttributes.size());
        v0.d dVar = this.f1242c;
        return (dVar == null || !dVar.isCancelled()) ? FileVisitResult.CONTINUE : FileVisitResult.TERMINATE;
    }

    @Override
    public final FileVisitResult visitFileFailed(Object obj, IOException iOException) {
        return iOException instanceof AccessDeniedException ? FileVisitResult.SKIP_SUBTREE : super.visitFileFailed((Path) obj, iOException);
    }
}
