.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Los0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;
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

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$m;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$m;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->X1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x64

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x464

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
