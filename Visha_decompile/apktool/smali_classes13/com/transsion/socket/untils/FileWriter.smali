.class public final Lcom/transsion/socket/untils/FileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/untils/FileWriter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J8\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\tJ \u0010\u0012\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\tH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/socket/untils/FileWriter;",
        "",
        "<init>",
        "()V",
        "getFileChannel",
        "Ljava/nio/channels/FileChannel;",
        "path",
        "",
        "write",
        "",
        "dis",
        "Ljava/io/DataInputStream;",
        "filePath",
        "tmpPath",
        "position",
        "",
        "size",
        "overlay",
        "renameFile",
        "targetFile",
        "Companion",
        "socket_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/socket/untils/FileWriter$Companion;

.field private static final TAG:Ljava/lang/String; = "FileWriter"

.field private static final dataCache:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/socket/untils/FileWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/socket/untils/FileWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/socket/untils/FileWriter;->Companion:Lcom/transsion/socket/untils/FileWriter$Companion;

    sget v0, Lcom/transsion/socket/SocketMain;->PACKAGE_MAX_BLOCK_SIZE:I

    new-array v0, v0, [B

    sput-object v0, Lcom/transsion/socket/untils/FileWriter;->dataCache:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFileChannel(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileChannel Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileWriter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final renameFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/IFileOperation;->rename(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final write(Ljava/io/DataInputStream;Ljava/lang/String;Ljava/lang/String;JJZ)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v10, p4

    const-string v12, "FileWriter"

    const-string v0, "dis"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p3

    :goto_0
    const/4 v15, 0x0

    :try_start_0
    invoke-direct {v1, v13}, Lcom/transsion/socket/untils/FileWriter;->getFileChannel(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v8, :cond_1

    :try_start_1
    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v13

    move-wide/from16 v6, p4

    move-object v14, v8

    move-wide/from16 v8, p6

    :try_start_2
    invoke-interface/range {v4 .. v9}, Lcom/transsion/letswitch/service/api/IFileOperation;->openFileW(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_2

    :try_start_3
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v14

    move-object v14, v4

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v1, v14

    move-object v14, v4

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    :goto_1
    move-object v1, v14

    :goto_2
    const/4 v14, 0x0

    goto/16 :goto_11

    :catch_1
    move-exception v0

    :goto_3
    move-object v1, v14

    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    move-object v14, v8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v14, v8

    goto :goto_3

    :cond_1
    move-object v14, v8

    :try_start_4
    invoke-virtual {v14, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x0

    :cond_2
    :goto_5
    if-nez v14, :cond_3

    move v0, v15

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    :goto_6
    :try_start_5
    sget v5, Lcom/transsion/socket/SocketMain;->PACKAGE_MAX_BLOCK_SIZE:I

    int-to-long v5, v5

    sub-long v7, p6, v10

    :goto_7
    sget-object v9, Lcom/transsion/socket/untils/FileWriter;->dataCache:[B

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v2, v9, v15, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    if-gtz v9, :cond_4

    const-string v2, "read empty"

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v16, 0x0

    goto :goto_e

    :cond_4
    int-to-long v10, v9

    sub-long/2addr v7, v10

    move v10, v9

    :goto_8
    if-eqz v14, :cond_5

    :try_start_6
    sget-object v11, Lcom/transsion/socket/untils/FileWriter;->dataCache:[B

    sub-int v15, v9, v10

    invoke-static {v11, v15, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v11

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :cond_5
    const/4 v11, 0x0

    :goto_9
    if-gtz v11, :cond_6

    const-string v11, "write empty"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :goto_a
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "write Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_b
    const-wide/16 v16, 0x0

    goto :goto_d

    :cond_6
    sub-int/2addr v10, v11

    :goto_c
    if-gtz v10, :cond_b

    goto :goto_b

    :goto_d
    cmp-long v9, v7, v16

    if-gtz v9, :cond_a

    :goto_e
    cmp-long v2, v7, v16

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write needRead: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move/from16 v11, p8

    invoke-direct {v1, v13, v3, v11}, Lcom/transsion/socket/untils/FileWriter;->renameFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_9
    move v15, v0

    goto :goto_10

    :cond_a
    move/from16 v11, p8

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_b
    move/from16 v11, p8

    const/4 v15, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_4

    :goto_f
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_d
    const/4 v15, 0x0

    :goto_10
    return v15

    :catchall_4
    move-exception v0

    :goto_11
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_f
    throw v0
.end method
