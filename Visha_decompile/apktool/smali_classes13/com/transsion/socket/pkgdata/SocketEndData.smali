.class public Lcom/transsion/socket/pkgdata/SocketEndData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# static fields
.field public static final FLAG_FINISH:I = 0x2

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SYNC:I = 0x1


# instance fields
.field public mFlag:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    return-void
.end method


# virtual methods
.method public onClazzType()B
    .locals 0

    const/16 p0, -0x80

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte p0, p0, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public setFlag(B)Lcom/transsion/socket/pkgdata/SocketEndData;
    .locals 0

    iput-byte p1, p0, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/transsion/socket/pkgdata/SocketData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SocketEndData mFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
