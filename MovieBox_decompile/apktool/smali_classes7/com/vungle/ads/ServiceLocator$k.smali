.class public final Lcom/vungle/ads/ServiceLocator$k;
.super Lcom/vungle/ads/ServiceLocator$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/ads/ServiceLocator;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator$k;->this$0:Lcom/vungle/ads/ServiceLocator;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/vungle/ads/ServiceLocator$a;-><init>(Lcom/vungle/ads/ServiceLocator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/ads/internal/platform/d;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator$k;->this$0:Lcom/vungle/ads/ServiceLocator;

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    invoke-static {v0, v1}, Lcom/vungle/ads/ServiceLocator;->access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 3
    new-instance v1, Lcom/vungle/ads/internal/platform/c;

    .line 4
    iget-object v2, p0, Lcom/vungle/ads/ServiceLocator$k;->this$0:Lcom/vungle/ads/ServiceLocator;

    invoke-static {v2}, Lcom/vungle/ads/ServiceLocator;->access$getCtx$p(Lcom/vungle/ads/ServiceLocator;)Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/a;->getUaExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v0

    .line 6
    invoke-direct {v1, v2, v0}, Lcom/vungle/ads/internal/platform/c;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    return-object v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/ServiceLocator$k;->create()Lcom/vungle/ads/internal/platform/d;

    move-result-object v0

    return-object v0
.end method
