.class public final Lcom/tn/tranpay/bean/PayMethodRequestEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tn/tranpay/bean/PayMethodRequestEntity;",
        "Ljava/io/Serializable;",
        "()V",
        "countryCode",
        "",
        "getCountryCode",
        "()Ljava/lang/String;",
        "setCountryCode",
        "(Ljava/lang/String;)V",
        "currency",
        "getCurrency",
        "setCurrency",
        "txnType",
        "getTxnType",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private countryCode:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private final txnType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->countryCode:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->currency:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "payment"

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->txnType:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTxnType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->txnType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->countryCode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/tranpay/bean/PayMethodRequestEntity;->currency:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
