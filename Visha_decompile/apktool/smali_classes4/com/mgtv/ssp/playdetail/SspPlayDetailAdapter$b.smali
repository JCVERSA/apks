.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/view/View;

.field final synthetic j:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->j:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz p2, :cond_0

    sget v0, Lcom/mgtv/ssp/R$id;->lay_des_expend:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->a:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->lay_des_expend_tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->b:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_v_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->rv_info_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->iv_expend:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->h:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->g:Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$2;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$2;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;Landroid/content/Context;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    sget p2, Lcom/mgtv/ssp/R$id;->view_bottom_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->i:Landroid/view/View;

    iget-object p1, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
