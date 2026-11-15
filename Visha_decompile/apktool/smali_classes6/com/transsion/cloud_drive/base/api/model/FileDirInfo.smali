.class public final Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;",
        "",
        "dirCount",
        "",
        "fileCount",
        "(II)V",
        "getDirCount",
        "()I",
        "getFileCount",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dirCount:I

.field private final fileCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation runtime Lv95;
            name = "dir_count"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lv95;
            name = "file_count"
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;->dirCount:I

    .line 4
    iput p2, p0, Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;->fileCount:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getDirCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;->dirCount:I

    return p0
.end method

.method public final getFileCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;->fileCount:I

    return p0
.end method
