.class public final Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;->a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;->a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->access$getMRectF$p(Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;->a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->access$getMRectF$p(Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;->a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->access$getMRectF$p(Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int v3, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;->a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->access$getMRectF$p(Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView$b;->a:Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;->access$getMCorner$p(Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;)I

    move-result p0

    int-to-float v5, p0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
