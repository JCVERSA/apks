.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/TKC;


# instance fields
.field private Sj:I

.field private sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    long-to-int p2, p2

    .line 5
    iput p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->Sj:I

    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(ILjava/io/File;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;[B)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public TKC(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->TKC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)[B
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x400

    .line 5
    :try_start_2
    new-array v2, v2, [B

    .line 6
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return-object v1

    .line 11
    :catch_1
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    .line 13
    :goto_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw v1

    :catch_2
    move-object p1, v1

    move-object v0, p1

    goto :goto_1

    :cond_4
    :goto_3
    return-object v1
.end method
