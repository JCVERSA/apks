.class public final Lcom/transsion/mediationads/beans/SdkAdMediaItem;
.super Lcom/transsion/mediationads/beans/AdMediaItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/beans/SdkAdMediaItem$Companion;,
        Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 P2\u00020\u0001:\u0002QPB\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008!\u0010\u0013J\u000f\u0010\"\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0013J\u000f\u0010#\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008#\u0010\u0013J\u000f\u0010$\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008$\u0010%R\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R$\u0010*\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00100\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R$\u00106\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u0010\u0016\"\u0004\u00089\u0010:R\u001c\u0010<\u001a\u0008\u0018\u00010;R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R \u0010?\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R$\u0010A\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010%\"\u0004\u0008D\u0010ER\u0016\u0010G\u001a\u00020F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010HR\u0016\u0010K\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010LR\u0014\u0010N\u001a\u00020J8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010O\u00a8\u0006R"
    }
    d2 = {
        "Lcom/transsion/mediationads/beans/SdkAdMediaItem;",
        "Lcom/transsion/mediationads/beans/AdMediaItem;",
        "",
        "adId",
        "",
        "listMode",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "Lcom/hisavana/mediation/ad/TAdNativeView;",
        "obtainTAdNativeView",
        "(Landroid/view/ViewGroup;)Lcom/hisavana/mediation/ad/TAdNativeView;",
        "tAdNativeView",
        "position",
        "Lzfb;",
        "bindValuesInner",
        "(Lcom/hisavana/mediation/ad/TAdNativeView;I)V",
        "bindAd",
        "()V",
        "Lcom/hisavana/mediation/ad/ViewBinder;",
        "getBinder",
        "()Lcom/hisavana/mediation/ad/ViewBinder;",
        "Landroid/view/View;",
        "nativeAdView",
        "bindValues",
        "(Landroid/view/View;I)V",
        "Landroid/content/Context;",
        "context",
        "setContext",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "markAsClosed",
        "markAsConsumed",
        "release",
        "toString",
        "()Ljava/lang/String;",
        "Lcom/hisavana/mediation/ad/TNativeAd;",
        "nativeAd",
        "Lcom/hisavana/mediation/ad/TNativeAd;",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "adNativeInfo",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "getAdNativeInfo",
        "()Lcom/hisavana/common/bean/TAdNativeInfo;",
        "setAdNativeInfo",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;)V",
        "adNativeView",
        "Lcom/hisavana/mediation/ad/TAdNativeView;",
        "getAdNativeView",
        "()Lcom/hisavana/mediation/ad/TAdNativeView;",
        "setAdNativeView",
        "(Lcom/hisavana/mediation/ad/TAdNativeView;)V",
        "viewBinder",
        "Lcom/hisavana/mediation/ad/ViewBinder;",
        "getViewBinder",
        "setViewBinder",
        "(Lcom/hisavana/mediation/ad/ViewBinder;)V",
        "Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;",
        "mAdMediaItemListener",
        "Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;",
        "Ljava/lang/ref/WeakReference;",
        "weakReference",
        "Ljava/lang/ref/WeakReference;",
        "adScene",
        "Ljava/lang/String;",
        "getAdScene",
        "setAdScene",
        "(Ljava/lang/String;)V",
        "",
        "adRequestTimeMs",
        "J",
        "adShowTimeMs",
        "",
        "hasReportedResponse",
        "Z",
        "hasReportedClose",
        "isAdAvailable",
        "()Z",
        "Companion",
        "SdkAdMediaItemListener",
        "mediationAds_release"
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
.field public static final Companion:Lcom/transsion/mediationads/beans/SdkAdMediaItem$Companion;

.field private static final TAG:Ljava/lang/String; = "mediation_ad_SdkAdMediaItem"


# instance fields
.field private adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

.field private adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

.field private adRequestTimeMs:J

.field private adScene:Ljava/lang/String;

.field private adShowTimeMs:J

.field private hasReportedClose:Z

.field private hasReportedResponse:Z

.field private mAdMediaItemListener:Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;

.field public nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

