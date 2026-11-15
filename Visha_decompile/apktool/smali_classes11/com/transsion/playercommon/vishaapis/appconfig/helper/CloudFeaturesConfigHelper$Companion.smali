.class public final Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u0012\u0004\u0008\u0015\u0010\u0003R\u001a\u0010\u0017\u001a\u00020\u00168\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u00168\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0018\u001a\u0004\u0008\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\u00168\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;",
        "getInstance",
        "()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;",
        "Lzfb;",
        "loadFeaturesConfig",
        "",
        "enable",
        "saveVishaGiveawayFlag",
        "(Z)V",
        "saveMediaLibraryDataFlag",
        "saveKtCloudEnterFlag",
        "isSupportFreeSpaceGift",
        "()Z",
        "isSupportVishaCloudFeatures",
        "isSupportMIMediaLibrary",
        "instance",
        "Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;",
        "getInstance$annotations",
        "",
        "CACHE_VISHA_GIVEAWAYFLAG",
        "Ljava/lang/String;",
        "getCACHE_VISHA_GIVEAWAYFLAG",
        "()Ljava/lang/String;",
        "CACHE_MEDIALIBRARY_DATAFLAG",
        "getCACHE_MEDIALIBRARY_DATAFLAG",
        "CACHE_KT_CLOUD_ENTERFLAG",
        "getCACHE_KT_CLOUD_ENTERFLAG",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getInstance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCACHE_KT_CLOUD_ENTERFLAG()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$getCACHE_KT_CLOUD_ENTERFLAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCACHE_MEDIALIBRARY_DATAFLAG()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$getCACHE_MEDIALIBRARY_DATAFLAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCACHE_VISHA_GIVEAWAYFLAG()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$getCACHE_VISHA_GIVEAWAYFLAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$getInstance$cp()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object p0

    if-nez p0, :cond_1

    const-class p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$getInstance$cp()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;-><init>()V

    invoke-static {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$setInstance$cp(Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->access$getInstance$cp()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final isSupportFreeSpaceGift()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->getVishaGiveawayFlag()Z

    move-result p0

    return p0
.end method

.method public final isSupportMIMediaLibrary()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->getMediaLibraryDataFlag()Z

    move-result p0

    return p0
.end method

.method public final isSupportVishaCloudFeatures()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->getKtCloudEnterFlag()Z

    move-result p0

    return p0
.end method

.method public final loadFeaturesConfig()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getCACHE_VISHA_GIVEAWAYFLAG()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lydc;->e()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->setVishaGiveawayFlag(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getCACHE_MEDIALIBRARY_DATAFLAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result v1

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->setMediaLibraryDataFlag(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getCACHE_KT_CLOUD_ENTERFLAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->setKtCloudEnterFlag(Z)V

    return-void
.end method

.method public final saveKtCloudEnterFlag(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getCACHE_KT_CLOUD_ENTERFLAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final saveMediaLibraryDataFlag(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getCACHE_MEDIALIBRARY_DATAFLAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final saveVishaGiveawayFlag(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getCACHE_VISHA_GIVEAWAYFLAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method
