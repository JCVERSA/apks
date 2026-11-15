.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->startEnterTheAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lum/a;

    .line 13
    .line 14
    iget-object p1, p1, Lum/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    const-string v0, "rootView"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
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
