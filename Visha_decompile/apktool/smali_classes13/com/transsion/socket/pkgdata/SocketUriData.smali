.class public Lcom/transsion/socket/pkgdata/SocketUriData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# static fields
.field static final BLOCK_BUFFER_SIZE:S = 0x7f9bs

.field static final FLAG_BUFFER_END:S = 0x7f9cs

.field static final URI_DEF:B


# instance fields
.field public mUri:Landroid/net/Uri;

.field public mUriType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUriType:B

    return-void
.end method


# virtual methods
.method public getUriDataOutputStream()Ljava/io/DataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/socket/SocketMain;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getUriInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/socket/SocketMain;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public onClazzType()B
    .locals 0

    const/16 p0, -0x71

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUri:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUriType:B

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketUriData;->getUriDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f9c

    if-eq v0, v2, :cond_6

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    const/16 v1, 0x7f9b

    new-array v1, v1, [B

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-eq v3, v0, :cond_4

    sub-int v4, v0, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    :goto_2
    if-lez v3, :cond_5

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {p0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_0
    iget-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUriType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketUriData;->getUriInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/16 v0, 0x7f9c

    if-nez p0, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_1
    const/16 v1, 0x7f9b

    :try_start_0
    new-array v2, v1, [B

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    :goto_1
    move v5, v4

    :cond_2
    rsub-int v6, v5, 0x7f9b

    invoke-virtual {v3, v2, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_4
    add-int/2addr v5, v6

    if-ne v5, v1, :cond_2

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1, v2, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    throw v1
.end method

.method public setUri(Landroid/net/Uri;)Lcom/transsion/socket/pkgdata/SocketUriData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketUriData;->mUri:Landroid/net/Uri;

    return-object p0
.end method
