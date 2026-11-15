.class public Lcom/transsion/widgetslib/dialog/PromptController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->Z(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$e;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$e;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$e;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->j(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$e;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->j(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$e;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$e;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->m(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
