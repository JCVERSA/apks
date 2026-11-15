.class public Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;
.super Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
.source "SourceFile"


# instance fields
.field private final mHeaderType:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;-><init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V

    iput-object p1, p0, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;->mHeaderType:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-void
.end method


# virtual methods
.method public getHeaderType()Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;->mHeaderType:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
