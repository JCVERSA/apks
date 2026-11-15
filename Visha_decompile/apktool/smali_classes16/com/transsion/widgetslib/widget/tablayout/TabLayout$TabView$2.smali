.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

.field final synthetic val$selected:Z


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->val$selected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->val$selected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->D:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->b(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->D:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->b(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    return-void
.end method
