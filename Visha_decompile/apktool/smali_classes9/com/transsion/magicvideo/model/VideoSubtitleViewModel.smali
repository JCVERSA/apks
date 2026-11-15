.class public Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;
.super Lcom/transsion/BaseViewModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSubtitleViewModel"


# instance fields
.field public deleteSubtitleHistory:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;"
        }
    .end annotation
.end field

.field public firstCurData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private firstTrackData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public isAutoSearch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public secondCurData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private secondTrackData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field public selectLanguage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private settingLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/transsion/dbdata/beans/SubtitleSettingData;",
            ">;"
        }
    .end annotation
.end field

.field public subtitleHistoryLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field public subtitleHistoryLiveLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field public subtitleListNet:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;",
            ">;>;"
        }
    .end annotation
.end field

.field private systemSubtitlesLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/transsion/BaseViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->settingLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstTrackData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondTrackData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->deleteSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectLanguage:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isAutoSearch:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->systemSubtitlesLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleListNet:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object p1

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v2, Lrl8$b;

    invoke-direct {v2}, Lrl8$b;-><init>()V

    const-class v3, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {v2, v3}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleHistoryLiveLiveData:Landroidx/lifecycle/LiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$querySystemSubtitles$10(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$queryTrackSubtitle$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(IILcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$queryTrackSubtitle$2(IILcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$querySystemSubtitles$8(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$querySettingData$0(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$filterTrackSubtitles$6(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z

    move-result p0

    return p0
.end method

.method private filterTrackSubtitles(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lw7c;

    invoke-direct {p1}, Lw7c;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;ILjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$queryTrackSubtitle$3(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$queryTrackCurrentSubtitles$7(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$querySettingData$1(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$querySystemSubtitles$9(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->lambda$queryTrackSubtitle$4(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$filterTrackSubtitles$6(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v0, "NULL"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$querySettingData$0(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0}, Ltpb;->c()Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>(I)V

    :cond_0
    return-object p0
.end method

.method private synthetic lambda$querySettingData$1(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->settingLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$querySystemSubtitles$10(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "querySystemSubtitles"

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$querySystemSubtitles$8(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0}, Ltpb;->s()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$querySystemSubtitles$9(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->systemSubtitlesLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$queryTrackCurrentSubtitles$7(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 6

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    sub-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic lambda$queryTrackSubtitle$2(IILcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ltpb;->M(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queryTrackSubtitle$3(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstTrackData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->filterTrackSubtitles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondTrackData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->filterTrackSubtitles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->queryTrackCurrentSubtitles(ILjava/util/List;)V

    return-object p2
.end method

.method private static synthetic lambda$queryTrackSubtitle$4(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static synthetic lambda$queryTrackSubtitle$5(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "..."

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private queryTrackCurrentSubtitles(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lv7c;

    invoke-direct {v1}, Lv7c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "VideoSubtitleViewModel"

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackInfo1 ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackInfo2 ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getFirstTrackData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstTrackData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getSecondTrackData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondTrackData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getSettingLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/transsion/dbdata/beans/SubtitleSettingData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->settingLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getSystemSubtitlesLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->systemSubtitlesLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public insertSettingDataSync(Lcom/transsion/dbdata/beans/SubtitleSettingData;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltpb;->insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I

    return-void
.end method

.method public query(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;

    invoke-interface {v0, p2, p3}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;->query(Ljava/lang/String;Ljava/lang/String;)Lmc7;

    move-result-object p2

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {p2}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {p2}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {p1, p2}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;-><init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public querySettingData(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lo7c;

    invoke-direct {v0}, Lo7c;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lq7c;

    invoke-direct {v0, p0}, Lq7c;-><init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public querySystemSubtitles(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lx7c;

    invoke-direct {v0}, Lx7c;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Ly7c;

    invoke-direct {v0, p0}, Ly7c;-><init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)V

    new-instance p0, Lp7c;

    invoke-direct {p0}, Lp7c;-><init>()V

    invoke-virtual {p1, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public queryTrackSubtitle(IILcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p3}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p3

    new-instance v0, Lr7c;

    invoke-direct {v0, p1, p2}, Lr7c;-><init>(II)V

    invoke-virtual {p3, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    new-instance p3, Ls7c;

    invoke-direct {p3, p0, p2}, Ls7c;-><init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;I)V

    invoke-virtual {p1, p3}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lt7c;

    invoke-direct {p1}, Lt7c;-><init>()V

    new-instance p2, Lu7c;

    invoke-direct {p2}, Lu7c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public queryVideoSubtitles(ILcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->queryTrackSubtitle(IILcom/transsion/playercommon/activities/BaseActivity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->queryTrackSubtitle(IILcom/transsion/playercommon/activities/BaseActivity;)V

    return-void
.end method
