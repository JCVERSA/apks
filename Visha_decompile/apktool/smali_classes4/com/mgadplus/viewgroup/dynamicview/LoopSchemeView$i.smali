.class public Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ViewGroup/convenientbanner/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;->b:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgmi/model/d;)Landroid/view/View;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/mgmi/R$layout;->loopscheme_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lcom/mgmi/R$id;->itemimage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;->a:Landroid/widget/ImageView;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    check-cast p2, Lcom/mgmi/model/d;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;->a(Landroid/content/Context;Lcom/mgmi/model/d;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p3, Lcom/mgmi/model/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;->b(Landroid/content/Context;ILcom/mgmi/model/d;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILcom/mgmi/model/d;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;->a:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Llbd;->E:Llbd;

    invoke-static {p2, p3}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Llbd$b;->n(I)Llbd$b;

    move-result-object p2

    invoke-virtual {p2}, Llbd$b;->t()Llbd;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_0
    return-void
.end method
