.class public final Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;",
        "",
        "<init>",
        "()V",
        "vishaGiveawayFlag",
        "",
        "getVishaGiveawayFlag",
        "()Z",
        "setVishaGiveawayFlag",
        "(Z)V",
        "ktCloudEnterFlag",
        "getKtCloudEnterFlag",
        "setKtCloudEnterFlag",
        "mediaLibraryDataFlag",
        "getMediaLibraryDataFlag",
        "setMediaLibraryDataFlag",
        "Companion",
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


# static fields
.field private static final CACHE_KT_CLOUD_ENTERFLAG:Ljava/lang/String;

.field private static final CACHE_MEDIALIBRARY_DATAFLAG:Ljava/lang/String;

.field private static final CACHE_VISHA_GIVEAWAYFLAG:Ljava/lang/String;

.field public static final Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

.field private static instance:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;


# instance fields
.field private ktCloudEnterFlag:Z

.field private mediaLibraryDataFlag:Z

.field private vishaGiveawayFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    const-string v0, "cache_visha_giveawayFlag"

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->CACHE_VISHA_GIVEAWAYFLAG:Ljava/lang/String;

    const-string v0, "cache_mediaLibrary_dataFlag"

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->CACHE_MEDIALIBRARY_DATAFLAG:Ljava/lang/String;

    const-string v0, "cache_kt_cloud_enterFlag"

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->CACHE_KT_CLOUD_ENTERFLAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCACHE_KT_CLOUD_ENTERFLAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->CACHE_KT_CLOUD_ENTERFLAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCACHE_MEDIALIBRARY_DATAFLAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->CACHE_MEDIALIBRARY_DATAFLAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCACHE_VISHA_GIVEAWAYFLAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->CACHE_VISHA_GIVEAWAYFLAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->instance:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->instance:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    return-void
.end method

.method public static final getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method public static final isSupportFreeSpaceGift()Z
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->isSupportFreeSpaceGift()Z

    move-result v0

    return v0
.end method

.method public static final isSupportMIMediaLibrary()Z
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->isSupportMIMediaLibrary()Z

    move-result v0

    return v0
.end method

.method public static final isSupportVishaCloudFeatures()Z
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->isSupportVishaCloudFeatures()Z

    move-result v0

    return v0
.end method

.method public static final loadFeaturesConfig()V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->loadFeaturesConfig()V

    return-void
.end method

.method public static final saveKtCloudEnterFlag(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->saveKtCloudEnterFlag(Z)V

    return-void
.end method

.method public static final saveMediaLibraryDataFlag(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->saveMediaLibraryDataFlag(Z)V

    return-void
.end method

.method public static final saveVishaGiveawayFlag(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->saveVishaGiveawayFlag(Z)V

    return-void
.end method


# virtual methods
.method public final getKtCloudEnterFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->ktCloudEnterFlag:Z

    return p0
.end method

.method public final getMediaLibraryDataFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->mediaLibraryDataFlag:Z

    return p0
.end method

.method public final getVishaGiveawayFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->vishaGiveawayFlag:Z

    return p0
.end method

.method public final setKtCloudEnterFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->ktCloudEnterFlag:Z

    return-void
.end method

.method public final setMediaLibraryDataFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->mediaLibraryDataFlag:Z

    return-void
.end method

.method public final setVishaGiveawayFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->vishaGiveawayFlag:Z

    return-void
.end method
