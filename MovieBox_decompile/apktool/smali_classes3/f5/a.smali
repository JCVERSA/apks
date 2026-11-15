.class public Lf5/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# static fields
.field public static final a:Lf5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf5/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf5/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf5/a;->a:Lf5/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 1
    check-cast p2, Lorg/javamoney/moneta/Money;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lc5/o0;->C()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 10
    .line 11
    const-string p3, "numberStripped"

    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/javamoney/moneta/Money;->getNumberStripped()Ljava/math/BigDecimal;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    const/16 p5, 0x7b

    .line 18
    .line 19
    invoke-virtual {p1, p5, p3, p4}, Lc5/j1;->T(CLjava/lang/String;Ljava/math/BigDecimal;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/javamoney/moneta/Money;->getCurrency()Ljavax/money/CurrencyUnit;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p2}, Ljavax/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/16 p3, 0x2c

    .line 31
    .line 32
    const-string p4, "currency"

    .line 33
    .line 34
    invoke-virtual {p1, p3, p4, p2}, Lc5/j1;->S(CLjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x7d

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lc5/j1;->write(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, La5/a;->h0()Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "currency"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    instance-of p3, p2, Lcom/alibaba/fastjson/JSONObject;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    .line 16
    .line 17
    const-string p3, "currencyCode"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of p3, p2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    check-cast p2, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    :goto_0
    const-string p3, "numberStripped"

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    instance-of p3, p1, Ljava/math/BigDecimal;

    .line 39
    .line 40
    if-nez p3, :cond_3

    .line 41
    .line 42
    instance-of p3, p1, Ljava/lang/Integer;

    .line 43
    .line 44
    if-nez p3, :cond_3

    .line 45
    .line 46
    instance-of p3, p1, Ljava/math/BigInteger;

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    new-array p3, p3, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p2, p3}, Ljavax/money/Monetary;->getCurrency(Ljava/lang/String;[Ljava/lang/String;)Ljavax/money/CurrencyUnit;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Lorg/javamoney/moneta/Money;->of(Ljava/lang/Number;Ljavax/money/CurrencyUnit;)Lorg/javamoney/moneta/Money;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method
