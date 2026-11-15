.class public Lcom/transsion/widgetslib/widget/FootOperationBar$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->y(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->d:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->d:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->d:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->u(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->d:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$g;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
