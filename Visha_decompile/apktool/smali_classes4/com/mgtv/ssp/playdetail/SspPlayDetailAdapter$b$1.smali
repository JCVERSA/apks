.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

.field final synthetic b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->h:Landroid/widget/ImageView;

    sget p1, Lcom/mgtv/ssp/R$drawable;->icon_system_more_unflod:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->h:Landroid/widget/ImageView;

    sget p1, Lcom/mgtv/ssp/R$drawable;->icon_system_more_flod:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
