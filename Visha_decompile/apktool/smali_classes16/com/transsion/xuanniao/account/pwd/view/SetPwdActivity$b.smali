.class public Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;->c:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;->c:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-boolean p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;->b:Z

    sget v0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->n:I

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->C0(Z)V

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
