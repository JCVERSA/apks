.class public final Lcom/transsnet/login/email/a0$c;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/email/a0;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/email/a0;


# direct methods
.method constructor <init>(Lcom/transsnet/login/email/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/email/a0$c;->d:Lcom/transsnet/login/email/a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/transsnet/login/email/a0$c;->d:Lcom/transsnet/login/email/a0;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsnet/login/email/a0;->c(Lcom/transsnet/login/email/a0;)Landroidx/lifecycle/b0;

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
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/email/a0$c;->e(Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/login/email/a0$c;->d:Lcom/transsnet/login/email/a0;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsnet/login/email/a0;->c(Lcom/transsnet/login/email/a0;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
