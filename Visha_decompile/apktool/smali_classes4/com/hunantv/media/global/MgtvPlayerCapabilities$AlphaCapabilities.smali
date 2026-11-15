.class public Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/global/MgtvPlayerCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaCapabilities"
.end annotation


# instance fields
.field private h264MaxSize:Lcom/hunantv/media/player/utils/Size;

.field private h265MaxSize:Lcom/hunantv/media/player/utils/Size;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->h264:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;

    iget-object v0, v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    iget-object v0, v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;->max_def:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/Size;->parseSize(Ljava/lang/String;)Lcom/hunantv/media/player/utils/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;->h264MaxSize:Lcom/hunantv/media/player/utils/Size;

    iget-object p1, p1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->h265:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;

    iget-object p1, p1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    iget-object p1, p1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;->max_def:Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/media/player/utils/Size;->parseSize(Ljava/lang/String;)Lcom/hunantv/media/player/utils/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;->h265MaxSize:Lcom/hunantv/media/player/utils/Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getH264MaxSize()Lcom/hunantv/media/player/utils/Size;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;->h264MaxSize:Lcom/hunantv/media/player/utils/Size;

    return-object p0
.end method

.method public getH265MaxSize()Lcom/hunantv/media/player/utils/Size;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;->h265MaxSize:Lcom/hunantv/media/player/utils/Size;

    return-object p0
.end method