.field private viewBinder:Lcom/hisavana/mediation/ad/ViewBinder;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->Companion:Lcom/transsion/mediationads/beans/SdkAdMediaItem$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/mediationads/beans/AdMediaItem;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;

    invoke-direct {p1, p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;-><init>(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->mAdMediaItemListener:Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;

    return-void
.end method

.method public static final synthetic access$bindAd(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->bindAd()V

    return-void
.end method

.method public static final synthetic access$getAdRequestTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adRequestTimeMs:J

    return-wide v0
.end method

.method public static final synthetic access$getAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adShowTimeMs:J

    return-wide v0
.end method

.method public static final synthetic access$getHasReportedClose$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedClose:Z

    return p0
.end method

.method public static final synthetic access$getHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedResponse:Z

    return p0
.end method

.method public static final synthetic access$setAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adShowTimeMs:J

    return-void
.end method

.method public static final synthetic access$setHasReportedClose$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedClose:Z

    return-void
.end method

.method public static final synthetic access$setHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedResponse:Z

    return-void
.end method

.method public static synthetic b(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getBinder$lambda$0(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Landroid/view/View;)V

    return-void
.end method

.method private final bindAd()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getBinder()Lcom/hisavana/mediation/ad/ViewBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adScene:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/hisavana/mediation/ad/TNativeAd;->bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdPosition()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------->bindAd --> bindNativeView(),position == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final bindValuesInner(Lcom/hisavana/mediation/ad/TAdNativeView;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    :cond_0
    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    :cond_1
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/mediationads/beans/AdMediaItem;->setAdPosition(I)V

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-nez p1, :cond_5

    new-instance p1, Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    iget-object p2, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adScene:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p2, "native_video_tab"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lpca;->enterScene(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adScene:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {p2}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->mAdMediaItemListener:Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;

    invoke-virtual {p2, v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdListener(Lcom/hisavana/common/interfacz/TAdListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpca;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindValues "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediation_ad_SdkAdMediaItem"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    if-nez p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adRequestTimeMs:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adShowTimeMs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedResponse:Z

    iput-boolean p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedClose:Z

    sget-object p2, Lrz5;->a:Lrz5$a;

    invoke-virtual {p2, p1}, Lrz5$a;->c(I)V

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lpca;->loadAd()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->bindAd()V

    :cond_7
    :goto_0
    return-void
.end method

.method private final getBinder()Lcom/hisavana/mediation/ad/ViewBinder;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/mediationads/R$layout;->item_native_ad_list:I

    iget-object v2, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/mediationads/R$id;->ll_ad_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lj39;

    invoke-direct {v2, p0}, Lj39;-><init>(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    invoke-direct {p0, v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/mediationads/R$id;->ad_video_item_content_title:I

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->titleId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    move-result-object p0

    sget v0, Lcom/transsion/mediationads/R$id;->ad_video_item_content_des:I

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->descriptionId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->contextMode(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    move-result-object p0

    sget v0, Lcom/transsion/mediationads/R$id;->tmv_ad_cover:I

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->mediaId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    move-result-object p0

    sget v1, Lcom/transsion/mediationads/R$id;->tv_ad_enter:I

    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->callToActionId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    move-result-object p0

    sget v2, Lcom/transsion/mediationads/R$id;->cl_ad_enter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/transsion/mediationads/R$id;->iv_ad_enter_action:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v1, v0, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->actionIds([Ljava/lang/Integer;)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->build()Lcom/hisavana/mediation/ad/ViewBinder;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getBinder$lambda$0(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdPosition()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad close button clicked, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedClose:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->hasReportedClose:Z

    iget-wide v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adShowTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adShowTimeMs:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lwn8;->e(JJ)J

    move-result-wide v2

    :cond_0
    sget-object p1, Lrz5;->a:Lrz5$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v2, v3}, Lrz5$a;->b(IIJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->markAsClosed()V

    return-void
.end method

.method private final obtainTAdNativeView(Landroid/view/ViewGroup;)Lcom/hisavana/mediation/ad/TAdNativeView;
    .locals 2

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p0, Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hisavana/mediation/ad/TAdNativeView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method


# virtual methods
.method public bindValues(Landroid/view/View;I)V
    .locals 1

    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hisavana/mediation/ad/TAdNativeView;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->obtainTAdNativeView(Landroid/view/ViewGroup;)Lcom/hisavana/mediation/ad/TAdNativeView;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->bindValuesInner(Lcom/hisavana/mediation/ad/TAdNativeView;I)V

    :cond_1
    return-void
.end method

.method public final getAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    return-object p0
.end method

.method public final getAdNativeView()Lcom/hisavana/mediation/ad/TAdNativeView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    return-object p0
.end method

.method public final getAdScene()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adScene:Ljava/lang/String;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "getApp(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getViewBinder()Lcom/hisavana/mediation/ad/ViewBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->viewBinder:Lcom/hisavana/mediation/ad/ViewBinder;

    return-object p0
.end method

.method public isAdAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isConsumed:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public markAsClosed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->release()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    return-void
.end method

.method public markAsConsumed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isConsumed:Z

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V

    :cond_2
    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->viewBinder:Lcom/hisavana/mediation/ad/ViewBinder;

    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->mAdMediaItemListener:Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_3
    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setAdNativeInfo(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    return-void
.end method

.method public final setAdNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeView:Lcom/hisavana/mediation/ad/TAdNativeView;

    return-void
.end method

.method public final setAdScene(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adScene:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setViewBinder(Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->viewBinder:Lcom/hisavana/mediation/ad/ViewBinder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdPosition()I

    move-result v1

    iget-boolean v2, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isConsumed:Z

    iget-boolean v3, p0, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdLoadTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result v6

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->isAdAvailable()Z

    move-result v7

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->adNativeInfo:Lcom/hisavana/common/bean/TAdNativeInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SdkAdMediaItem{adId=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', adPosition="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isConsumed="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isClosed="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", adLoadTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", displayMode=\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', isAdAvailable="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "adNativeInfo="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
