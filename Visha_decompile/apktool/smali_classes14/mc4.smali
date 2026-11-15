.class public final synthetic Lmc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field public final synthetic f:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;ZZLcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iput-boolean p2, p0, Lmc4;->c:Z

    iput-boolean p3, p0, Lmc4;->d:Z

    iput-object p4, p0, Lmc4;->e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iput-object p5, p0, Lmc4;->f:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lmc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iget-boolean v1, p0, Lmc4;->c:Z

    iget-boolean v2, p0, Lmc4;->d:Z

    iget-object v3, p0, Lmc4;->e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iget-object p0, p0, Lmc4;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->t(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;ZZLcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    return-void
.end method
