.class public final Lcom/transsion/usercenter/ProfileEditNicknameDialog$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/usercenter/t$a;


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


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/ProfileEditNicknameDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$a;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$a;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    .line 4
    .line 5
    sget v2, Lcom/transsion/usercenter/R$string;->profile_edit_nickname_tip:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->a(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
