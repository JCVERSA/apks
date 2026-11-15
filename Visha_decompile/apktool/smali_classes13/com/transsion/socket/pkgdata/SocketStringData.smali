.class public Lcom/transsion/socket/pkgdata/SocketStringData;
.super Lcom/transsion/socket/pkgdata/SocketData;
.source "SourceFile"


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketData;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public onClazzType()B
    .locals 0

    const/16 p0, -0x75

    return p0
.end method

.method public onReadData(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketData;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

    return-void
.end method

.method public onWriteData(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/pkgdata/SocketData;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketStringData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

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

    const-string v1, " mValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/socket/pkgdata/SocketStringData;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
