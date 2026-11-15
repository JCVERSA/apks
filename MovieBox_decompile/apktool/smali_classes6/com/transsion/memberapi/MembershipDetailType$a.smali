.class public final Lcom/transsion/memberapi/MembershipDetailType$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/memberapi/MembershipDetailType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/memberapi/MembershipDetailType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/memberapi/MemberInfo;)Lcom/transsion/memberapi/MembershipDetailType;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->TRIAL:Lcom/transsion/memberapi/MembershipDetailType;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->isAutoRenew()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->SUBSCRIPTION_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->FINANCIAL_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->GUEST:Lcom/transsion/memberapi/MembershipDetailType;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->EXPIRED:Lcom/transsion/memberapi/MembershipDetailType;

    .line 43
    .line 44
    :goto_0
    return-object p1
.end method
