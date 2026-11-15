.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

.field final synthetic b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/ad/view/CustomRoundCornerLayout;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;->a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;->b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

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
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;->a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;->a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;->b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionPanelTargetWidth(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;->a:Lcom/transsion/ad/view/CustomRoundCornerLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
