.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;
.super Ltw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->J3(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-boolean p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->c:Z

    invoke-direct {p0, p2}, Ltw6;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->R1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/model/VideoControlModel;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoControlModel;->enableClickFullScreen:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->R1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/model/VideoControlModel;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoControlModel;->enableClickFullScreen:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q0;->c:Z

    invoke-static {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->z3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :cond_0
    return-void
.end method
