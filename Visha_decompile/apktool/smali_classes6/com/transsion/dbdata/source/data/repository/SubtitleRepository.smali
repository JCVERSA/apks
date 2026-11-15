.class public final Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;
.super Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 ?2\u00020\u0001:\u0001?B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\r\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ+\u0010\u000e\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0013\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001b\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010%\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u0008\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010)\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u0005\u00a2\u0006\u0004\u0008)\u0010*J#\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001b2\u0006\u0010\'\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u0017\u00a2\u0006\u0004\u0008,\u0010-R#\u00104\u001a\n /*\u0004\u0018\u00010.0.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R#\u00109\u001a\n /*\u0004\u0018\u000105058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00101\u001a\u0004\u00087\u00108R#\u0010>\u001a\n /*\u0004\u0018\u00010:0:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u00101\u001a\u0004\u0008<\u0010=\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;",
        "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
        "list",
        "",
        "",
        "pathSet",
        "Lzfb;",
        "queryDownloadedSubtitles",
        "(Ljava/util/List;Ljava/util/Set;)V",
        "querySystemNormalSubtitles",
        "querySystemSpecialSubtitles",
        "filePath",
        "getFilePathWithoutExtension",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/net/Uri;",
        "providerUri",
        "()Landroid/net/Uri;",
        "Lcom/transsion/dbdata/beans/SubtitleHistory;",
        "record",
        "",
        "insertDownloadRecord",
        "(Lcom/transsion/dbdata/beans/SubtitleHistory;)I",
        "deleteDownloadRecord",
        "",
        "querySystemSubtitles",
        "()Ljava/util/List;",
        "Lcom/transsion/dbdata/beans/SubtitleSettingData;",
        "querySubtitleSetting",
        "()Lcom/transsion/dbdata/beans/SubtitleSettingData;",
        "subtitleSetting",
        "insertSubtitleSetting",
        "(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I",
        "subtitlePath",
        "deleteSubtitleUsageRecord",
        "(Ljava/lang/String;)I",
        "mediaId",
        "subtitle",
        "insertSubtitleUsageRecord",
        "(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I",
        "track",
        "querySubtitleUsageRecordList",
        "(II)Ljava/util/List;",
        "Lw4a;",
        "kotlin.jvm.PlatformType",
        "mSubtitleDownloadHistoryDao$delegate",
        "Lyi5;",
        "getMSubtitleDownloadHistoryDao",
        "()Lw4a;",
        "mSubtitleDownloadHistoryDao",
        "Lh6a;",
        "mSubtitleSettingDao$delegate",
        "getMSubtitleSettingDao",
        "()Lh6a;",
        "mSubtitleSettingDao",
        "Lm5a;",
        "mSubtitleRecordDao$delegate",
        "getMSubtitleRecordDao",
        "()Lm5a;",
        "mSubtitleRecordDao",
        "Companion",
        "dbdata_release"
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

.field private static final INDEX_DATA:I = 0x3

.field private static final INDEX_DATE_MODIFIED:I = 0x2

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_SIZE:I = 0x4

.field private static final INDEX_TITLE:I = 0x1

.field private static final PROJECTION_SUBTITLE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SubtitleRepository"

.field private static final supportedExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSubtitleDownloadHistoryDao$delegate:Lyi5;

.field private final mSubtitleRecordDao$delegate:Lyi5;

.field private final mSubtitleSettingDao$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    const-string v0, ".idx"

    const-string v1, ".sub"

    const-string v2, ".srt"

    const-string v3, ".txt"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->supportedExtensions:Ljava/util/List;

    const-string v0, "_data"

    const-string v1, "_size"

    const-string v2, "_id"

    const-string v3, "title"

    const-string v4, "date_modified"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->PROJECTION_SUBTITLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;-><init>()V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lr5a;

    invoke-direct {v1}, Lr5a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleDownloadHistoryDao$delegate:Lyi5;

    new-instance v1, Ls5a;

    invoke-direct {v1}, Ls5a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleSettingDao$delegate:Lyi5;

    new-instance v1, Lt5a;

    invoke-direct {v1}, Lt5a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleRecordDao$delegate:Lyi5;

    return-void
.end method

.method public static final synthetic access$getPROJECTION_SUBTITLE$cp()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->PROJECTION_SUBTITLE:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSupportedExtensions$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->supportedExtensions:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c()Lw4a;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleDownloadHistoryDao_delegate$lambda$0()Lw4a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lm5a;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleRecordDao_delegate$lambda$2()Lm5a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lh6a;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleSettingDao_delegate$lambda$1()Lh6a;

    move-result-object v0

    return-object v0
.end method

.method private final getFilePathWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "."

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "."

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private final getMSubtitleDownloadHistoryDao()Lw4a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleDownloadHistoryDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw4a;

    return-object p0
.end method

