.class public final Lcom/android/billingclient/api/r$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/play_billing/zzaf;

.field private final g:Ljava/lang/Long;

.field private final h:Lcom/android/billingclient/api/z0;

.field private final i:Lcom/android/billingclient/api/c1;

.field private final j:Lcom/android/billingclient/api/a1;

.field private final k:Lcom/android/billingclient/api/b1;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "formattedPrice"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/r$a;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "priceAmountMicros"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/billingclient/api/r$a;->b:J

    .line 19
    .line 20
    const-string v0, "priceCurrencyCode"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/billingclient/api/r$a;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "offerIdToken"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/billingclient/api/r$a;->d:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "offerId"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/billingclient/api/r$a;->e:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "offerType"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const-string v0, "offerTags"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ge v2, v3, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/android/billingclient/api/r$a;->f:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 84
    .line 85
    const-string v0, "fullPriceMicros"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move-object v0, v2

    .line 104
    :goto_1
    iput-object v0, p0, Lcom/android/billingclient/api/r$a;->g:Ljava/lang/Long;

    .line 105
    .line 106
    const-string v0, "discountDisplayInfo"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    move-object v1, v2

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    new-instance v1, Lcom/android/billingclient/api/z0;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/z0;-><init>(Lorg/json/JSONObject;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    iput-object v1, p0, Lcom/android/billingclient/api/r$a;->h:Lcom/android/billingclient/api/z0;

    .line 122
    .line 123
    const-string v0, "validTimeWindow"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    move-object v1, v2

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    new-instance v1, Lcom/android/billingclient/api/c1;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/c1;-><init>(Lorg/json/JSONObject;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    iput-object v1, p0, Lcom/android/billingclient/api/r$a;->i:Lcom/android/billingclient/api/c1;

    .line 139
    .line 140
    const-string v0, "limitedQuantityInfo"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_4

    .line 147
    .line 148
    move-object v1, v2

    .line 149
    goto :goto_4

    .line 150
    :cond_4
    new-instance v1, Lcom/android/billingclient/api/a1;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/a1;-><init>(Lorg/json/JSONObject;)V

    .line 153
    .line 154
    .line 155
    :goto_4
    iput-object v1, p0, Lcom/android/billingclient/api/r$a;->j:Lcom/android/billingclient/api/a1;

    .line 156
    .line 157
    const-string v0, "preorderDetails"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_5
    new-instance v2, Lcom/android/billingclient/api/b1;

    .line 167
    .line 168
    invoke-direct {v2, p1}, Lcom/android/billingclient/api/b1;-><init>(Lorg/json/JSONObject;)V

    .line 169
    .line 170
    .line 171
    :goto_5
    iput-object v2, p0, Lcom/android/billingclient/api/r$a;->k:Lcom/android/billingclient/api/b1;

    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/r$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
