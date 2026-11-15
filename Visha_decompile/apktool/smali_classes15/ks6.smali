.class public final synthetic Lks6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/MultiFlowLayout;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/transsion/widgets/MultiFlowLayout$FlowBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/MultiFlowLayout;Landroid/widget/TextView;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lks6;->b:Lcom/transsion/widgets/MultiFlowLayout;

    iput-object p2, p0, Lks6;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lks6;->d:Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lks6;->b:Lcom/transsion/widgets/MultiFlowLayout;

    iget-object v1, p0, Lks6;->c:Landroid/widget/TextView;

    iget-object p0, p0, Lks6;->d:Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgets/MultiFlowLayout;->a(Lcom/transsion/widgets/MultiFlowLayout;Landroid/widget/TextView;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Landroid/view/View;)V

    return-void
.end method
