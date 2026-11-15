.class public Lcom/transsion/playercommon/videomodel/SmartEditViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/videomodel/SmartEditViewModel;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->i(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/videomodel/SmartEditViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel$a;-><init>(Lcom/transsion/playercommon/videomodel/SmartEditViewModel;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method

.method public final d(Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;->getResults()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-object v2, p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/audioedit/Result;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/audioedit/Result;->getScore()D

    move-result-wide v4

    cmpl-double v4, v4, v0

    if-lez v4, :cond_1

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/audioedit/Result;->getScore()D

    move-result-wide v0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/audioedit/Result;->getRecordings()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/audioedit/Result;->getRecordings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/audioedit/Recording;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/audioedit/Recording;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/audioedit/Recording;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/audioedit/Recording;->getId()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "Invalid file path"

    if-nez p0, :cond_3

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ln54;->a()Lcv4;

    move-result-object p1

    invoke-interface {p1, p0}, Lcv4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "Fingerprint generation failed"

    if-nez p1, :cond_1

    const-class p1, Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;

    invoke-static {p0, p1}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Ljava/lang/String;)Lxm9;
    .locals 1

    new-instance v0, Lzp9;

    invoke-direct {v0, p0, p1}, Lzp9;-><init>(Lcom/transsion/playercommon/videomodel/SmartEditViewModel;Ljava/lang/String;)V

    invoke-static {v0}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->k(Ljava/lang/String;)Lgu8;

    move-result-object p0

    invoke-virtual {p0}, Lgu8;->e()Z

    move-result p1

    const-string v0, "SmartEditViewModel"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastFMResponseBeanResponse = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;->getAlbum()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;->getAlbum()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->getImage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;->getAlbum()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->getImage()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;->getAlbum()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;->getImage()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;->getText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCoverByLastFm cover = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public h()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final synthetic i(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->e(Ljava/lang/String;)Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;->getDuration()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/audioedit/AudioFingerPrintBean;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->j(Ljava/lang/Integer;Ljava/lang/String;)Lgu8;

    move-result-object p1

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vd_vmore_edit_pop_digger_respond"

    const-string v3, "respond"

    invoke-static {v2, v3, v1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lgu8;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->d(Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->l(Ljava/lang/String;)Lgu8;

    move-result-object p1

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lgu8;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getReleaseMbid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Error querying MusicBrainz"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "No matching MBID found"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "AcoustID response error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/Integer;Ljava/lang/String;)Lgu8;
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getAcoustIdKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "fVT58izaST"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getAcoustIdKey()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioAcoustIdApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioAcoustIdApiService;

    const-string v1, "recordings"

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioAcoustIdApiService;->lookupByFingerprint(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljq0;

    move-result-object p0

    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lgu8;
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getLastFmKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "b937ec4f1c3238e183d0ae8b1a020c3d"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getLastFmKey()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioLastFmCoverApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/smartedit/AudioLastFmCoverApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioLastFmCoverApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioLastFmCoverApiService;

    const-string v1, "album.getInfo"

    const-string v2, "json"

    invoke-interface {v0, p1, v1, p0, v2}, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioLastFmCoverApiService;->getReleaseCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljq0;

    move-result-object p0

    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lgu8;
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;

    move-result-object p0

    const-class v0, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioSmartEditApiService;

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioSmartEditApiService;

    const-string v0, "artists+releases"

    const-string v1, "json"

    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/playercommon/vishaapis/smartedit/IAudioSmartEditApiService;->getRecordingDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljq0;

    move-result-object p0

    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    return-object p0
.end method
