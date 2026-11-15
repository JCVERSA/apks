.class public Lcom/transsion/tools/fragments/EmailVerifyFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailVerifyFragment;->c0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/EmailVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$b;->b:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$b;->b:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p2}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->Q(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$b;->b:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p3}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->R(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/transsion/tools/fragments/EmailVerifyFragment$b$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$b$a;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment$b;)V

    invoke-virtual {p1, p2, p3, v0}, Ltg8;->n(Ljava/lang/String;Ljava/lang/String;Lsv4;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
