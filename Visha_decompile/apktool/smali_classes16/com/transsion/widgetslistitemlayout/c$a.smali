.class public Lcom/transsion/widgetslistitemlayout/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslistitemlayout/c;
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

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$a;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c$a;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/c;->c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c$a;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/c;->c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/widgetslistitemlayout/c$h;->b()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c$a;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->o()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c$a;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslistitemlayout/c;->P(ZZ)V

    :cond_2
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
