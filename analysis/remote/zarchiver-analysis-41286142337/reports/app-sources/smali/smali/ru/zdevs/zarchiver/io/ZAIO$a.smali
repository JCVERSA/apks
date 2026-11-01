.class public final Lru/zdevs/zarchiver/io/ZAIO$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/io/ZAIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/io/ZAIO$a;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/io/ZAIO$a;->b:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/io/ZAIO$a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 8
    .line 9
    new-instance v3, Ljava/io/FileOutputStream;

    .line 10
    .line 11
    iget-object v4, p0, Lru/zdevs/zarchiver/io/ZAIO$a;->b:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ltz v3, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
