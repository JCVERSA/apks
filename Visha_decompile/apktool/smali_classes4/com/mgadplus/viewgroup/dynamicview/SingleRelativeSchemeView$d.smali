.class public Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->a(Lcom/mgmi/model/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageButton;

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;->c:Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;->b:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;->b:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget v0, Lcom/mgmi/R$drawable;->dianzan_press:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;->b:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;->c:Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->k(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    return-void
.end method
