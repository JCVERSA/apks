.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/fragment/BaseListFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->r(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;-><init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
