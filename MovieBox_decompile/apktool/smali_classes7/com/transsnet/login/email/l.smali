.class public final synthetic Lcom/transsnet/login/email/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/email/LoginEmailPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/login/email/l;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/l;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    .line 2
    .line 3
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->g0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
