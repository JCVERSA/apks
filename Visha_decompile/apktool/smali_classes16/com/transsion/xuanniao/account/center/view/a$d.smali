.class public Lcom/transsion/xuanniao/account/center/view/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/a;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setError(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfq7;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    invoke-virtual {v2, v1}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setError(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a$d;->b:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/a;->d:Landroid/widget/Button;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a;->g:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
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
