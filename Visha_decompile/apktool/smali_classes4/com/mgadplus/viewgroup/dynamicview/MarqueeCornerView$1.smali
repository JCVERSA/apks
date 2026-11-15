.class Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->a(ZLacc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacc;

.field final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Lacc;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$1;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$1;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->v:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
