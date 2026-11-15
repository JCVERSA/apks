.class public Lcom/transsion/widgetslistitemlayout/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/c;->j(IZLjava/lang/Runnable;)Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslistitemlayout/c;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$d;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c$d;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/c;->b(Lcom/transsion/widgetslistitemlayout/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/c$d;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p2}, Lcom/transsion/widgetslistitemlayout/c;->c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c$d;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/c;->c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;

    move-result-object p0

    check-cast p1, Landroid/widget/EditText;

    invoke-interface {p0, p1}, Lcom/transsion/widgetslistitemlayout/c$h;->c(Landroid/widget/EditText;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
