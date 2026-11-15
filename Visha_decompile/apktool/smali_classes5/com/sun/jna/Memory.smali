.class public Lcom/sun/jna/Memory;
.super Lcom/sun/jna/Pointer;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Memory$MemoryDisposer;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;

.field public static final f:Lahc;


# instance fields
.field public final c:Lcom/sun/jna/internal/Cleaner$a;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Memory;->e:Ljava/util/Map;

    new-instance v0, Lahc;

    invoke-direct {v0}, Lahc;-><init>()V

    sput-object v0, Lcom/sun/jna/Memory;->f:Lahc;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/jna/Pointer;-><init>()V

    iput-wide p1, p0, Lcom/sun/jna/Memory;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    invoke-static {p1, p2}, Lcom/sun/jna/Memory;->o(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/jna/Pointer;->b:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/jna/Memory;->e:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sun/jna/internal/Cleaner;->d()Lcom/sun/jna/internal/Cleaner;

    move-result-object p1

    new-instance p2, Lcom/sun/jna/Memory$MemoryDisposer;

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->b:J

    invoke-direct {p2, v0, v1}, Lcom/sun/jna/Memory$MemoryDisposer;-><init>(J)V

    invoke-virtual {p1, p0, p2}, Lcom/sun/jna/internal/Cleaner;->e(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/sun/jna/internal/Cleaner$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/Memory;->c:Lcom/sun/jna/internal/Cleaner$a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot allocate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Allocation size must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sun/jna/Memory;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static k()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sun/jna/Memory;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Memory;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/jna/Memory;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->free(J)V

    :cond_0
    return-void
.end method

.method public static o(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->malloc(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public b(J[BII)V
    .locals 2

    int-to-long v0, p5

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Memory;->g(JJ)V

    invoke-super/range {p0 .. p5}, Lcom/sun/jna/Pointer;->b(J[BII)V

    return-void
.end method

.method public close()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/jna/Pointer;->b:J

    iget-object p0, p0, Lcom/sun/jna/Memory;->c:Lcom/sun/jna/internal/Cleaner$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/jna/internal/Cleaner$a;->clean()V

    :cond_0
    return-void
.end method

.method public g(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    add-long/2addr p1, p3

    iget-wide p3, p0, Lcom/sun/jna/Memory;->d:J

    cmp-long p3, p1, p3

    if-gtz p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bounds exceeds available space : size="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sun/jna/Memory;->d:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", offset="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid offset: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()V
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Memory;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/Pointer;->a(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allocated@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/jna/Memory;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
