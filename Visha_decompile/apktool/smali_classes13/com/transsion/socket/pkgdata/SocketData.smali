.class public abstract Lcom/transsion/socket/pkgdata/SocketData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/pkgdata/SocketData$IDataTransfer;
    }
.end annotation


# static fields
.field public static final CLAZZ_TYPE_CODE:B = -0x74t

.field public static final CLAZZ_TYPE_CONNECT_CHECK:B = -0x7dt

.field public static final CLAZZ_TYPE_END_SOCKET:B = -0x80t

.field public static final CLAZZ_TYPE_ERROR_CODE:B = -0x73t

.field public static final CLAZZ_TYPE_FILE:B = -0x72t

.field public static final CLAZZ_TYPE_FILE_BLOCK:B = -0x76t

.field public static final CLAZZ_TYPE_HEART_BEAT:B = -0x7ft

.field public static final CLAZZ_TYPE_SEND_PACKAGE:B = -0x7et

.field public static final CLAZZ_TYPE_STRING:B = -0x75t

.field public static final CLAZZ_TYPE_URI:B = -0x71t

.field public static final EMPTY_DATA:[B

.field public static final MAX_STRING_LENGTH:I = 0x5554


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/transsion/socket/pkgdata/SocketData;->EMPTY_DATA:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endSocketPackage()Lcom/transsion/socket/internal/SocketStream$SocketPackage;
    .locals 1

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketEndData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketEndData;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/socket/pkgdata/SocketData;->toSocketPackage()Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    move-result-object v0

    return-object v0
.end method

.method public static getSocketDataClass(S)Lcom/transsion/socket/pkgdata/SocketData;
    .locals 1

    invoke-static {}, Lcom/transsion/socket/SocketMain;->getSocketDataCreator()Lcom/transsion/socket/SocketMain$SocketDataCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/socket/SocketMain$SocketDataCreator;->creatorSocketData(I)Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, -0x80

    if-eq p0, v0, :cond_2

    const/16 v0, -0x7d

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketUriData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketUriData;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketFileData;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketCodeData$SocketErrorCodeData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketCodeData$SocketErrorCodeData;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketCodeData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketCodeData;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketStringData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketFileBlockData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketFileBlockData;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/socket/pkgdata/SocketEndData;

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketEndData;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch -0x76
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSocketData(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)Lcom/transsion/socket/pkgdata/SocketData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/transsion/socket/pkgdata/SocketData;",
            ">(",
            "Lcom/transsion/socket/internal/SocketStream$SocketPackage;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-byte v1, p0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    int-to-short v1, v1

    invoke-static {v1}, Lcom/transsion/socket/pkgdata/SocketData;->getSocketDataClass(S)Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mData:[B

    invoke-static {p0}, Lcom/transsion/socket/internal/SocketUtils;->toDataInputStream([B)Ljava/io/DataInputStream;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/socket/pkgdata/SocketData;->readData(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public afterWriteData(Ljava/io/DataOutputStream;)V
    .locals 0

    return-void
.end method

.method public beforeWriteData(Ljava/io/DataOutputStream;)V
    .locals 0

    return-void
.end method

.method public dump()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClazzType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isBlockData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPackageData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onClazzType()B
.end method

.method public abstract onReadData(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onWriteData(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final readData(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->onReadData(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge v0, p0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeData(Ljava/io/DataOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    sget-object p0, Lcom/transsion/socket/pkgdata/SocketData;->EMPTY_DATA:[B

    return-object p0

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method

.method public toSocketPackage()Lcom/transsion/socket/internal/SocketStream$SocketPackage;
    .locals 2

    new-instance v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    invoke-direct {v0}, Lcom/transsion/socket/internal/SocketStream$SocketPackage;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketData;->toBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mData:[B

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result p0

    iput-byte p0, v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    iget-object p0, v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mData:[B

    array-length p0, p0

    iput p0, v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mSize:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeData(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->beforeWriteData(Ljava/io/DataOutputStream;)V

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->onWriteData(Ljava/io/DataOutputStream;)V

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->afterWriteData(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez p2, :cond_1

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v1, p0, 0x5554

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move p0, v1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
