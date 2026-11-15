.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$g;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->E(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Ljava/lang/String;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->f:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 6
    .line 7
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->o(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p1, Lix/f;->a:Lix/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lix/f;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->o(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->f:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
