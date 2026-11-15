.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$o;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->M(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->e:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->k(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->f(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const v0, 0x30d40

    .line 30
    .line 31
    .line 32
    if-lt p1, v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->i(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->f(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
