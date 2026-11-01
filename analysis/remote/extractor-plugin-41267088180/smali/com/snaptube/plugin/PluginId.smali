.class public abstract enum Lcom/snaptube/plugin/PluginId;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snaptube/plugin/PluginId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snaptube/plugin/PluginId;

.field public static final enum AD_INFOMOBI:Lcom/snaptube/plugin/PluginId;

.field public static final enum FFMPEG:Lcom/snaptube/plugin/PluginId;

.field public static final LIB_UGC:Ljava/lang/String; = "NvStreamingSdkCore"

.field public static final PLUGIN_FFMPEG:Ljava/lang/String; = "ffmpeg"

.field public static final enum SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

.field public static final VERSION_PATTERN:Ljava/util/regex/Pattern;

.field public static final VERSION_PATTERN_STRING:Ljava/lang/String; = "[0-9]+\\.[0-9]+\\.[0-9]{1,10}"

.field public static final enum VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

.field public static final enum YOUTUBE_DATA_ADAPTER:Lcom/snaptube/plugin/PluginId;

.field private static sNameToIdentityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/snaptube/plugin/PluginId;",
            ">;"
        }
    .end annotation
.end field

.field private static sPluginSuccessString:Ljava/lang/String;


# instance fields
.field private volatile mCurrentVersion:Ljava/lang/String;

.field private final mHasLocalBackup:Z

.field private final mIsSupportHotSwap:Z

.field private volatile mIsSupported:Z

.field private mLoadCount:I

.field private final mName:Ljava/lang/String;

.field private final mRequiredMinVersion:Ljava/lang/String;

