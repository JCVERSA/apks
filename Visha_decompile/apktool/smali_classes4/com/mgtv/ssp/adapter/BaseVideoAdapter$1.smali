.class Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/NativeExpressADListener;


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

.field final synthetic b:Lcom/mgtv/ssp/adapter/BaseHolder;

.field final synthetic c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;ILcom/mgtv/ssp/adapter/BaseHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iput p2, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    iput-object p3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->b:Lcom/mgtv/ssp/adapter/BaseHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/mgmi/ssp/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onADClosed(Lcom/mgmi/ssp/NativeExpressADView;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object p1, p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    iget v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-static {p1, v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->b:Lcom/mgtv/ssp/adapter/BaseHolder;

    instance-of v0, p1, Lcom/mgtv/ssp/adapter/AdHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mgtv/ssp/adapter/AdHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/adapter/AdHolder;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object p1, p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    iget v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/ssp/NativeExpressADView;

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    iget v1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {p1}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;->a(ILandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public onADExposure(Lcom/mgmi/ssp/NativeExpressADView;)V
    .locals 2

    const-string p1, "lyzzzz"

    const-string v0, "onADExposure"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(ZI)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/ssp/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeee onADLoaded "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;Z)Z

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    iget v1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {p1, p0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(II)V

    :cond_0
    return-void
.end method

.method public onNoAd(Lcom/mgmi/ssp/AdError;)V
    .locals 2
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "adError:"

    const/4 v0, 0x1

    const-string v1, "lyzzzz"

    invoke-static {v1, p1, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object p1, p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    iget v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d(I)V

    return-void
.end method

.method public onRenderFail(Lcom/mgmi/ssp/NativeExpressADView;)V
    .locals 2

    const-string p1, "onRenderFail"

    const/4 v0, 0x1

    const-string v1, "lyzzzz"

    invoke-static {v1, p1, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->c:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    const/4 v0, 0x0

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;->a:I

    invoke-virtual {p1, v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(ZI)V

    return-void
.end method

.method public onRenderSuccess(Lcom/mgmi/ssp/NativeExpressADView;)V
    .locals 1

    const-string p0, "onRenderSuccess"

    const/4 p1, 0x1

    const-string v0, "lyzzzz"

    invoke-static {v0, p0, p1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
