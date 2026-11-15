.class public final synthetic Lp14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/FlowLayout;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/transsion/widgets/FlowLayout$FlowBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/FlowLayout;Landroid/widget/TextView;Lcom/transsion/widgets/FlowLayout$FlowBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp14;->b:Lcom/transsion/widgets/FlowLayout;

    iput-object p2, p0, Lp14;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lp14;->d:Lcom/transsion/widgets/FlowLayout$FlowBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lp14;->b:Lcom/transsion/widgets/FlowLayout;

    iget-object v1, p0, Lp14;->c:Landroid/widget/TextView;

    iget-object p0, p0, Lp14;->d:Lcom/transsion/widgets/FlowLayout$FlowBean;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgets/FlowLayout;->a(Lcom/transsion/widgets/FlowLayout;Landroid/widget/TextView;Lcom/transsion/widgets/FlowLayout$FlowBean;Landroid/view/View;)V

    return-void
.end method
