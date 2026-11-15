.class public Lcom/hunantv/media/drm/MgtvDrmParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;
    }
.end annotation


# static fields
.field private static drmType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrmType()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsDrmStrategy;->isCbcsSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    sput v0, Lcom/hunantv/media/drm/MgtvDrmParams;->drmType:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->isCencSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isDrmProxyEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    sput v1, Lcom/hunantv/media/drm/MgtvDrmParams;->drmType:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/hunantv/media/drm/MgtvDrmParams;->drmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
