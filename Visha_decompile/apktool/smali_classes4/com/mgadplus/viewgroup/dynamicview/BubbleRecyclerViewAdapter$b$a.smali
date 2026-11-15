.class public Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;
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
.field public final synthetic b:I

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;->c:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;->c:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object p1, p1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->l(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;->c:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object p1, p1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->l(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;->c:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    iget-object v0, v0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll2d;

    invoke-interface {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;->onImageClick(Ll2d;)V

    :cond_0
    return-void
.end method
