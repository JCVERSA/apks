.class public final synthetic Lge/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/hisavana/mediation/bridge/MediationJsBridge;

.field public final synthetic b:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lge/b;->a:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 5
    .line 6
    iput-object p2, p0, Lge/b;->b:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lge/b;->a:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 2
    .line 3
    iget-object v1, p0, Lge/b;->b:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->a(Lcom/hisavana/mediation/bridge/MediationJsBridge;Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
