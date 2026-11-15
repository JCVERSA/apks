.class Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field final synthetic b:Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    sget p2, Lcom/mgtv/ssp/R$id;->tv_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;->a:Landroid/widget/TextView;

    :cond_0
    return-void
.end method
