.class public abstract Lkhb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkhb$e;,
        Lkhb$d;,
        Lkhb$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/net/UploadDataProvider;
    .locals 2

    new-instance v0, Lkhb$e;

    new-instance v1, Lkhb$b;

    invoke-direct {v1, p0}, Lkhb$b;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lkhb$e;-><init>(Lkhb$d;Llhb;)V

    return-object v0
.end method

.method public static b(Ljava/io/File;)Lorg/chromium/net/UploadDataProvider;
    .locals 2

    new-instance v0, Lkhb$e;

    new-instance v1, Lkhb$a;

    invoke-direct {v1, p0}, Lkhb$a;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lkhb$e;-><init>(Lkhb$d;Llhb;)V

    return-object v0
.end method

.method public static c(Ljava/nio/ByteBuffer;)Lorg/chromium/net/UploadDataProvider;
    .locals 2

    new-instance v0, Lkhb$c;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkhb$c;-><init>(Ljava/nio/ByteBuffer;Llhb;)V

    return-object v0
.end method

.method public static d([B)Lorg/chromium/net/UploadDataProvider;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkhb;->e([BII)Lorg/chromium/net/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static e([BII)Lorg/chromium/net/UploadDataProvider;
    .locals 1

    new-instance v0, Lkhb$c;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lkhb$c;-><init>(Ljava/nio/ByteBuffer;Llhb;)V

    return-object v0
.end method
