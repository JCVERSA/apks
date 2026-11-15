.class public Lcom/mgtv/task/k;
.super Landroid/app/ProgressDialog;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/i;


# instance fields
.field private a:I


# virtual methods
.method public a()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgtv/task/k;->a:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/task/k;->a:I

    return-void
.end method

.method public hide()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
