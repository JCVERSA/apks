.class Lcom/transsion/widgets/CustomTabLayout$TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomTabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgets/CustomTabLayout$TabView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->this$1:Lcom/transsion/widgets/CustomTabLayout$TabView;

    iput-object p2, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->this$1:Lcom/transsion/widgets/CustomTabLayout$TabView;

    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/transsion/widgets/CustomTabLayout$TabView;->i(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/common/R$id;->custom_tab_item_title:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout$TabView$1;->this$1:Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setTextMaxWidth()V

    :cond_1
    return-void
.end method