.field private versionsInUse:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/snaptube/plugin/PluginId$1;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v1, "VIDEO_SEARCH_ENGINE"

    const/4 v2, 0x0

    const-string v3, "video_search_engine"

    const-string v4, "1.4.54"

    const/4 v5, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/snaptube/plugin/PluginId$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/f06;)V

    sput-object v8, Lcom/snaptube/plugin/PluginId;->VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$2;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v10, "SITE_EXTRACTOR"

    const/4 v11, 0x1

    const-string v12, "site_extractor"

    const-string v13, "2.24.391"

    const/4 v14, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/snaptube/plugin/PluginId$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/g06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$3;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "FFMPEG"

    const/4 v3, 0x2

    const-string v4, "ffmpeg"

    const-string v5, "6.0.5"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/snaptube/plugin/PluginId$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/h06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$4;

    const-string v10, "YOUTUBE_DATA_ADAPTER"

    const/4 v11, 0x3

    const-string v12, "youtube-data-adapter"

    const-string v13, "1.1.87"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/snaptube/plugin/PluginId$4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/i06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->YOUTUBE_DATA_ADAPTER:Lcom/snaptube/plugin/PluginId;

    new-instance v0, Lcom/snaptube/plugin/PluginId$5;

    const-string v2, "AD_INFOMOBI"

    const/4 v3, 0x4

    const-string v4, "ad_infomobi"

    const-string v5, "1.0.103"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/snaptube/plugin/PluginId$5;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/j06;)V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->AD_INFOMOBI:Lcom/snaptube/plugin/PluginId;

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->a()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    sput-object v0, Lcom/snaptube/plugin/PluginId;->$VALUES:[Lcom/snaptube/plugin/PluginId;

    const-string v0, "[0-9]+\\.[0-9]+\\.[0-9]{1,10}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snaptube/plugin/PluginId;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, ""

    sput-object v0, Lcom/snaptube/plugin/PluginId;->sPluginSuccessString:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snaptube/plugin/PluginId;->sNameToIdentityMap:Ljava/util/Map;

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/snaptube/plugin/PluginId;->sNameToIdentityMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/snaptube/plugin/PluginId;->mLoadCount:I

    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/snaptube/plugin/PluginId;->versionsInUse:Ljava/util/Set;

    iput-object p3, p0, Lcom/snaptube/plugin/PluginId;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/snaptube/plugin/PluginId;->mRequiredMinVersion:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/snaptube/plugin/PluginId;->mIsSupportHotSwap:Z

    iput-boolean p6, p0, Lcom/snaptube/plugin/PluginId;->mHasLocalBackup:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLo/k06;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/snaptube/plugin/PluginId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic a()[Lcom/snaptube/plugin/PluginId;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snaptube/plugin/PluginId;

    sget-object v1, Lcom/snaptube/plugin/PluginId;->VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/plugin/PluginId;->YOUTUBE_DATA_ADAPTER:Lcom/snaptube/plugin/PluginId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/plugin/PluginId;->AD_INFOMOBI:Lcom/snaptube/plugin/PluginId;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static asyncLoadAll()V
    .locals 5

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/snaptube/plugin/PluginId;->tryLoadNewestVersion(Lcom/snaptube/plugin/PluginInstallationStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static attachPluginInfo(Lo/ah3;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->hasLocalBackup()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->getRequiredMinVersion()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "-"

    const-string v7, "_"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "arg4"

    invoke-static {}, Lo/c16;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    return-void
.end method

.method public static b(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lo/az7;->h()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lo/l38;->y(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/c16;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|apkExists:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/c16;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|libs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "none"

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lo/l38;->y(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p1

    new-instance v1, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v2, "AppError"

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "load_plugin"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "plugin"

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v1, "error"

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v0, "stack"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/snaptube/plugin/PluginId;->sNameToIdentityMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snaptube/plugin/PluginId;

    return-object p0
.end method

.method public static getPluginCurrentVersionMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/snaptube/plugin/PluginId;->getCurrentVersionWithBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getPluginCurrentVersions()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    array-length v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/snaptube/plugin/PluginId;->getCurrentVersionWithBackup()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;
    .locals 1

    const-class v0, Lcom/snaptube/plugin/PluginId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snaptube/plugin/PluginId;

    return-object p0
.end method

.method public static values()[Lcom/snaptube/plugin/PluginId;
    .locals 1

    sget-object v0, Lcom/snaptube/plugin/PluginId;->$VALUES:[Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0}, [Lcom/snaptube/plugin/PluginId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snaptube/plugin/PluginId;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/snaptube/plugin/PluginInstallationStatus;)V
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->isSupportHotSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lo/c16;->o(Lcom/snaptube/plugin/PluginId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "try load version is empty"

    invoke-virtual {p1, v0}, Lcom/snaptube/plugin/PluginInstallationStatus;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/PluginId;->load(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load plugin e = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PluginId"

    invoke-static {v3, v1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try load error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snaptube/plugin/PluginInstallationStatus;->d(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lo/c16;->B(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snaptube/plugin/PluginId;->sPluginSuccessString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/plugin/PluginId;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/plugin/PluginId;->mRequiredMinVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/plugin/PluginId;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/PluginId;->sPluginSuccessString:Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/plugin/PluginId;->mCurrentVersion:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snaptube/plugin/PluginId;->mIsSupported:Z

    iget-object v1, p0, Lcom/snaptube/plugin/PluginId;->versionsInUse:Ljava/util/Set;

    iget-object v2, p0, Lcom/snaptube/plugin/PluginId;->mCurrentVersion:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/snaptube/plugin/PluginId;->versionsInUse:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lo/c16;->d(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Ljava/util/Set;)V

    if-eqz p1, :cond_4

    const-string v0, "plugin load success"

    invoke-virtual {p1, v0}, Lcom/snaptube/plugin/PluginInstallationStatus;->d(Ljava/lang/String;)V

    :cond_4
    const-string p1, "plugin_install"

    sget-object v0, Lcom/snaptube/plugin/PluginId;->sPluginSuccessString:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/u81;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {p0, v0, v2}, Lcom/snaptube/plugin/PluginId;->b(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ffmpeg"

    invoke-static {v1, v0, v2}, Lo/c16;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try load fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " name:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " libPath:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exists:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isFile:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snaptube/plugin/PluginInstallationStatus;->d(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/plugin/PluginId;->mCurrentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVersionWithBackup()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->hasLocalBackup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getRequiredMinVersion()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/plugin/PluginId;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredMinVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/plugin/PluginId;->mRequiredMinVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocalBackup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/plugin/PluginId;->mHasLocalBackup:Z

    return v0
.end method

.method public isSupportHotSwap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/plugin/PluginId;->mIsSupportHotSwap:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/plugin/PluginId;->mIsSupported:Z

    return v0
.end method

.method public abstract load(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract shouldDownload()Z
.end method

.method public toPluginQuery()Lcom/wandoujia/em/common/proto/plugin/PluginQuery;
    .locals 2

    new-instance v0, Lcom/wandoujia/em/common/proto/plugin/PluginQuery;

    invoke-direct {v0}, Lcom/wandoujia/em/common/proto/plugin/PluginQuery;-><init>()V

    iget-object v1, p0, Lcom/snaptube/plugin/PluginId;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/em/common/proto/plugin/PluginQuery;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/plugin/PluginId;->mRequiredMinVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/em/common/proto/plugin/PluginQuery;->setVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized tryFirstLoad()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snaptube/plugin/PluginId;->mLoadCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/PluginId;->tryLoadNewestVersion(Lcom/snaptube/plugin/PluginInstallationStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized tryLoadNewestVersion(Lcom/snaptube/plugin/PluginInstallationStatus;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/PluginId;->c(Lcom/snaptube/plugin/PluginInstallationStatus;)V

    iget p1, p0, Lcom/snaptube/plugin/PluginId;->mLoadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/snaptube/plugin/PluginId;->mLoadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
