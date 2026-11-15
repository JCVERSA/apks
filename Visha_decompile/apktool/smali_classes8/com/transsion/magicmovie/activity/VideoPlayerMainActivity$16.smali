.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->onBottomHideMenuCLick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->j2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->V1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->U1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Z

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->startEditMode(ZIZ)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->access$000(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16$1;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16$1;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->Y1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "vd_more_hide_file_add"

    const-string v2, "from"

    const-string v3, "num"

    invoke-static {v1, v2, v0, v3, p0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean p0, Lpp3;->p:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x473

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
