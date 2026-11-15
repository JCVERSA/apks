.class public Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;->c:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;->c:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;->c:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    move-result-object p1

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;->b:I

    invoke-virtual {p1, p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->setcurrentitem(I)V

    :cond_0
    return-void
.end method