.method private final getMSubtitleRecordDao()Lm5a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleRecordDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm5a;

    return-object p0
.end method

.method private final getMSubtitleSettingDao()Lh6a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->mSubtitleSettingDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6a;

    return-object p0
.end method

.method private static final mSubtitleDownloadHistoryDao_delegate$lambda$0()Lw4a;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i()Lw4a;

    move-result-object v0

    return-object v0
.end method

.method private static final mSubtitleRecordDao_delegate$lambda$2()Lm5a;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->b()Lm5a;

    move-result-object v0

    return-object v0
.end method

.method private static final mSubtitleSettingDao_delegate$lambda$1()Lh6a;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->c()Lh6a;

    move-result-object v0

    return-object v0
.end method

.method private final queryDownloadedSubtitles(Ljava/util/List;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleDownloadHistoryDao()Lw4a;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result v0

    invoke-interface {p0, v0}, Lw4a;->queryAllDownLoadSubtitle(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/SubtitleHistory;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iput-object v1, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget-wide v3, v0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subSize:J

    iput-wide v3, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->size:J

    invoke-static {v1}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "query downloaded subtitles failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SubtitleRepository"

    invoke-static {p1, p0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final querySystemNormalSubtitles(Ljava/util/List;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->access$buildQuerySubtitleBundle(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryBatchNoResult(uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") start"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v4

    if-le v0, v4, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") start query"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v9, p0

    :try_start_1
    invoke-static {v9, v0, v2, v7, v4}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    move-object v11, v10

    check-cast v11, Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ") end query,count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :try_start_4
    invoke-static {v11, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_5

    move-object/from16 v13, p2

    :try_start_5
    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    invoke-static {v14, v11, v0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->access$buildSubtitleInfo(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Landroid/database/Cursor;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v14, p1

    :try_start_6
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_2
    move-object v6, v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_4

    :cond_4
    move-object/from16 v14, p1

    const/4 v0, 0x0

    :goto_3
    if-ne v0, v1, :cond_6

    move v0, v1

    goto :goto_6

    :cond_5
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    :goto_4
    :try_start_7
    const-string v15, "SubtitleRepository"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v1, "Process normal subtitle results failed: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    add-int/2addr v8, v1

    :cond_7
    :try_start_9
    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v8, v0, :cond_3

    goto :goto_7

    :catchall_3
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    :goto_7
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v0, 0x0

    :try_start_a
    invoke-static {v10, v0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object v6, v0

    const/4 v12, 0x0

    :goto_8
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v11, v0

    :try_start_c
    invoke-static {v10, v6}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_4
    move-exception v0

    :goto_9
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    :goto_a
    const/4 v12, 0x0

    goto :goto_b

    :cond_9
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") cursor is null"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    const/4 v12, 0x0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_9

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    add-int/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") ,count:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", totalNumber:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pageSize:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v12, v4, :cond_a

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v8, v0, :cond_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final querySystemSpecialSubtitles(Ljava/util/List;Ljava/util/Set;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v3, "SubtitleRepository"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->access$buildQuerySpecialSubtitleBundle(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryBatchNoResult(uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") start"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v8

    if-le v0, v8, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ") start query"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0, v6, v11, v8}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object v14, v13

    check-cast v14, Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") end query,count:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    :try_start_3
    invoke-static {v14, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v10, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    invoke-static {v10, v14, v0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->access$buildSubtitleInfo(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Landroid/database/Cursor;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object v10

    const-string v2, ".sub"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v14

    const/4 v14, 0x2

    move/from16 v17, v15

    const/4 v1, 0x0

    const/4 v15, 0x0

    :try_start_4
    invoke-static {v0, v2, v15, v14, v1}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    const/4 v1, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_5
    move-object v2, v0

    const/4 v1, 0x1

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_2
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_6
    if-ne v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_9

    :catchall_1
    move-exception v0

    move/from16 v17, v15

    const/4 v15, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v14

    move/from16 v17, v15

    const/4 v15, 0x0

    goto :goto_7

    :cond_3
    move-object/from16 v16, v14

    move/from16 v17, v15

    const/4 v15, 0x0

    goto :goto_8

    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process special subtitle results failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    :goto_8
    move v1, v15

    :goto_9
    if-eqz v1, :cond_5

    const/4 v1, 0x1

    add-int/2addr v12, v1

    goto :goto_a

    :cond_5
    const/4 v1, 0x1

    :goto_a
    :try_start_6
    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v12, v0, :cond_6

    goto :goto_c

    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v14, v16

    move/from16 v15, v17

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_b
    move-object v2, v0

    goto :goto_e

    :catchall_3
    move-exception v0

    const/4 v1, 0x1

    goto :goto_b

    :cond_7
    move/from16 v17, v15

    const/4 v1, 0x1

    const/4 v15, 0x0

    :goto_c
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v2, 0x0

    :try_start_7
    invoke-static {v13, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_d
    move/from16 v0, v17

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    move/from16 v17, v15

    const/4 v1, 0x1

    const/4 v15, 0x0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/4 v1, 0x1

    const/4 v15, 0x0

    move-object v2, v0

    move/from16 v17, v15

    :goto_e
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v10, v0

    :try_start_9
    invoke-static {v13, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_3
    move-exception v0

    const/4 v1, 0x1

    const/4 v15, 0x0

    :goto_f
    move/from16 v17, v15

    goto :goto_10

    :cond_8
    const/4 v1, 0x1

    const/4 v15, 0x0

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") cursor is null"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move v0, v15

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_f

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") error:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :goto_11
    add-int/2addr v11, v8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") ,count:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", totalNumber:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", pageSize:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v8, :cond_a

    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v12, v0, :cond_9

    goto :goto_12

    :cond_9
    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_a
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") end"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    move-object/from16 v6, p0

    invoke-direct {v6, v5}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getFilePathWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_c
    move-object/from16 v6, p0

    invoke-static {v0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v8, v7, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-direct {v6, v8}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getFilePathWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v1

    goto :goto_15

    :cond_e
    move v8, v15

    :goto_15
    if-nez v8, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "querySpecialSystemSubtitles notExistSubFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v8, :cond_d

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_12

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_11
    move-object/from16 v2, p1

    goto :goto_16

    :cond_12
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_16

    :cond_13
    return-void
.end method


# virtual methods
.method public final deleteDownloadRecord(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 2

    const-string v0, "record"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleDownloadHistoryDao()Lw4a;

    move-result-object p0

    invoke-interface {p0, p1}, Lw4a;->deleteSubtitleHistory(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "SubtitleRepository"

    const-string v1, "deleteDownloadRecord error ::: "

    invoke-static {v0, v1, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final deleteSubtitleUsageRecord(Ljava/lang/String;)I
    .locals 1

    const-string v0, "subtitlePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object p0

    invoke-interface {p0, p1}, Lm5a;->deleteSubtitleRecordByPath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final insertDownloadRecord(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 2

    const-string v0, "record"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleDownloadHistoryDao()Lw4a;

    move-result-object p0

    invoke-interface {p0, p1}, Lw4a;->insertSubtitleHistory(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "SubtitleRepository"

    const-string v1, "insertDownloadRecord error ::: "

    invoke-static {v0, v1, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I
    .locals 1

    const-string v0, "subtitleSetting"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleSettingDao()Lh6a;

    move-result-object p0

    invoke-interface {p0, p1}, Lh6a;->insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final insertSubtitleUsageRecord(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 5

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    const/4 v1, -0x1

    const-string v2, "SubtitleRepository"

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "insertSubtitle SubtitleTrackInfo sud is null"

    invoke-static {v2, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    :try_start_0
    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object v0

    iget v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    invoke-interface {v0, p1, v3}, Lm5a;->queryInnerSubtitleByMediaAndTrack(II)Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object v0

    iget v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iget-object v4, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-interface {v0, p1, v3, v4}, Lm5a;->querySubtitleByMediaAndTrackAndPath(IILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert Subtitle oldSubtitleRecord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    invoke-static {v2, p2, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->access$toSubtitleRecord(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    move-result-object p1

    if-nez v0, :cond_3

    const/4 p2, 0x0

    iput p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object p0

    invoke-interface {p0, p1}, Lm5a;->insertSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)J

    goto :goto_1

    :cond_3
    iget v0, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    iget p2, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    iput p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object p0

    invoke-interface {p0, p1}, Lm5a;->updateSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    :catch_0
    return v1
.end method

.method public providerUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lqq3;->b:Lqq3;

    invoke-virtual {p0}, Lqq3;->f()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final querySubtitleSetting()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleSettingDao()Lh6a;

    move-result-object p0

    invoke-interface {p0}, Lh6a;->queryNewestSubtitleSetting()Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p0

    return-object p0
.end method

.method public final querySubtitleUsageRecordList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lm5a;->getAllDataByMediaIdAndTrack(II)Ljava/util/List;

    move-result-object p2

    const-string v0, "getAllDataByMediaIdAndTrack(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    sget-object v2, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->access$toSubtitleTrackInfo(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Lcom/transsion/dbdata/beans/media/SubtitleRecord;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->getMSubtitleRecordDao()Lm5a;

    move-result-object v3

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    invoke-interface {v3, p1, v1}, Lm5a;->deleteSubtitleRecordByMediaIdAndPath(ILjava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method public final querySystemSubtitles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SubtitleRepository"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->queryDownloadedSubtitles(Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {p0, v1, v2}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->querySystemNormalSubtitles(Ljava/util/List;Ljava/util/Set;)V

    invoke-static {}, Lpp3;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->querySystemSpecialSubtitles(Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query system subtitles total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lq5a;->l(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query system subtitles failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method
