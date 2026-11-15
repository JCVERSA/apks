.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$c;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->q(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
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
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->e:Ljava/lang/String;

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
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const v0, 0x30d40

    .line 10
    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->i(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->d(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->e(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->e(Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$c;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->e(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
