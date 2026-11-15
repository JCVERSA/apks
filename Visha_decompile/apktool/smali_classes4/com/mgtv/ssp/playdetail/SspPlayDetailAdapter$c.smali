.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ProgressBar;

.field public c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->d:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz p2, :cond_0

    sget v0, Lcom/mgtv/ssp/R$id;->textView_empty:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->recommend_progressBar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->b:Landroid/widget/ProgressBar;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->lay_empty:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->c:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_error_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c$1;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c$1;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
