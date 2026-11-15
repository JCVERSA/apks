.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->setOnFlipTouchEvent(ZLly3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lly3;

.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Lly3;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$e;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$e;->a:Lly3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;FFFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$e;->a:Lly3;

    if-eqz v0, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lly3;->onTp(FFFFFF)V

    :cond_0
    return-void
.end method
