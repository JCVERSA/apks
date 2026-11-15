.class public Lcom/transsion/widgetslib/dialog/InputDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->i(Lcom/transsion/widgetslib/dialog/InputDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->k(Lcom/transsion/widgetslib/dialog/InputDialog;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
