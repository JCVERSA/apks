.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field final synthetic i:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

.field private j:Lcom/mgtv/ssp/f;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->i:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz p2, :cond_0

    sget v0, Lcom/mgtv/ssp/R$id;->img_recommend:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_re_des:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_re_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_duration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_vip:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_see_again:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;)Lcom/mgtv/ssp/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->j:Lcom/mgtv/ssp/f;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->j:Lcom/mgtv/ssp/f;

    return-void
.end method
