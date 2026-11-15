.class Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->reportError(Ljava/lang/Object;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$ad:Lcom/facebook/ads/Ad;

.field final synthetic val$adListener:Lcom/facebook/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AdListener;Lcom/facebook/ads/Ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;->val$adListener:Lcom/facebook/ads/AdListener;

    iput-object p2, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;->val$ad:Lcom/facebook/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;->val$adListener:Lcom/facebook/ads/AdListener;

    iget-object p0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;->val$ad:Lcom/facebook/ads/Ad;

    new-instance v1, Lcom/facebook/ads/AdError;

    const/4 v2, -0x1

    const-string v3, "Can\'t load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder."

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method
