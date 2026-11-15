.class Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmManager$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->setCurrentInitListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm/strategy/StrategyDrmManager;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;->this$0:Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;->this$0:Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    invoke-static {v0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->access$000(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;->this$0:Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    invoke-static {p0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->access$000(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/drm/IDrmManager$OnInitListener;->onInitError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;->this$0:Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    invoke-static {v0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->access$000(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;->this$0:Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    invoke-static {p0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->access$000(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager$OnInitListener;->onInitSuccess()V

    :cond_0
    return-void
.end method
