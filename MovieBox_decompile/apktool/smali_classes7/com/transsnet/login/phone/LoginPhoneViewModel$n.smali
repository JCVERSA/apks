.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$n;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->L(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field final synthetic e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->k(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->n(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->e(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lix/d;->a:Lix/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lix/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getAuthType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "EMAIL"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "PHONE"

    .line 20
    .line 21
    :goto_0
    const-string v2, "login_last_login_type"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->n(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, p1, v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->p(Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
