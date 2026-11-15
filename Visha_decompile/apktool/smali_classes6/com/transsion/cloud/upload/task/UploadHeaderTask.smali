.class public Lcom/transsion/cloud/upload/task/UploadHeaderTask;
.super Lcom/transsion/cloud/upload/task/NewUploadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
    }
.end annotation


# instance fields
.field private final mHeaderType:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;-><init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/UploadHeaderTask;->mHeaderType:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-void
.end method


# virtual methods
.method public getHeaderType()Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/UploadHeaderTask;->mHeaderType:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
