.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animBar(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iput-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->b:Z

    iput-boolean p3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->c2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->R1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->c2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->W1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/playercommon/videomodel/MainViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->d:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->R1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;->c:Z

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    :cond_0
    return-void
.end method
