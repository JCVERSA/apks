.class public Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar$l;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetslib/widget/FootOperationBar$l;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar$l;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->c:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->c:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->h(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->c:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->b:I

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->s(Lcom/transsion/widgetslib/widget/FootOperationBar;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->c:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->h(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->b:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$n;->onItemClick(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;->c:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->l(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
