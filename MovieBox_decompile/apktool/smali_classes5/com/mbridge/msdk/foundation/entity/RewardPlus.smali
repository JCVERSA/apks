.class public Lcom/mbridge/msdk/foundation/entity/RewardPlus;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/mbridge/msdk/system/NoProGuard;


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final AMOUNT_MAX:Ljava/lang/String; = "amount_max"

.field public static final CALLBACK_RULE:Ljava/lang/String; = "callback_rule"

.field public static final CURRENCY_ID:Ljava/lang/String; = "currency_id"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final VIRTUAL_CURRENCY:Ljava/lang/String; = "virtual_currency"


# instance fields
.field private amount:I

.field private amountMax:I

.field private callbackRule:I

.field private currencyId:I

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private virtualCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    .line 9
    .line 10
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    .line 11
    .line 12
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "Virtual Item"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/RewardPlus;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "amount_max"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setAmountMax(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "callback_rule"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setCallbackRule(I)V

    .line 26
    .line 27
    .line 28
    const-string v1, "virtual_currency"

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setVirtualCurrency(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "icon"

    .line 40
    .line 41
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setIcon(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "currency_id"

    .line 49
    .line 50
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setCurrencyId(I)V

    .line 55
    .line 56
    .line 57
    const-string v1, "amount"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setAmount(I)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const-string v1, "name"

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const-string v2, "Virtual Item"

    .line 81
    .line 82
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->setName(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static parseByString(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/RewardPlus;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->parse(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/RewardPlus;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    .line 2
    .line 3
    return v0
.end method

.method public getAmountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getCallbackRule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrencyId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVirtualCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    .line 2
    .line 3
    return-void
.end method

.method public setAmountMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setCallbackRule(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrencyId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    .line 2
    .line 3
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVirtualCurrency(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "amount_max"

    .line 7
    .line 8
    iget v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "callback_rule"

    .line 14
    .line 15
    iget v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "virtual_currency"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "amount"

    .line 28
    .line 29
    iget v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "icon"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "currency_id"

    .line 42
    .line 43
    iget v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "name"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object v0
.end method
