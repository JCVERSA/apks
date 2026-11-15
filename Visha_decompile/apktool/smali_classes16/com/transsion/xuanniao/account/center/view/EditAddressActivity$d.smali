.class public Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-boolean v0, p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->r:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-boolean p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->s:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
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
