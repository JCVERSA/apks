.class public Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/AccountInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOOO0:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOOO0:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
