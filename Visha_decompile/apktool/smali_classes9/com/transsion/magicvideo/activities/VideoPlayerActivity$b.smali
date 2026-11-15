.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gw/swipeback/SwipeBackLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->k1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iget-wide p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->a:J

    const-wide/16 v0, 0x64

    invoke-static {p1, p2, v0, v1}, Ljf;->k(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->a:J

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x497

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "vd_video_player_drop_down"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->g1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->f1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    :goto_0
    return-void
.end method
