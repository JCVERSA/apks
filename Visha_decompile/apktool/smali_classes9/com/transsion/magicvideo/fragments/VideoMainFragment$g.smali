.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/fragments/VideoMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$g;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStateUpdate(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$g;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$g;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->I0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
