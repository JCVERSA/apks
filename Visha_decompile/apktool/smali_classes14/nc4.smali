.class public final synthetic Lnc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iput-object p2, p0, Lnc4;->c:Landroid/view/View;

    iput-object p3, p0, Lnc4;->d:Landroid/view/ViewGroup;

    iput-object p4, p0, Lnc4;->e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iget-object v1, p0, Lnc4;->c:Landroid/view/View;

    iget-object v2, p0, Lnc4;->d:Landroid/view/ViewGroup;

    iget-object p0, p0, Lnc4;->e:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->q(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method
