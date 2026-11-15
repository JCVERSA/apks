.class Landroidx/media3/ui/e0$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/e0;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/ui/PlayerControlView;

.field final synthetic b:Landroidx/media3/ui/e0;


# direct methods
.method constructor <init>(Landroidx/media3/ui/e0;Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/e0$e;->b:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/ui/e0$e;->a:Landroidx/media3/ui/PlayerControlView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/e0$e;->b:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Landroidx/media3/ui/e0;->s(Landroidx/media3/ui/e0;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/ui/e0$e;->b:Landroidx/media3/ui/e0;

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/ui/e0;->t(Landroidx/media3/ui/e0;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/ui/e0$e;->a:Landroidx/media3/ui/PlayerControlView;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/ui/e0$e;->b:Landroidx/media3/ui/e0;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/ui/e0;->v(Landroidx/media3/ui/e0;)Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/ui/e0$e;->b:Landroidx/media3/ui/e0;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Landroidx/media3/ui/e0;->u(Landroidx/media3/ui/e0;Z)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/e0$e;->b:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-static {p1, v0}, Landroidx/media3/ui/e0;->s(Landroidx/media3/ui/e0;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
