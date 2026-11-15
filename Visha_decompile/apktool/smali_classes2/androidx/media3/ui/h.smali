.class public final synthetic Landroidx/media3/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/h;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/h;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method
