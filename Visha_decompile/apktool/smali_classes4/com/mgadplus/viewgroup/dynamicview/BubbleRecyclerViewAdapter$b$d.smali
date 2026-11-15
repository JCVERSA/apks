.class public Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object p1, p1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->k(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;Z)Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->a(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/mgmi/R$id;->rightImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/mgmi/R$drawable;->mgmi_radio_checked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object v0, v0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->s(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$color;->mgmi_bubble_yellow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->c:Landroid/view/View;

    const v0, 0x3f19999a    # 0.6f

    invoke-static {p1, v0}, Ll4d;->a(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object p1, p1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->l(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;->f:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->l(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;->rightClick()V

    :cond_0
    return-void
.end method
