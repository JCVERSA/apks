.class public final Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout$a;->a:Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout$a;->a:Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->access$getMTranOutLine$p(Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;)Lcom/transsion/hubsdk/api/graphics/TranOutline;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout$a;->a:Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->access$getMCorner$p(Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;)F

    move-result v7

    sget-object v8, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/hubsdk/api/graphics/TranOutline;->setSmoothRoundRect(Landroid/graphics/Outline;IIIIFLcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;)V

    return-void
.end method
