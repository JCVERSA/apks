.class public final synthetic Lcom/transsion/player/longvideo/ui/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/view/CustomRoundCornerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/view/CustomRoundCornerLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/b;->a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/b;->a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->T(Lcom/transsion/ad/view/CustomRoundCornerLayout;Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
