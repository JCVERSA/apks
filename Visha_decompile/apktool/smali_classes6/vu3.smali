.class public final Lvu3;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvu3$a;
    }
.end annotation


# static fields
.field public static final f:Lvu3$a;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J

.field public final c:J

.field public final d:Lis3;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvu3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvu3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lvu3;->f:Lvu3$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJLis3;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lvu3;->a:Ljava/io/File;

    iput-wide p2, p0, Lvu3;->b:J

    iput-wide p4, p0, Lvu3;->c:J

    iput-object p6, p0, Lvu3;->d:Lis3;

    const-string p1, "FileUploadProgressRequestBody"

    iput-object p1, p0, Lvu3;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lvu3;->c:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x19000

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lvu3;->a:Ljava/io/File;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-wide v4, p0, Lvu3;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    :goto_0
    iget-wide v6, p0, Lvu3;->c:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    int-to-long v8, v0

    add-long/2addr v8, v4

    cmp-long v2, v8, v6

    if-lez v2, :cond_0

    sub-long/2addr v6, v4

    long-to-int v1, v6

    new-array v1, v1, [B

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    array-length v2, v1

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-object v2, p0, Lvu3;->d:Lis3;

    array-length v6, v1

    int-to-long v6, v6

    invoke-interface {v2, v6, v7}, Lis3;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    invoke-interface {p1}, Lokio/Sink;->close()V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    :try_start_3
    sget-object v1, Loq5;->a:Loq5;

    iget-object p0, p0, Lvu3;->e:Ljava/lang/String;

    const-string v3, "write file body error:"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    :catchall_3
    move-exception p1

    goto :goto_6

    :cond_2
    :goto_5
    invoke-interface {p1}, Lokio/Sink;->close()V

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :goto_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    throw p0
.end method
