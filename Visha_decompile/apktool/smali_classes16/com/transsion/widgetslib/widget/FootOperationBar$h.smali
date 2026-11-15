.class public Lcom/transsion/widgetslib/widget/FootOperationBar$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->h(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->b:I

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->s(Lcom/transsion/widgetslib/widget/FootOperationBar;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->h(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->b:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$n;->onItemClick(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->c(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->b:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->c:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$h;->b:I

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->t(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V

    :cond_1
    :goto_0
    return-void
.end method
