.class public final Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataEntity"
.end annotation


# instance fields
.field public clipId:Ljava/lang/String;

.field public cornerLabelStyle:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$CornerLabelStyleEntity;

.field public desc:Ljava/lang/String;

.field public downloadUrl:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;

.field public image:Ljava/lang/String;

.field public isVip:I

.field public name:Ljava/lang/String;

.field public plId:Ljava/lang/String;

.field public playPriority:Ljava/lang/String;

.field public seriesId:Ljava/lang/String;

.field public status:I

.field public type:I

.field public user:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;

.field public videoId:Ljava/lang/String;

.field public videoIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
