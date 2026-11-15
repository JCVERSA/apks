.class public final Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;
.super Lcom/transsion/usercenter/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/ProfileEditNicknameDialog;->e0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/ProfileEditNicknameDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->b:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/usercenter/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/usercenter/ProfileEditNicknameDialog;->b0(Lcom/transsion/usercenter/ProfileEditNicknameDialog;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->b:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "/30"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
