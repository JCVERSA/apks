.class public Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
.super Lcom/mgtv/ssp/play/bean/SubTitleData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleData"
.end annotation


# instance fields
.field public fileHash:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/play/bean/SubTitleData;-><init>()V

    return-void
.end method
