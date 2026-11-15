.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->a(Lcom/mgmi/model/VASTFloatAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$c;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$c;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->y:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a()V

    :cond_0
    return-void
.end method
