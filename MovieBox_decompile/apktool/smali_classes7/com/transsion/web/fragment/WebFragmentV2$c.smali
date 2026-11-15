.class public final Lcom/transsion/web/fragment/WebFragmentV2$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/lib_web/zip/loader/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2;->e0()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hisavana/mediation/bridge/MediationJsBridge;


# direct methods
.method constructor <init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$c;->b:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$c;->b:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method
