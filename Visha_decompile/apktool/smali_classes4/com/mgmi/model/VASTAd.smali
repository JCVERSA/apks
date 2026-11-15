.class public Lcom/mgmi/model/VASTAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_KEY:Ljava/lang/String; = "[DEFAULT]"


# instance fields
.field private AdRollTime:I

.field private InteractJsonM:Ljava/lang/String;

.field private MgMiniProgramUrl:Ljava/lang/String;

.field private SchGuideA:I

.field private SchGuideM:I

.field private action:Ljava/lang/String;

.field private adFrom:Ljava/lang/String;

.field private adOrigin:Ljava/lang/String;

.field private adStyle:I

.field private ad_timer:I

.field private adlosturl:Ljava/lang/String;

.field private autoLand:I

.field public back_btn:I

.field private bid:Ljava/lang/String;

.field private bidResult:Lcom/mgmi/e/a;

.field private channelId:Ljava/lang/String;

.field private cid:I

.field public clk_area:I

.field public clk_btn:I

.field private clk_macro:Ljava/lang/String;

.field protected clk_trac_macro:Ljava/lang/String;

.field protected clk_trac_value:Ljava/lang/String;

.field private close:I

.field private companionPlusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/e;",
            ">;"
        }
    .end annotation
.end field

.field private contLabel:Ljava/lang/String;

.field private countDownId:Ljava/lang/String;

.field private currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

.field private currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

.field private dao_time:I

.field private delayRand:I

.field private discription:Ljava/lang/String;

.field private displayHeight:I

.field private displayWdith:I

.field private duration:I

.field private errorReportType:I

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expire:J

.field public extra_type:Ljava/lang/String;

.field private hasPosition:Z

.field private hasSendCompleteTrackings:Z

.field private hasSendFirstQuartileTrackings:Z

.field private hasSendImpression:Z

.field private hasSendMidpointTrackings:Z

.field private hasSendResourceInflat:Z

.field private hasSendSkipeTrackings:Z

.field private hasSendStartTrackings:Z

.field private hasSendThirdQuartileTrackings:Z

.field private headInfo:Lcom/mgmi/model/HeadInfo;

.field private height:I

.field public imp_tp:I

.field private isLoadFail:Z

.field private isMk:Z

.field private landAdLog:I

.field private lossNotices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdtype:Ljava/lang/String;

.field private mButtonObject:Lcom/mgmi/model/s;

.field private mCompanions:Lcom/mgmi/model/e;

.field private mFlowWifiState:I

.field private mFlow_cellular:I

.field private final mImpressionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInsertTime:Ljava/lang/String;

.field private mInteractItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;"
        }
    .end annotation
.end field

.field protected mMIDAdTotalTime:I

.field private mSelfRender:Z

.field private mShowAdLog:I

.field protected mSupoortClick:Z

.field private mTrackingEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mVastAdPres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTMediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mid:I

.field public msg_box:I

.field private nt:J

.field private orginTargetURI:Ljava/lang/String;

.field private pair_id:I

.field private planId:Ljava/lang/String;

.field public pre_play:I

.field private rainId:Ljava/lang/String;

.field public reportUrl:Ljava/lang/String;

.field public req_type:I

.field protected resDoanlowdSuccess:Z

.field public resInfo:Ljava/lang/String;

.field private roolTime:I

.field public show_type:I

.field private skipTimeout:I

.field private skipTrackingBeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mgmi/net/bean/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private sspPrice:Ljava/lang/String;

.field private stPreTime:I

.field private staticResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTStaticResource;",
            ">;"
        }
    .end annotation
.end field

.field private supportChangeColor:Z

.field private taskId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field public tkct:I

.field private traceUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vastAid:I

.field private vastTargetStyle:Ljava/lang/String;

.field private vastTargetURI:Ljava/lang/String;

.field private videoClick:Lcom/mgmi/model/Clicks;

.field public vip_show:I

.field private voiceSrc:Ljava/lang/String;

