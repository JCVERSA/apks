.class public Lcom/snaptube/premium/playback/window/PlayerWindowController$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/playback/window/PlayerWindowController;->g0(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/premium/playback/window/PlayerWindowController;


# direct methods
.method public constructor <init>(Lcom/snaptube/premium/playback/window/PlayerWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController$g;->a:Lcom/snaptube/premium/playback/window/PlayerWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController$g;->a:Lcom/snaptube/premium/playback/window/PlayerWindowController;

    invoke-static {v0}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->G(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->M()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/playback/window/PlayerWindowController$g;->a:Lcom/snaptube/premium/playback/window/PlayerWindowController;

    invoke-static {v1}, Lcom/snaptube/premium/playback/window/PlayerWindowController;->C(Lcom/snaptube/premium/playback/window/PlayerWindowController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
