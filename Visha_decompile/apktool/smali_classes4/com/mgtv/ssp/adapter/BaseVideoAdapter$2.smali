.class Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/NativeInnerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iput p2, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onADFinish()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->a:I

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f(I)V

    const-string p0, "onADFinish"

    const/4 v0, 0x1

    const-string v1, "BaseVideoAdapter"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onClickBackButton()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->a:I

    invoke-interface {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;->a(I)V

    :cond_0
    return-void
.end method

.method public onClickFullScreenButton()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->a:I

    invoke-interface {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;->b(I)V

    :cond_0
    return-void
.end method

.method public onUpdateAdTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)I

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object p1, p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2$1;-><init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onVideoADStart()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->a:I

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g(I)V

    return-void
.end method
