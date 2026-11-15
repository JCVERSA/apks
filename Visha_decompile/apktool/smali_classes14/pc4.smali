.class public final synthetic Lpc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field public final synthetic f:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iput-object p2, p0, Lpc4;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lpc4;->d:Landroid/content/Context;

    iput-object p4, p0, Lpc4;->e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iput-object p5, p0, Lpc4;->f:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lpc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iget-object v1, p0, Lpc4;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lpc4;->d:Landroid/content/Context;

    iget-object v3, p0, Lpc4;->e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iget-object p0, p0, Lpc4;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->v(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    return-void
.end method
