.class public Lcom/hunantv/media/config/NetPlayConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v3"

    return-object v0
.end method

.method public static getCputy()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/hunantv/media/report/c/h;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->safeToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->removeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "err"

    return-object v0
.end method

.method public static getMod()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/hunantv/media/report/c/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->removeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "err"

    return-object v0
.end method

.method public static getOmxcn()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH265Decoder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->removeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "err"

    return-object v0
.end method
