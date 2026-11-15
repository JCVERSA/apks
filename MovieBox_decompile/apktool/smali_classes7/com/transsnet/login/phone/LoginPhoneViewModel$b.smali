.class final Lcom/transsnet/login/phone/LoginPhoneViewModel$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->q(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

.field final synthetic b:Lcom/transsnet/login/phone/LoginPhoneViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;Lcom/transsnet/login/phone/LoginPhoneViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->a:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->a:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getAuthType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->j(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Lnx/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1, p1}, Lnx/a;->k(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->j(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Lnx/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, p1, v2, v1, v2}, Lnx/a$a;->a(Lnx/a;Lokhttp3/RequestBody;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
