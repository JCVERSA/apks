.class public Lcom/transsion/socket/internal/SocketStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/internal/SocketStream$SocketPackage;,
        Lcom/transsion/socket/internal/SocketStream$ISocketPackage;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SocketStream"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDirs(Ljava/io/File;)V
    .locals 3

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    const-string v1, "SocketStream"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDirs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/letswitch/service/api/IFileOperation;->mkdirs(Ljava/lang/String;)Z

    move-result p0

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDirs-mkOK:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "makeDirs-mkOK: true"

    invoke-static {v1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readSocket(Ljava/io/DataInputStream;Lcom/transsion/socket/internal/SocketStream$ISocketPackage;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const-string v0, "SocketStream"

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0x2800

    :try_start_0
    new-array v2, v1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v8, v4

    move v6, v5

    move v7, v6

    :cond_1
    :goto_0
    if-ne v6, v5, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSocket type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, -0x7e

    if-eq v7, v9, :cond_2

    int-to-short v9, v7

    invoke-interface {p1, v9, p0}, Lcom/transsion/socket/internal/SocketStream$ISocketPackage;->onHandleSocketData(SLjava/io/DataInputStream;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    :cond_3
    sub-int v9, v6, v8

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    sget-boolean v10, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v10, :cond_4

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read Data size\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " remainCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v2, v4, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    if-ne v9, v5, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3, v2, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v8, v9

    if-ne v8, v6, :cond_1

    new-instance v8, Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    invoke-direct {v8}, Lcom/transsion/socket/internal/SocketStream$SocketPackage;-><init>()V

    iput-byte v7, v8, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    iput v6, v8, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mSize:I

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v8, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mData:[B

    invoke-interface {p1, v8}, Lcom/transsion/socket/internal/SocketStream$ISocketPackage;->mHandleSocketPackage(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v4

    move v6, v5

    goto/16 :goto_0

    :goto_1
    sget-boolean p1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "io-msg:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/net/SocketException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    sget-boolean p1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readSocket msg:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/net/SocketException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public static readStreamToFile(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/transsion/socket/internal/SocketStream;->readStreamToFile(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJZ)Z

    return-void
.end method

.method public static readStreamToFile(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    move-wide/from16 v1, p3

    .line 2
    sget v3, Lcom/transsion/socket/SocketMain;->PACKAGE_MAX_BLOCK_SIZE:I

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 3
    :try_start_0
    new-instance v6, Ljava/io/File;

    if-nez p2, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v7, p2

    :goto_0
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v7, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v8, 0x0

    :goto_1
    sub-long v10, p5, v1

    sub-long/2addr v10, v8

    int-to-long v12, v3

    .line 6
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v5, v10

    const/4 v10, 0x0

    move-object v11, p0

    .line 7
    invoke-virtual {p0, v4, v10, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v7, v4, v10, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v12, v5

    add-long/2addr v8, v12

    add-long v12, v1, v8

    cmp-long v5, v12, p5

    if-ltz v5, :cond_3

    .line 9
    invoke-static {v7}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v0, :cond_2

    .line 12
    const-string v0, "SocketFileData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============Target File Path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move/from16 v5, p7

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v7

    goto :goto_4

    .line 13
    :goto_2
    invoke-static {v6, v1, v5}, Lcom/transsion/socket/internal/SocketUtils;->renameFile(Ljava/io/File;Ljava/io/File;Z)Z

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/socket/internal/SocketUtils;->scanFile(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :goto_3
    invoke-static {v7}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    move/from16 v5, p7

    goto :goto_1

    :goto_4
    invoke-static {v5}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    .line 16
    throw v0
.end method

.method public static readStreamToFileSkipError(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJZ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    sget v3, Lcom/transsion/socket/SocketMain;->PACKAGE_MAX_BLOCK_SIZE:I

    new-array v4, v3, [B

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v10, v6, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v10, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    goto :goto_1

    :catch_0
    move-object v8, v10

    :catch_1
    move-object v10, v8

    const/4 v8, 0x1

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "realPath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , canWrite:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , canRead:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "NewFile"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v11, 0x0

    :goto_2
    sub-long v13, p5, v1

    sub-long/2addr v13, v11

    move v5, v8

    int-to-long v7, v3

    :try_start_2
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    move-object v8, p0

    invoke-virtual {p0, v4, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v7, :cond_1

    :goto_3
    move v8, v5

    goto :goto_5

    :cond_1
    int-to-long v13, v7

    add-long/2addr v11, v13

    if-nez v5, :cond_2

    :try_start_3
    invoke-virtual {v10, v4, v9, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    const/4 v5, 0x1

    :cond_2
    :goto_4
    add-long v13, v1, v11

    cmp-long v7, v13, p5

    if-ltz v7, :cond_5

    :try_start_4
    invoke-static {v10}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "SocketDirData"

    if-eqz v5, :cond_3

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "when write file occur exception and skip file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============Target File Path:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move/from16 v7, p7

    invoke-static {v6, v2, v7}, Lcom/transsion/socket/internal/SocketUtils;->renameFile(Ljava/io/File;Ljava/io/File;Z)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/socket/internal/SocketUtils;->scanFile(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_5
    invoke-static {v10}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    const/4 v13, 0x1

    xor-int/lit8 v0, v8, 0x1

    return v0

    :cond_5
    move/from16 v7, p7

    move v8, v5

    goto :goto_2

    :goto_6
    invoke-static {v10}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static skipByte(Ljava/io/DataInputStream;J)V
    .locals 6

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    sub-long v4, p1, v2

    :try_start_0
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_0

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeSocketPackage(Ljava/io/DataOutputStream;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x7e

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p1, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p1, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mSize:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p1, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mData:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "io-msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SocketStream"

    invoke-static {v0, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance p1, Ljava/net/SocketException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public static writeSocketStream(Ljava/io/DataOutputStream;Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p1, p0}, Lcom/transsion/socket/pkgdata/SocketData;->writeData(Ljava/io/DataOutputStream;)V

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_STREAM:Z

    if-eqz v0, :cond_1

    const-string v0, "Socket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSocketStream\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sget-boolean p1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    new-instance p1, Ljava/net/SocketException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public static writeStreamFromFile(JLjava/io/File;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p2, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget p0, Lcom/transsion/socket/SocketMain;->PACKAGE_MAX_BLOCK_SIZE:I

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez p1, :cond_0

    invoke-static {v1}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :try_start_3
    invoke-virtual {p3, p0, p2, p1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    move-object v0, v1

    :catch_1
    invoke-static {v0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method
