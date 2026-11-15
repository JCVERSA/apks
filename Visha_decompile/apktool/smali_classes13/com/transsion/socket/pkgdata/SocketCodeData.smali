.class public Lcom/transsion/socket/pkgdata/SocketCodeData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/pkgdata/SocketCodeData$SocketErrorCodeData;
    }
.end annotation


# instance fields
.field public mCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    return-void
.end method


# virtual methods
.method public onClazzType()B
    .locals 0

    const/16 p0, -0x74

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/socket/pkgdata/SocketCodeData;->mCode:I

    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p0, p0, Lcom/transsion/socket/pkgdata/SocketCodeData;->mCode:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public setCode(I)Lcom/transsion/socket/pkgdata/SocketCodeData;
    .locals 0

    iput p1, p0, Lcom/transsion/socket/pkgdata/SocketCodeData;->mCode:I

    return-object p0
.end method