.field public voice_btn:I

.field private width:I

.field private winNotices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zipOnline:Lcom/mgmi/model/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/model/VASTAd$1;

    invoke-direct {v0}, Lcom/mgmi/model/VASTAd$1;-><init>()V

    sput-object v0, Lcom/mgmi/model/VASTAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/model/VASTAd;->supportChangeColor:Z

    const/4 v1, -0x5

    iput v1, p0, Lcom/mgmi/model/VASTAd;->displayWdith:I

    iput v1, p0, Lcom/mgmi/model/VASTAd;->displayHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mgmi/model/VASTAd;->expire:J

    const-string v1, "none"

    iput-object v1, p0, Lcom/mgmi/model/VASTAd;->mAdtype:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/mgmi/model/VASTAd;->resInfo:Ljava/lang/String;

    iput v0, p0, Lcom/mgmi/model/VASTAd;->mFlowWifiState:I

    iput v0, p0, Lcom/mgmi/model/VASTAd;->mFlow_cellular:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/mgmi/model/VASTAd;->roolTime:I

    iput v2, p0, Lcom/mgmi/model/VASTAd;->close:I

    iput-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendResourceInflat:Z

    iput v2, p0, Lcom/mgmi/model/VASTAd;->mShowAdLog:I

    iput v0, p0, Lcom/mgmi/model/VASTAd;->ad_timer:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/mgmi/model/VASTAd;->dao_time:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgmi/model/VASTAd;->back_btn:I

    iput v0, p0, Lcom/mgmi/model/VASTAd;->voice_btn:I

    iput v0, p0, Lcom/mgmi/model/VASTAd;->clk_btn:I

    iput v0, p0, Lcom/mgmi/model/VASTAd;->clk_area:I

    iput-object v1, p0, Lcom/mgmi/model/VASTAd;->clk_macro:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/mgmi/model/VASTAd;->stPreTime:I

    iput v2, p0, Lcom/mgmi/model/VASTAd;->autoLand:I

    iput v2, p0, Lcom/mgmi/model/VASTAd;->landAdLog:I

    iput v2, p0, Lcom/mgmi/model/VASTAd;->SchGuideM:I

    iput v2, p0, Lcom/mgmi/model/VASTAd;->SchGuideA:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->mInsertTime:Ljava/lang/String;

    const-string v0, "mgtv"

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->adFrom:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->errors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->traceUrls:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->mImpressionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->mTrackingEventMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->winNotices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->lossNotices:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$002(Lcom/mgmi/model/VASTAd;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mTrackingEventMap:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/mgmi/model/VASTAd;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/mgmi/model/VASTAd;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/mgmi/model/VASTAd;I)I
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->landAdLog:I

    return p1
.end method

