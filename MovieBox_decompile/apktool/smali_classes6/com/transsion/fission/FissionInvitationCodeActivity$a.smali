.class public final Lcom/transsion/fission/FissionInvitationCodeActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/fission/FissionInvitationCodeActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/fission/FissionInvitationCodeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/fission/FissionInvitationCodeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/fission/FissionInvitationCodeActivity$a;->a:Lcom/transsion/fission/FissionInvitationCodeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/FissionInvitationCodeActivity$a;->a:Lcom/transsion/fission/FissionInvitationCodeActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhk/a;

    .line 8
    .line 9
    iget-object v0, v0, Lhk/a;->b:Landroidx/appcompat/widget/AppCompatButton;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-ne p1, v2, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
