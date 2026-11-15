.class public final synthetic Lcom/transsnet/login/phone/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginPhoneFragment;

.field public final synthetic b:Lcom/transsnet/login/phone/LoginPhoneViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginPhoneFragment;Lcom/transsnet/login/phone/LoginPhoneViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/login/phone/m;->a:Lcom/transsnet/login/phone/LoginPhoneFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/login/phone/m;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/m;->a:Lcom/transsnet/login/phone/LoginPhoneFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/login/phone/m;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 4
    .line 5
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsnet/login/phone/LoginPhoneFragment;->f0(Lcom/transsnet/login/phone/LoginPhoneFragment;Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
