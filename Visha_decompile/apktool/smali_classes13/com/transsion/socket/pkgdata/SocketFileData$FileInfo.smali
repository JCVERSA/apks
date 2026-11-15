.class public Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/socket/pkgdata/SocketFileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field public mFileCount:I

.field public mTransferLength:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    return-void
.end method


# virtual methods
.method public addFileCount()V
    .locals 1

    iget v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    return-void
.end method

.method public setFileCount(I)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;
    .locals 0

    iput p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mFileCount:I

    return-object p0
.end method

.method public setLength(J)Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    return-object p0
.end method
