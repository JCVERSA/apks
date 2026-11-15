.class public Lcom/transsion/widgetslistitemlayout/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/c;->Q(Landroid/widget/TextView;Landroid/view/View;Z)V
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

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$f;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$f;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/c;->a(Lcom/transsion/widgetslistitemlayout/c;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$f;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/c;->a(Lcom/transsion/widgetslistitemlayout/c;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$f;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/c;->c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$f;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/c;->c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c$f;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/c;->a(Lcom/transsion/widgetslistitemlayout/c;)Landroid/widget/EditText;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/widgetslistitemlayout/c$h;->c(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
