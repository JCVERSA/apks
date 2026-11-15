.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->enterCloudUploadEditMode(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;->b(Z)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->S1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/playercommon/widgets/CloudUploadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getVideoDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->startBatchUploadByVideoCloudDataList(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x469

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->S1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/playercommon/widgets/CloudUploadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getVideoDataList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->k2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/util/List;Z)V

    new-instance p1, Le6b;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    new-instance v2, Ln4c;

    invoke-direct {v2, p0}, Ln4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;)V

    invoke-direct {p1, v0, v2}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    invoke-virtual {p1, v1}, Le6b;->b(Z)V

    return-void
.end method
