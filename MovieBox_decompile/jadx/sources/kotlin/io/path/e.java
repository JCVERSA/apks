package kotlin.io.path;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;

final class e extends SimpleFileVisitor {

    private final boolean f64294a;

    private h f64295b;

    private ArrayDeque f64296c = new ArrayDeque();

    public e(boolean z10) {
        this.f64294a = z10;
    }

    public FileVisitResult a(Path dir, BasicFileAttributes attrs) throws IOException {
        Intrinsics.h(dir, "dir");
        Intrinsics.h(attrs, "attrs");
        this.f64296c.add(new h(dir, attrs.fileKey(), this.f64295b));
        FileVisitResult fileVisitResultPreVisitDirectory = super.preVisitDirectory(dir, attrs);
        Intrinsics.g(fileVisitResultPreVisitDirectory, "preVisitDirectory(...)");
        return fileVisitResultPreVisitDirectory;
    }

    public final List b(h directoryNode) throws IOException {
        Intrinsics.h(directoryNode, "directoryNode");
        this.f64295b = directoryNode;
        Files.walkFileTree(directoryNode.d(), LinkFollowing.f64285a.b(this.f64294a), 1, b.a(this));
        this.f64296c.removeFirst();
        ArrayDeque arrayDeque = this.f64296c;
        this.f64296c = new ArrayDeque();
        return arrayDeque;
    }

    public FileVisitResult c(Path file, BasicFileAttributes attrs) throws IOException {
        Intrinsics.h(file, "file");
        Intrinsics.h(attrs, "attrs");
        this.f64296c.add(new h(file, null, this.f64295b));
        FileVisitResult fileVisitResultVisitFile = super.visitFile(file, attrs);
        Intrinsics.g(fileVisitResultVisitFile, "visitFile(...)");
        return fileVisitResultVisitFile;
    }

    @Override
    public FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes basicFileAttributes) {
        return a(a.a(obj), basicFileAttributes);
    }

    @Override
    public FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        return c(a.a(obj), basicFileAttributes);
    }
}
