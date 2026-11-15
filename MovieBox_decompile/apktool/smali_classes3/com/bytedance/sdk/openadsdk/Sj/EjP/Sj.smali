.class public Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    const-string p2, "Unknown exception."

    .line 10
    .line 11
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
