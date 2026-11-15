.class Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;

    invoke-static {p1}, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;->a(Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;

    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;->b(Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;

    invoke-static {v1}, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;->b(Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;

    invoke-static {p0}, Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;->a(Lcom/transsion/widgetthemes/widget/actionbar/ShadowButton;)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
