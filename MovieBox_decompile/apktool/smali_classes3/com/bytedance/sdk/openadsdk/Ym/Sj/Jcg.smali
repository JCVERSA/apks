.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;
.super Lcom/bytedance/sdk/component/Sj/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Sj/HiB<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Ljava/lang/String;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/HiB;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;->Sj:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "appInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "adInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "sendLog"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "playable_style"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getTemplateInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getTeMaiAds"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "isViewable"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getScreenSize"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getCloseButtonInfo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getVolume"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "removeLoading"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "sendReward"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "subscribe_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "download_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "cancel_download_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "unsubscribe_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "landscape_click"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "clickEvent"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "renderDidFinish"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "dynamicTrack"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "skipVideo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "muteVideo"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "changeVideoState"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "changeVideoState"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getCurrentVideoState"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "getCurrentVideoState"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "send_temai_product_ids"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "send_temai_product_ids"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getMaterialMeta"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "getMaterialMeta"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "endcard_load"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "endcard_load"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "pauseWebView"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "pauseWebView"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "pauseWebViewTimers"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "pauseWebViewTimers"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "webview_time_track"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "webview_time_track"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "openPrivacy"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "openPrivacy"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "openAdLandPageLinks"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "openAdLandPageLinks"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "getNativeSiteCustomData"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string v1, "getNativeSiteCustomData"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;

    const-string v1, "close"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string p1, "close"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/component/Sj/vS;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/component/Sj/vS;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;-><init>()V

    .line 37
    const-string v0, "call"

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->Sj:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;->Sj:Ljava/lang/String;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->TKC:Ljava/lang/String;

    .line 39
    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$sP;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
