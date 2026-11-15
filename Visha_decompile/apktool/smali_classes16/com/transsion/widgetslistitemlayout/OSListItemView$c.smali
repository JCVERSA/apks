.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslistitemlayout/OSListItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v2, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r(Lcom/transsion/widgetslistitemlayout/OSListItemView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adjustViewDescribeTitleWidth()V

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
