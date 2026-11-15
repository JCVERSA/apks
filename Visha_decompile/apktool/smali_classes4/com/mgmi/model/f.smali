.class public Lcom/mgmi/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x71517463aa9b41a0L


# instance fields
.field private detailText:Ljava/lang/CharSequence;

.field public downloadUrl:Ljava/lang/String;

.field private mIsDownloading:I

.field private progress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/mgmi/model/f;->mIsDownloading:I

    return-void
.end method


# virtual methods
.method public getDetailText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/f;->detailText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/f;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIsDownloading()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/f;->mIsDownloading:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/f;->progress:I

    return p0
.end method

.method public setDetailText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/f;->detailText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/f;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsDownloading(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/f;->mIsDownloading:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/f;->progress:I

    return-void
.end method
