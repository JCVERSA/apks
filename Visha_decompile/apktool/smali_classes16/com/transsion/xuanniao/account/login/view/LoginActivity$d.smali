.class public Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/login/view/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    sget v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K:I

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->M0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H0()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->L0()V

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
