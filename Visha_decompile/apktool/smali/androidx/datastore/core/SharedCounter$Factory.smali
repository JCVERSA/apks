.class public final Landroidx/datastore/core/SharedCounter$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/SharedCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u001d\u0010\u0010\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\u00118\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/datastore/core/SharedCounter$Factory;",
        "",
        "<init>",
        "()V",
        "Landroid/os/ParcelFileDescriptor;",
        "pfd",
        "Landroidx/datastore/core/SharedCounter;",
        "createCounterFromFd",
        "(Landroid/os/ParcelFileDescriptor;)Landroidx/datastore/core/SharedCounter;",
        "Lzfb;",
        "loadLib",
        "Lkotlin/Function0;",
        "Ljava/io/File;",
        "produceFile",
        "create$datastore_core_release",
        "(Lc74;)Landroidx/datastore/core/SharedCounter;",
        "create",
        "Landroidx/datastore/core/NativeSharedCounter;",
        "nativeSharedCounter",
        "Landroidx/datastore/core/NativeSharedCounter;",
        "getNativeSharedCounter$datastore_core_release",
        "()Landroidx/datastore/core/NativeSharedCounter;",
        "datastore-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/core/SharedCounter$Factory;-><init>()V

    return-void
.end method

.method private final createCounterFromFd(Landroid/os/ParcelFileDescriptor;)Landroidx/datastore/core/SharedCounter;
    .locals 2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-virtual {p0}, Landroidx/datastore/core/SharedCounter$Factory;->getNativeSharedCounter$datastore_core_release()Landroidx/datastore/core/NativeSharedCounter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/core/NativeSharedCounter;->nativeTruncateFile(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/core/SharedCounter$Factory;->getNativeSharedCounter$datastore_core_release()Landroidx/datastore/core/NativeSharedCounter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/datastore/core/NativeSharedCounter;->nativeCreateSharedCounter(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    new-instance v0, Landroidx/datastore/core/SharedCounter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/core/SharedCounter;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to mmap counter file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to truncate counter file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final create$datastore_core_release(Lc74;)Landroidx/datastore/core/SharedCounter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")",
            "Landroidx/datastore/core/SharedCounter;"
        }
    .end annotation

    const-string v0, "produceFile"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/high16 v0, 0x38000000

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Landroidx/datastore/core/SharedCounter$Factory;->createCounterFromFd(Landroid/os/ParcelFileDescriptor;)Landroidx/datastore/core/SharedCounter;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    throw p0
.end method

.method public final getNativeSharedCounter$datastore_core_release()Landroidx/datastore/core/NativeSharedCounter;
    .locals 0

    invoke-static {}, Landroidx/datastore/core/SharedCounter;->access$getNativeSharedCounter$cp()Landroidx/datastore/core/NativeSharedCounter;

    move-result-object p0

    return-object p0
.end method

.method public final loadLib()V
    .locals 0

    const-string p0, "datastore_shared_counter"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
