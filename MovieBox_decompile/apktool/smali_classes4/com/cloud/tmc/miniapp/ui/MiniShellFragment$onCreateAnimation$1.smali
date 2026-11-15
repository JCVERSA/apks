.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $enter:Z

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public constructor <init>(ZLcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->$enter:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->$enter:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getAppLoadResult(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$isHomepage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$setPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
