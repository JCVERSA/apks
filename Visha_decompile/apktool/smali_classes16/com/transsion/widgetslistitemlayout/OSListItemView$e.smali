.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$e;
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

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setShowSeekbarValue(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