.method private getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "[DEFAULT]"

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "[DEFAULT]"

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private isListEmpty(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "[DEFAULT]"

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public addCommonCompanionPlus(Lcom/mgmi/model/e;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->companionPlusList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->companionPlusList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->companionPlusList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCompanionNative(Lcom/mgmi/model/d;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgmi/model/e;

    invoke-direct {v0}, Lcom/mgmi/model/e;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    invoke-virtual {p0, p1}, Lcom/mgmi/model/e;->a(Lcom/mgmi/model/d;)V

    return-void
.end method

.method public addCompanionZipOnline(Lcom/mgmi/model/d;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgmi/model/e;

    invoke-direct {v0}, Lcom/mgmi/model/e;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    invoke-virtual {p0, p1}, Lcom/mgmi/model/e;->a(Lcom/mgmi/model/d;)V

    return-void
.end method

.method public addError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->errors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mImpressionMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/VASTAd;->getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addLossNotices(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->lossNotices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediafile(Lcom/mgmi/model/VASTMediaFile;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStaticResource(Lcom/mgmi/model/VASTStaticResource;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTraceCheck(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->traceUrls:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->traceUrls:Ljava/util/List;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->traceUrls:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addTrackingEventBean(Ljava/lang/String;Lcom/mgmi/net/bean/c;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p1, "[DEFAULT]"

    :cond_2
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWinNotices(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->winNotices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getAdFrom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->adFrom:Ljava/lang/String;

    return-object p0
.end method

.method public getAdOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->adOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getAdRollTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->AdRollTime:I

    return p0
.end method

.method public getAdStyle()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->adStyle:I

    return p0
.end method

.method public getAd_timer()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->ad_timer:I

    return p0
.end method

.method public getAdlosturl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->adlosturl:Ljava/lang/String;

    return-object p0
.end method

.method public getAllStaticResource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTStaticResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    return-object p0
.end method

.method public getAutoLand()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->autoLand:I

    return p0
.end method

.method public getBack_btn()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->back_btn:I

    return p0
.end method

.method public getBid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->bid:Ljava/lang/String;

    return-object p0
.end method

.method public getBidResult()Lcom/mgmi/e/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->bidResult:Lcom/mgmi/e/a;

    return-object p0
.end method

.method public getButtonObject()Lcom/mgmi/model/s;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mButtonObject:Lcom/mgmi/model/s;

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public getCid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->cid:I

    return p0
.end method

.method public getClk_area()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->clk_area:I

    return p0
.end method

.method public getClk_btn()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->clk_btn:I

    return p0
.end method

.method public getClk_macro()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->clk_macro:Ljava/lang/String;

    return-object p0
.end method

.method public getClk_trac_macro()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->clk_trac_macro:Ljava/lang/String;

    return-object p0
.end method

.method public getClk_trac_value()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->clk_trac_value:Ljava/lang/String;

    return-object p0
.end method

.method public getClose()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->close:I

    return p0
.end method

.method public getCommonPlusList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->companionPlusList:Ljava/util/List;

    return-object p0
.end method

.method public getContLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->contLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getCountDownId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->countDownId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTMediaFile;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    :cond_1
    return-object v0
.end method

.method public getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTStaticResource;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    :cond_1
    return-object v0
.end method

.method public getDaoTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->dao_time:I

    return p0
.end method

.method public getDelayRand()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->delayRand:I

    return p0
.end method

.method public getDiscription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->discription:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayHeight()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->displayHeight:I

    return p0
.end method

.method public getDisplayWdith()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->displayWdith:I

    return p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->duration:I

    return p0
.end method

.method public getErrorReportType()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->errorReportType:I

    return p0
.end method

.method public getErrors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->errors:Ljava/util/List;

    return-object p0
.end method

.method public getExpire()J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/model/VASTAd;->expire:J

    return-wide v0
.end method

.method public getExtra_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->extra_type:Ljava/lang/String;

    return-object p0
.end method

.method public getHeadInfo()Lcom/mgmi/model/HeadInfo;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->headInfo:Lcom/mgmi/model/HeadInfo;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->height:I

    return p0
.end method

.method public getImp_tp()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->imp_tp:I

    return p0
.end method

.method public getImpression()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getImpression(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImpression(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mImpressionMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/VASTAd;->getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInsertTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mInsertTime:Ljava/lang/String;

    return-object p0
.end method

.method public getInteractItemInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mInteractItemInfos:Ljava/util/List;

    return-object p0
.end method

.method public getInteractJsonM()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->InteractJsonM:Ljava/lang/String;

    return-object p0
.end method

.method public getInteractResJsonUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLandAdLog()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->landAdLog:I

    return p0
.end method

.method public getLossNotices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->lossNotices:Ljava/util/List;

    return-object p0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTMediaFile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    return-object p0
.end method

.method public getMgMiniProgramUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->MgMiniProgramUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getMid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->mid:I

    return p0
.end method

.method public getMsg_box()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->msg_box:I

    return p0
.end method

.method public getNextMediaFile()Lcom/mgmi/model/VASTMediaFile;
    .locals 5

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTMediaFile;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    iget-object v4, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    iget-object v4, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTMediaFile;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getNextStaticResource()Lcom/mgmi/model/VASTStaticResource;
    .locals 5

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTStaticResource;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    iget-object v4, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    iget-object v4, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTStaticResource;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getNt()J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/model/VASTAd;->nt:J

    return-wide v0
.end method

.method public getOrginTargetURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->orginTargetURI:Ljava/lang/String;

    return-object p0
.end method

.method public getPairid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->pair_id:I

    return p0
.end method

.method public getPlanId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->planId:Ljava/lang/String;

    return-object p0
.end method

.method public getPre_play()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->pre_play:I

    return p0
.end method

.method public getRainId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->rainId:Ljava/lang/String;

    return-object p0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->reportUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getReq_type()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->req_type:I

    return p0
.end method

.method public getResInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->resInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getRoolTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->roolTime:I

    return p0
.end method

.method public getSchGuideA()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->SchGuideA:I

    return p0
.end method

.method public getSchGuideM()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->SchGuideM:I

    return p0
.end method

.method public getShow_type()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->show_type:I

    return p0
.end method

.method public getSkipTimeout()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->skipTimeout:I

    return p0
.end method

.method public getSspPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->sspPrice:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTStaticResource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTkct()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->tkct:I

    return p0
.end method

.method public getTraceCheck()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->traceUrls:Ljava/util/List;

    return-object p0
.end method

.method public getTrackingEventClose()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventClose(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventClose(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "close"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventComplete()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventComplete(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventComplete(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "complete"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlComplete()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlComplete(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlComplete(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "insFin"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlFinish()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlFinish(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlFinish(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "dlFin"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlInstall()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlInstall(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlInstall(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "insSt"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlStart(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventDlStart(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "dlSt"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventFirst()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventFirst(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventFirst(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "firstQuartile"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventFullScreen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventFullScreen(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventFullScreen(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "full"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventLandclose(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "landClose"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTrackingEventList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgmi/net/bean/c;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-string p1, "[DEFAULT]"

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method public final getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    const-string p1, "[DEFAULT]"

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mTrackingEventMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/VASTAd;->getMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/model/VASTAd;->getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventMid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventMid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventMid(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "midpoint"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventMute()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventMute(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventMute(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "mute"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventSkip(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "skip"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventStart(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventStart(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "start"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventThird()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventThird(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventThird(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "thirdQuartile"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventUnMute()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventUnMute(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventUnMute(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "unmute"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventlandClick(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "landClick"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVastAdPres()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mVastAdPres:Ljava/util/List;

    return-object p0
.end method

.method public getVastAid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->vastAid:I

    return p0
.end method

.method public getVastTargetStyle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->vastTargetStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getVastTargetURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->vastTargetURI:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoClick()Lcom/mgmi/model/Clicks;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->videoClick:Lcom/mgmi/model/Clicks;

    return-object p0
.end method

.method public getVip_show()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->vip_show:I

    return p0
.end method

.method public getVoiceSrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->voiceSrc:Ljava/lang/String;

    return-object p0
.end method

.method public getVoice_btn()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->voice_btn:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->width:I

    return p0
.end method

.method public getWinNotices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->winNotices:Ljava/util/List;

    return-object p0
.end method

.method public getmAdtype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mAdtype:Ljava/lang/String;

    return-object p0
.end method

.method public getmCompanions()Lcom/mgmi/model/e;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    return-object p0
.end method

.method public getmFlowWifiState()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->mFlowWifiState:I

    return p0
.end method

.method public getmFlow_cellular()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->mFlow_cellular:I

    return p0
.end method

.method public getmMIDAdTotalTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTAd;->mMIDAdTotalTime:I

    return p0
.end method

.method public hasFireImpressions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendImpression:Z

    return p0
.end method

.method public hasSendCompleteTrackings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendCompleteTrackings:Z

    return p0
.end method

.method public hasSendFirstQuartileTrackings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendFirstQuartileTrackings:Z

    return p0
.end method

.method public hasSendMidpointTrackings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendMidpointTrackings:Z

    return p0
.end method

.method public hasSendSkipeTrackings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendSkipeTrackings:Z

    return p0
.end method

.method public hasSendStartTrackings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendStartTrackings:Z

    return p0
.end method

.method public hasSendThirdQuartileTrackings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendThirdQuartileTrackings:Z

    return p0
.end method

.method public isExpired()Z
    .locals 5

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/mgmi/model/VASTAd;->expire:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/mgmi/model/VASTAd;->expire:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public isHasPosition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasPosition:Z

    return p0
.end method

.method public isHasSendResourceInflat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->hasSendResourceInflat:Z

    return p0
.end method

.method public isImpressionEmpty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTAd;->mImpressionMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/VASTAd;->isListEmpty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInteractAd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInteractValide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLoadFail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->isLoadFail:Z

    return p0
.end method

.method public isMediaVast()Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMk()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->isMk:Z

    return p0
.end method

.method public isSelfRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->mSelfRender:Z

    return p0
.end method

.method public isShowAdLog()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/model/VASTAd;->mShowAdLog:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public isShowLandAdLog()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/model/VASTAd;->landAdLog:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportChangeColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->supportChangeColor:Z

    return p0
.end method

.method public ismSupoortClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->mSupoortClick:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/model/VASTAd;->hasSendImpression:Z

    return-void
.end method

.method public resetStaticResource()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->action:Ljava/lang/String;

    return-void
.end method

.method public setAdFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->adFrom:Ljava/lang/String;

    return-void
.end method

.method public setAdOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->adOrigin:Ljava/lang/String;

    return-void
.end method

.method public setAdRollTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->AdRollTime:I

    return-void
.end method

.method public setAdStyle(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->adStyle:I

    return-void
.end method

.method public setAd_timer(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->ad_timer:I

    return-void
.end method

.method public setAdlosturl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->adlosturl:Ljava/lang/String;

    return-void
.end method

.method public setAutoLand(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->autoLand:I

    return-void
.end method

.method public setBack_btn(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->back_btn:I

    return-void
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->bid:Ljava/lang/String;

    return-void
.end method

.method public setBidResult(Lcom/mgmi/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->bidResult:Lcom/mgmi/e/a;

    return-void
.end method

.method public setButtonObject(Lcom/mgmi/model/s;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mButtonObject:Lcom/mgmi/model/s;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setCid(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->cid:I

    return-void
.end method

.method public setClk_area(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->clk_area:I

    return-void
.end method

.method public setClk_btn(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->clk_btn:I

    return-void
.end method

.method public setClk_macro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->clk_macro:Ljava/lang/String;

    return-void
.end method

.method public setClk_trac_macro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->clk_trac_macro:Ljava/lang/String;

    return-void
.end method

.method public setClk_trac_value(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->clk_trac_value:Ljava/lang/String;

    return-void
.end method

.method public setClose(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->close:I

    return-void
.end method

.method public setContLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->contLabel:Ljava/lang/String;

    return-void
.end method

.method public setCountDownId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->countDownId:Ljava/lang/String;

    return-void
.end method

.method public setDaoTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->dao_time:I

    return-void
.end method

.method public setDelayRand(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->delayRand:I

    return-void
.end method

.method public setDiscription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->discription:Ljava/lang/String;

    return-void
.end method

.method public setDisplayHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->displayHeight:I

    return-void
.end method

.method public setDisplayWdith(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->displayWdith:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->duration:I

    return-void
.end method

.method public setErrorReportType(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->errorReportType:I

    return-void
.end method

.method public setExpire(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgmi/model/VASTAd;->expire:J

    return-void
.end method

.method public setExtra_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->extra_type:Ljava/lang/String;

    return-void
.end method

.method public setHasFireImpressions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendImpression:Z

    return-void
.end method

.method public setHasPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasPosition:Z

    return-void
.end method

.method public setHasSendCompleteTrackings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendCompleteTrackings:Z

    return-void
.end method

.method public setHasSendMidpointTrackings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendMidpointTrackings:Z

    return-void
.end method

.method public setHasSendResourceInflat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendResourceInflat:Z

    return-void
.end method

.method public setHasSendStartTrackings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendStartTrackings:Z

    return-void
.end method

.method public setHasSendThirdQuartileTrackings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendThirdQuartileTrackings:Z

    return-void
.end method

.method public setHasSendfirstQuartileTrackings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendFirstQuartileTrackings:Z

    return-void
.end method

.method public setHasSkipTrackings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->hasSendSkipeTrackings:Z

    return-void
.end method

.method public setHeadInfo(Lcom/mgmi/model/HeadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->headInfo:Lcom/mgmi/model/HeadInfo;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->height:I

    return-void
.end method

.method public setImp_tp(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->imp_tp:I

    return-void
.end method

.method public setInsertTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mInsertTime:Ljava/lang/String;

    return-void
.end method

.method public setInteractItemInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mInteractItemInfos:Ljava/util/List;

    return-void
.end method

.method public setInteractJsonM(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->InteractJsonM:Ljava/lang/String;

    return-void
.end method

.method public setLandAdLog(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->landAdLog:I

    return-void
.end method

.method public setLoadFail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->isLoadFail:Z

    return-void
.end method

.method public setMgMiniProgramUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->MgMiniProgramUrl:Ljava/lang/String;

    return-void
.end method

.method public setMid(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->mid:I

    return-void
.end method

.method public setMk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->isMk:Z

    return-void
.end method

.method public setMsg_box(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->msg_box:I

    return-void
.end method

.method public setNt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgmi/model/VASTAd;->nt:J

    return-void
.end method

.method public setOrginTargetURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->orginTargetURI:Ljava/lang/String;

    return-void
.end method

.method public setPairid(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->pair_id:I

    return-void
.end method

.method public setPlanId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->planId:Ljava/lang/String;

    return-void
.end method

.method public setPre_play(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->pre_play:I

    return-void
.end method

.method public setRainId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->rainId:Ljava/lang/String;

    return-void
.end method

.method public setReportUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->reportUrl:Ljava/lang/String;

    return-void
.end method

.method public setReq_type(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->req_type:I

    return-void
.end method

.method public setResInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->resInfo:Ljava/lang/String;

    return-void
.end method

.method public setRoolTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->roolTime:I

    return-void
.end method

.method public setSchGuideA(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->SchGuideA:I

    return-void
.end method

.method public setSchGuideM(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->SchGuideM:I

    return-void
.end method

.method public setSelfRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->mSelfRender:Z

    return-void
.end method

.method public setShowAdLog(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->mShowAdLog:I

    return-void
.end method

.method public setShow_type(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->show_type:I

    return-void
.end method

.method public setSkipTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->skipTimeout:I

    return-void
.end method

.method public setSspPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->sspPrice:Ljava/lang/String;

    return-void
.end method

.method public setSupportChangeColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->supportChangeColor:Z

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->title:Ljava/lang/String;

    return-void
.end method

.method public setTkct(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->tkct:I

    return-void
.end method

.method public setVastAdPres(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mVastAdPres:Ljava/util/List;

    return-void
.end method

.method public setVastAid(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->vastAid:I

    return-void
.end method

.method public setVastTargetStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->vastTargetStyle:Ljava/lang/String;

    return-void
.end method

.method public setVastTargetURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->vastTargetURI:Ljava/lang/String;

    return-void
.end method

.method public setVideoClick(Lcom/mgmi/model/Clicks;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->videoClick:Lcom/mgmi/model/Clicks;

    return-void
.end method

.method public setVip_show(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->vip_show:I

    return-void
.end method

.method public setVoiceSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->voiceSrc:Ljava/lang/String;

    return-void
.end method

.method public setVoice_btn(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->voice_btn:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->width:I

    return-void
.end method

.method public setmAdtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mAdtype:Ljava/lang/String;

    return-void
.end method

.method public setmCompanions(Lcom/mgmi/model/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    return-void
.end method

.method public setmFlowWifiState(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->mFlowWifiState:I

    return-void
.end method

.method public setmFlow_cellular(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->mFlow_cellular:I

    return-void
.end method

.method public setmMIDAdTotalTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTAd;->mMIDAdTotalTime:I

    return-void
.end method

.method public setmSupoortClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTAd;->mSupoortClick:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VASTAd{mediaFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", staticResources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTAd;->errors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adlosturl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTAd;->adlosturl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vastAid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->vastAid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", expire="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mgmi/model/VASTAd;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", delayRand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->delayRand:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAdtype=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mAdtype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->resInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", MgMiniProgramUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->MgMiniProgramUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", discription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->discription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoClick="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->videoClick:Lcom/mgmi/model/Clicks;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adOrigin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->adOrigin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->bid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mImpressionMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mImpressionMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVastAdPres="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mVastAdPres:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTrackingEventMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mTrackingEventMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInteractItemInfos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mInteractItemInfos:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mButtonObject="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mButtonObject:Lcom/mgmi/model/s;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", planId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->planId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCompanions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mCompanions:Lcom/mgmi/model/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", companionPlusList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->companionPlusList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", zipOnline="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->zipOnline:Lcom/mgmi/model/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", AdRollTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->AdRollTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->skipTimeout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adFrom=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->adFrom:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFlowWifiState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->mFlowWifiState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", roolTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->roolTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vastTargetURI=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->vastTargetURI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", orginTargetURI=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->orginTargetURI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vastTargetStyle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->vastTargetStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", close="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->close:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentMediaFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->currentMediaFile:Lcom/mgmi/model/VASTMediaFile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentStaticResource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->currentStaticResource:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendImpression="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendImpression:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendStartTrackings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendStartTrackings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendCompleteTrackings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendCompleteTrackings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendFirstQuartileTrackings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendFirstQuartileTrackings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendSkipeTrackings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendSkipeTrackings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendMidpointTrackings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendMidpointTrackings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendThirdQuartileTrackings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendThirdQuartileTrackings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendResourceInflat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasSendResourceInflat:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShowAdLog="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->mShowAdLog:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", headInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->headInfo:Lcom/mgmi/model/HeadInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", errorReportType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->errorReportType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", traceUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->traceUrls:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipTrackingBeen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->skipTrackingBeen:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->adStyle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->mid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pair_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->pair_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ad_timer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->ad_timer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dao_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->dao_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pre_play="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->pre_play:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", req_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->req_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", show_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->show_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->extra_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", back_btn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->back_btn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", voice_btn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->voice_btn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clk_btn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->clk_btn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clk_area="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->clk_area:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg_box="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->msg_box:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imp_tp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->imp_tp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vip_show="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->vip_show:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clk_macro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->clk_macro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stPreTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->stPreTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoLand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->autoLand:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->cid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", InteractJsonM=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->InteractJsonM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voiceSrc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->voiceSrc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLoadFail="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->isLoadFail:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/model/VASTAd;->hasPosition:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->contLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tkct="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/model/VASTAd;->tkct:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reportUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->reportUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rainId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->rainId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", countDownId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->countDownId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channelId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mgmi/model/VASTAd;->nt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mInsertTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/model/VASTAd;->mInsertTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resDoanlowdSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTAd;->resDoanlowdSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMIDAdTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTAd;->mMIDAdTotalTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupoortClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mgmi/model/VASTAd;->mSupoortClick:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateInteractResource()V
    .locals 1

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/mgmi/model/VASTAd;->mTrackingEventMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/mgmi/model/VASTAd;->mediaFiles:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/mgmi/model/VASTAd;->staticResources:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget p0, p0, Lcom/mgmi/model/VASTAd;->landAdLog:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
