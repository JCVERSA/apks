.class Lcom/android/billingclient/api/i;
.super Lcom/android/billingclient/api/h;
.source "source.java"


# instance fields
.field private A:Ljava/util/concurrent/ExecutorService;

.field private volatile a:I

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;

.field private volatile d:Lcom/android/billingclient/api/q1;

.field private e:Landroid/content/Context;

.field private f:Lcom/android/billingclient/api/n0;

.field private volatile g:Lcom/google/android/gms/internal/play_billing/zzm;

.field private volatile h:Lcom/android/billingclient/api/f0;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/android/billingclient/api/x0;

.field private z:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/h;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/i;->a:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/i;->k:I

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/i;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzv()Lcom/google/android/gms/internal/play_billing/zzin;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzin;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzin;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzio;

    new-instance p3, Lcom/android/billingclient/api/q0;

    .line 8
    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/q0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V

    iput-object p3, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    iget-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/x0;Landroid/content/Context;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/h;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/i;->a:I

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/i;->k:I

    .line 11
    invoke-static {}, Lcom/android/billingclient/api/i;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzv()Lcom/google/android/gms/internal/play_billing/zzin;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/android/billingclient/api/i;->J()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzin;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p3, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 15
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzin;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p3, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzio;

    new-instance p4, Lcom/android/billingclient/api/q0;

    .line 17
    invoke-direct {p4, p3, p1}, Lcom/android/billingclient/api/q0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V

    iput-object p4, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    const-string p1, "BillingClient"

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 18
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/q1;

    iget-object p3, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 19
    invoke-direct {p1, p3, p4, p5}, Lcom/android/billingclient/api/q1;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;)V

    iput-object p1, p0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    iput-object p2, p0, Lcom/android/billingclient/api/i;->y:Lcom/android/billingclient/api/x0;

    iget-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/x0;Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 21
    invoke-static {}, Lcom/android/billingclient/api/i;->J()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/billingclient/api/h;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/i;->a:I

    new-instance p6, Landroid/os/Handler;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/i;->k:I

    iput-object v5, p0, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/i;->g(Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/x0;Lcom/android/billingclient/api/c;Ljava/lang/String;Lcom/android/billingclient/api/n0;)V

    return-void
.end method

.method static synthetic E(Lcom/android/billingclient/api/i;Ljava/lang/String;I)Lcom/android/billingclient/api/e1;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "Querying owned items, item type: "

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "BillingClient"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, v1, Lcom/android/billingclient/api/i;->n:Z

    .line 24
    .line 25
    iget-boolean v4, v1, Lcom/android/billingclient/api/i;->v:Z

    .line 26
    .line 27
    iget-object v5, v1, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static {v3, v4, v6, v7, v5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzd(ZZZZLjava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v12, v4

    .line 37
    :goto_0
    const/16 v5, 0x9

    .line 38
    .line 39
    :try_start_0
    iget-boolean v8, v1, Lcom/android/billingclient/api/i;->n:Z

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    iget-object v8, v1, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 44
    .line 45
    iget-boolean v9, v1, Lcom/android/billingclient/api/i;->v:Z

    .line 46
    .line 47
    if-eq v6, v9, :cond_0

    .line 48
    .line 49
    move v9, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/16 v9, 0x13

    .line 52
    .line 53
    :goto_1
    iget-object v10, v1, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    move-object/from16 v11, p1

    .line 60
    .line 61
    move-object v13, v3

    .line 62
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/zzm;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    move-object/from16 v11, p1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_1
    iget-object v8, v1, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 73
    .line 74
    iget-object v9, v1, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    const/4 v10, 0x3

    .line 81
    move-object/from16 v11, p1

    .line 82
    .line 83
    invoke-interface {v8, v10, v9, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzm;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    const-string v9, "getPurchase()"

    .line 88
    .line 89
    invoke-static {v8, v2, v9}, Lcom/android/billingclient/api/g1;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/f1;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v9}, Lcom/android/billingclient/api/f1;->a()Lcom/android/billingclient/api/n;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    sget-object v12, Lcom/android/billingclient/api/p0;->l:Lcom/android/billingclient/api/n;

    .line 98
    .line 99
    if-eq v10, v12, :cond_2

    .line 100
    .line 101
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 102
    .line 103
    invoke-virtual {v9}, Lcom/android/billingclient/api/f1;->b()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1, v5, v10}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/android/billingclient/api/e1;

    .line 115
    .line 116
    invoke-direct {v0, v10, v4}, Lcom/android/billingclient/api/e1;-><init>(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_2
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 122
    .line 123
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 128
    .line 129
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    const-string v12, "INAPP_DATA_SIGNATURE_LIST"

    .line 134
    .line 135
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    move v13, v7

    .line 140
    move v14, v13

    .line 141
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-ge v13, v15, :cond_4

    .line 146
    .line 147
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    check-cast v15, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v16

    .line 157
    move-object/from16 v6, v16

    .line 158
    .line 159
    check-cast v6, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    check-cast v16, Ljava/lang/String;

    .line 166
    .line 167
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    const-string v4, "Sku is owned: "

    .line 172
    .line 173
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :try_start_1
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    .line 181
    .line 182
    invoke-direct {v4, v15, v6}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_3

    .line 194
    .line 195
    const-string v6, "BUG: empty/null token!"

    .line 196
    .line 197
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const/4 v14, 0x1

    .line 201
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    add-int/lit8 v13, v13, 0x1

    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    const/4 v6, 0x1

    .line 208
    const/4 v7, 0x0

    .line 209
    goto :goto_3

    .line 210
    :catch_1
    move-exception v0

    .line 211
    const-string v3, "Got an exception trying to decode the purchase!"

    .line 212
    .line 213
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 217
    .line 218
    sget-object v1, Lcom/android/billingclient/api/p0;->j:Lcom/android/billingclient/api/n;

    .line 219
    .line 220
    const/16 v2, 0x33

    .line 221
    .line 222
    invoke-static {v2, v5, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/android/billingclient/api/e1;

    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/e1;-><init>(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_4
    if-eqz v14, :cond_5

    .line 237
    .line 238
    iget-object v4, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 239
    .line 240
    const/16 v6, 0x1a

    .line 241
    .line 242
    sget-object v7, Lcom/android/billingclient/api/p0;->j:Lcom/android/billingclient/api/n;

    .line 243
    .line 244
    invoke-static {v6, v5, v7}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-interface {v4, v5}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 249
    .line 250
    .line 251
    :cond_5
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 252
    .line 253
    invoke-virtual {v8, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    const-string v5, "Continuation token: "

    .line 262
    .line 263
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_6

    .line 275
    .line 276
    new-instance v1, Lcom/android/billingclient/api/e1;

    .line 277
    .line 278
    sget-object v2, Lcom/android/billingclient/api/p0;->l:Lcom/android/billingclient/api/n;

    .line 279
    .line 280
    invoke-direct {v1, v2, v0}, Lcom/android/billingclient/api/e1;-><init>(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 281
    .line 282
    .line 283
    move-object v0, v1

    .line 284
    goto :goto_5

    .line 285
    :cond_6
    const/4 v4, 0x0

    .line 286
    const/4 v6, 0x1

    .line 287
    const/4 v7, 0x0

    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :goto_4
    iget-object v1, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 291
    .line 292
    sget-object v3, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 293
    .line 294
    const/16 v4, 0x34

    .line 295
    .line 296
    invoke-static {v4, v5, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-interface {v1, v4}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 301
    .line 302
    .line 303
    const-string v1, "Got exception trying to get purchasesm try to reconnect"

    .line 304
    .line 305
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Lcom/android/billingclient/api/e1;

    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    invoke-direct {v0, v3, v1}, Lcom/android/billingclient/api/e1;-><init>(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 312
    .line 313
    .line 314
    :goto_5
    return-object v0
.end method

.method private final F()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method private final G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/android/billingclient/api/zzj;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzj;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/n;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method static bridge synthetic H(Lcom/android/billingclient/api/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/i;->k:I

    .line 2
    .line 3
    return p0
.end method

.method private final I()Lcom/android/billingclient/api/n;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/i;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/billingclient/api/i;->a:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/billingclient/api/p0;->j:Lcom/android/billingclient/api/n;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 15
    .line 16
    :goto_1
    return-object v0
.end method

.method private static J()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lh5/a;

    .line 2
    .line 3
    const-string v1, "VERSION_NAME"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    const-string v0, "6.1.0"

    .line 18
    .line 19
    return-object v0
.end method

.method private final K(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->A:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/google/android/gms/internal/play_billing/zzb;->zza:I

    .line 6
    .line 7
    new-instance v1, Lcom/android/billingclient/api/b0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/b0;-><init>(Lcom/android/billingclient/api/i;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/billingclient/api/i;->A:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/i;->A:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    long-to-double p2, p2

    .line 25
    new-instance v0, Lcom/android/billingclient/api/zzn;

    .line 26
    .line 27
    invoke-direct {v0, p1, p4}, Lcom/android/billingclient/api/zzn;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    const-wide v1, 0x3fee666666666666L    # 0.95

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr p2, v1

    .line 36
    double-to-long p2, p2

    .line 37
    invoke-virtual {p5, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const-string p2, "BillingClient"

    .line 43
    .line 44
    const-string p3, "Async task throws exception!"

    .line 45
    .line 46
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method private final L(Ljava/lang/String;Lcom/android/billingclient/api/u;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 10
    .line 11
    sget-object v0, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/u;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string p1, "BillingClient"

    .line 36
    .line 37
    const-string v0, "Please provide a valid product type."

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 43
    .line 44
    sget-object v0, Lcom/android/billingclient/api/p0;->g:Lcom/android/billingclient/api/n;

    .line 45
    .line 46
    const/16 v2, 0x32

    .line 47
    .line 48
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/u;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/c0;

    .line 64
    .line 65
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/c0;-><init>(Lcom/android/billingclient/api/i;Ljava/lang/String;Lcom/android/billingclient/api/u;)V

    .line 66
    .line 67
    .line 68
    new-instance v6, Lcom/android/billingclient/api/zzs;

    .line 69
    .line 70
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzs;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/u;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/android/billingclient/api/i;->F()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-wide/16 v4, 0x7530

    .line 78
    .line 79
    move-object v2, p0

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/i;->K(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/android/billingclient/api/i;->I()Lcom/android/billingclient/api/n;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 91
    .line 92
    const/16 v2, 0x19

    .line 93
    .line 94
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/u;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method static bridge synthetic M(Lcom/android/billingclient/api/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic P(Lcom/android/billingclient/api/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/i;->F()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic Q(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/q1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic R(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic S(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/i;->I()Lcom/android/billingclient/api/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic T(Lcom/android/billingclient/api/i;)Lcom/google/android/gms/internal/play_billing/zzm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic V(Lcom/android/billingclient/api/i;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 6

    .line 1
    const-wide/16 v2, 0x7530

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/i;->K(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method static bridge synthetic W(Lcom/android/billingclient/api/i;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/i;->a:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic X(Lcom/android/billingclient/api/i;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/i;->k:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic Y(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic Z(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic a0(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic b0(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method private g(Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/x0;Lcom/android/billingclient/api/c;Ljava/lang/String;Lcom/android/billingclient/api/n0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzv()Lcom/google/android/gms/internal/play_billing/zzin;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzin;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    .line 12
    .line 13
    .line 14
    iget-object p5, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzin;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    .line 21
    .line 22
    .line 23
    if-eqz p6, :cond_0

    .line 24
    .line 25
    iput-object p6, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzio;

    .line 35
    .line 36
    new-instance p6, Lcom/android/billingclient/api/q0;

    .line 37
    .line 38
    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/q0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V

    .line 39
    .line 40
    .line 41
    iput-object p6, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 42
    .line 43
    :goto_0
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string p1, "BillingClient"

    .line 46
    .line 47
    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 48
    .line 49
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance p1, Lcom/android/billingclient/api/q1;

    .line 53
    .line 54
    iget-object p5, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 55
    .line 56
    iget-object p6, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 57
    .line 58
    invoke-direct {p1, p5, p2, p4, p6}, Lcom/android/billingclient/api/q1;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/android/billingclient/api/i;->y:Lcom/android/billingclient/api/x0;

    .line 64
    .line 65
    if-eqz p4, :cond_2

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->z:Z

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method static bridge synthetic h(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic i(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic j(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic k(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic l(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic m(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic n(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic o(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic p(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic q(Lcom/android/billingclient/api/i;Lcom/google/android/gms/internal/play_billing/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic r(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic s(Lcom/android/billingclient/api/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/i;->i:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method final synthetic A(Lcom/android/billingclient/api/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xb

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic B(Lcom/android/billingclient/api/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/u;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method final synthetic C(Lcom/android/billingclient/api/y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/y;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic D(Lcom/android/billingclient/api/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/e;->a(Lcom/android/billingclient/api/n;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method final synthetic N(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/m;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v5, 0x0

    .line 10
    move v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v6, p5

    .line 14
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzm;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method final synthetic O(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x3

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzm;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method final synthetic U(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/w;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/w;->b()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v11

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    const/4 v13, 0x0

    .line 24
    if-ge v4, v11, :cond_e

    .line 25
    .line 26
    add-int/lit8 v14, v4, 0x14

    .line 27
    .line 28
    if-le v14, v11, :cond_0

    .line 29
    .line 30
    move v5, v11

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v5, v14

    .line 33
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {v10, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v7, 0x0

    .line 52
    :goto_2
    if-ge v7, v5, :cond_1

    .line 53
    .line 54
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Lcom/android/billingclient/api/w$b;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/android/billingclient/api/w$b;->b()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v5, "ITEM_ID_LIST"

    .line 76
    .line 77
    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v1, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 81
    .line 82
    const-string v5, "playBillingLibraryVersion"

    .line 83
    .line 84
    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    iget-object v4, v1, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 88
    .line 89
    iget-boolean v7, v1, Lcom/android/billingclient/api/i;->w:Z

    .line 90
    .line 91
    const/4 v9, 0x1

    .line 92
    if-eq v9, v7, :cond_2

    .line 93
    .line 94
    const/16 v7, 0x11

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    const/16 v7, 0x14

    .line 98
    .line 99
    :goto_3
    iget-object v12, v1, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    iget-object v15, v1, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    if-eqz v16, :cond_3

    .line 112
    .line 113
    iget-object v13, v1, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const/4 v4, 0x6

    .line 121
    const/4 v10, 0x7

    .line 122
    goto/16 :goto_9

    .line 123
    .line 124
    :cond_3
    :goto_4
    new-instance v13, Landroid/os/Bundle;

    .line 125
    .line 126
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v5, "enablePendingPurchases"

    .line 133
    .line 134
    invoke-virtual {v13, v5, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    const-string v5, "SKU_DETAILS_RESPONSE_FORMAT"

    .line 138
    .line 139
    const-string v15, "PRODUCT_DETAILS"

    .line 140
    .line 141
    invoke-virtual {v13, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v5, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v15, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    move-object/from16 v18, v10

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    const/16 v19, 0x0

    .line 162
    .line 163
    const/16 v20, 0x0

    .line 164
    .line 165
    :goto_5
    if-ge v10, v9, :cond_5

    .line 166
    .line 167
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v21

    .line 171
    check-cast v21, Lcom/android/billingclient/api/w$b;

    .line 172
    .line 173
    move-object/from16 v22, v6

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v23

    .line 183
    const/4 v6, 0x1

    .line 184
    xor-int/lit8 v17, v23, 0x1

    .line 185
    .line 186
    or-int v19, v19, v17

    .line 187
    .line 188
    invoke-virtual/range {v21 .. v21}, Lcom/android/billingclient/api/w$b;->c()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    move/from16 v21, v9

    .line 193
    .line 194
    const-string v9, "first_party"

    .line 195
    .line 196
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_4

    .line 201
    .line 202
    const-string v6, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    .line 203
    .line 204
    const/4 v9, 0x0

    .line 205
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/play_billing/zzx;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    const/16 v20, 0x1

    .line 212
    .line 213
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 214
    .line 215
    move/from16 v9, v21

    .line 216
    .line 217
    move-object/from16 v6, v22

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_5
    if-eqz v19, :cond_6

    .line 221
    .line 222
    const-string v6, "SKU_OFFER_ID_TOKEN_LIST"

    .line 223
    .line 224
    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    .line 226
    .line 227
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-nez v5, :cond_7

    .line 232
    .line 233
    const-string v5, "SKU_SERIALIZED_DOCID_LIST"

    .line 234
    .line 235
    invoke-virtual {v13, v5, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 236
    .line 237
    .line 238
    :cond_7
    if-eqz v20, :cond_8

    .line 239
    .line 240
    const/4 v5, 0x0

    .line 241
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_8

    .line 246
    .line 247
    const-string v6, "accountName"

    .line 248
    .line 249
    invoke-virtual {v13, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .line 251
    .line 252
    :cond_8
    move v5, v7

    .line 253
    move-object v6, v12

    .line 254
    move-object v7, v0

    .line 255
    const/4 v10, 0x7

    .line 256
    move-object v9, v13

    .line 257
    :try_start_1
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/play_billing/zzm;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 258
    .line 259
    .line 260
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 261
    const/4 v5, 0x4

    .line 262
    const-string v6, "Item is unavailable for purchase."

    .line 263
    .line 264
    if-nez v4, :cond_9

    .line 265
    .line 266
    const-string v0, "queryProductDetailsAsync got empty product details response."

    .line 267
    .line 268
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 272
    .line 273
    const/16 v2, 0x2c

    .line 274
    .line 275
    sget-object v4, Lcom/android/billingclient/api/p0;->B:Lcom/android/billingclient/api/n;

    .line 276
    .line 277
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 282
    .line 283
    .line 284
    :goto_6
    move v12, v5

    .line 285
    goto/16 :goto_a

    .line 286
    .line 287
    :cond_9
    const-string v7, "DETAILS_LIST"

    .line 288
    .line 289
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-nez v8, :cond_b

    .line 294
    .line 295
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    if-eqz v12, :cond_a

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 311
    .line 312
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 326
    .line 327
    const/16 v2, 0x17

    .line 328
    .line 329
    invoke-static {v12, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/n;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_a

    .line 341
    .line 342
    :cond_a
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 343
    .line 344
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 348
    .line 349
    const/16 v2, 0x2d

    .line 350
    .line 351
    const/4 v4, 0x6

    .line 352
    invoke-static {v4, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/n;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 361
    .line 362
    .line 363
    const/4 v12, 0x6

    .line 364
    goto/16 :goto_a

    .line 365
    .line 366
    :cond_b
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    if-nez v4, :cond_c

    .line 371
    .line 372
    const-string v0, "queryProductDetailsAsync got null response list"

    .line 373
    .line 374
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 378
    .line 379
    const/16 v2, 0x2e

    .line 380
    .line 381
    sget-object v4, Lcom/android/billingclient/api/p0;->B:Lcom/android/billingclient/api/n;

    .line 382
    .line 383
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_c
    const/4 v5, 0x0

    .line 392
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-ge v5, v6, :cond_d

    .line 397
    .line 398
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    check-cast v6, Ljava/lang/String;

    .line 403
    .line 404
    :try_start_2
    new-instance v7, Lcom/android/billingclient/api/r;

    .line 405
    .line 406
    invoke-direct {v7, v6}, Lcom/android/billingclient/api/r;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 407
    .line 408
    .line 409
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    const-string v8, "Got product details: "

    .line 414
    .line 415
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    add-int/lit8 v5, v5, 0x1

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :catch_1
    move-exception v0

    .line 429
    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 430
    .line 431
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 435
    .line 436
    const/16 v2, 0x2f

    .line 437
    .line 438
    const-string v6, "Error trying to decode SkuDetails."

    .line 439
    .line 440
    const/4 v4, 0x6

    .line 441
    invoke-static {v4, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/n;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 450
    .line 451
    .line 452
    :goto_8
    move v12, v4

    .line 453
    goto :goto_a

    .line 454
    :cond_d
    move v4, v14

    .line 455
    move-object/from16 v10, v18

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :catch_2
    move-exception v0

    .line 460
    const/4 v4, 0x6

    .line 461
    :goto_9
    const-string v5, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 462
    .line 463
    invoke-static {v2, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, v1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 467
    .line 468
    const/16 v2, 0x2b

    .line 469
    .line 470
    sget-object v5, Lcom/android/billingclient/api/p0;->j:Lcom/android/billingclient/api/n;

    .line 471
    .line 472
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 477
    .line 478
    .line 479
    const-string v6, "An internal error occurred."

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_e
    const-string v6, ""

    .line 483
    .line 484
    const/4 v12, 0x0

    .line 485
    :goto_a
    invoke-static {v12, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/n;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    move-object/from16 v2, p2

    .line 490
    .line 491
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/s;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 492
    .line 493
    .line 494
    const/4 v2, 0x0

    .line 495
    return-object v2
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/billingclient/api/i;->g:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/i;->h:Lcom/android/billingclient/api/f0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final b(Landroid/app/Activity;Lcom/android/billingclient/api/m;)Lcom/android/billingclient/api/n;
    .locals 24

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v9, "BUY_INTENT"

    .line 6
    .line 7
    const-string v1, "proxyPackageVersion"

    .line 8
    .line 9
    iget-object v2, v8, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 10
    .line 11
    const/4 v10, 0x2

    .line 12
    if-eqz v2, :cond_2e

    .line 13
    .line 14
    iget-object v2, v8, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/billingclient/api/q1;->d()Lcom/android/billingclient/api/v;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_2e

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/i;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 29
    .line 30
    sget-object v1, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 31
    .line 32
    invoke-static {v10, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->h()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->i()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzak;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzak;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/billingclient/api/m$b;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6}, Lcom/android/billingclient/api/r;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const-string v11, "subs"

    .line 82
    .line 83
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    const/16 v12, 0x9

    .line 88
    .line 89
    const-string v13, "BillingClient"

    .line 90
    .line 91
    if-eqz v11, :cond_2

    .line 92
    .line 93
    iget-boolean v11, v8, Lcom/android/billingclient/api/i;->i:Z

    .line 94
    .line 95
    if-eqz v11, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 99
    .line 100
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 104
    .line 105
    sget-object v1, Lcom/android/billingclient/api/p0;->o:Lcom/android/billingclient/api/n;

    .line 106
    .line 107
    invoke-static {v12, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 115
    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->r()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_4

    .line 123
    .line 124
    iget-boolean v11, v8, Lcom/android/billingclient/api/i;->l:Z

    .line 125
    .line 126
    if-eqz v11, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 130
    .line 131
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 135
    .line 136
    sget-object v1, Lcom/android/billingclient/api/p0;->h:Lcom/android/billingclient/api/n;

    .line 137
    .line 138
    const/16 v2, 0x12

    .line 139
    .line 140
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    const/4 v14, 0x1

    .line 156
    if-le v11, v14, :cond_6

    .line 157
    .line 158
    iget-boolean v11, v8, Lcom/android/billingclient/api/i;->s:Z

    .line 159
    .line 160
    if-eqz v11, :cond_5

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 164
    .line 165
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 169
    .line 170
    sget-object v1, Lcom/android/billingclient/api/p0;->t:Lcom/android/billingclient/api/n;

    .line 171
    .line 172
    const/16 v2, 0x13

    .line 173
    .line 174
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-nez v11, :cond_8

    .line 190
    .line 191
    iget-boolean v11, v8, Lcom/android/billingclient/api/i;->t:Z

    .line 192
    .line 193
    if-eqz v11, :cond_7

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 197
    .line 198
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 202
    .line 203
    sget-object v1, Lcom/android/billingclient/api/p0;->v:Lcom/android/billingclient/api/n;

    .line 204
    .line 205
    const/16 v2, 0x14

    .line 206
    .line 207
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 212
    .line 213
    .line 214
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 215
    .line 216
    .line 217
    return-object v1

    .line 218
    :cond_8
    :goto_3
    iget-boolean v11, v8, Lcom/android/billingclient/api/i;->l:Z

    .line 219
    .line 220
    if-eqz v11, :cond_2a

    .line 221
    .line 222
    iget-boolean v11, v8, Lcom/android/billingclient/api/i;->n:Z

    .line 223
    .line 224
    iget-boolean v15, v8, Lcom/android/billingclient/api/i;->z:Z

    .line 225
    .line 226
    iget-object v12, v8, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 227
    .line 228
    new-instance v10, Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v4, "playBillingLibraryVersion"

    .line 234
    .line 235
    invoke-virtual {v10, v4, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->c()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    const-string v12, "prorationMode"

    .line 243
    .line 244
    if-eqz v4, :cond_9

    .line 245
    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->c()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->b()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_a

    .line 259
    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->b()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    :cond_a
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->d()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-nez v4, :cond_b

    .line 276
    .line 277
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->d()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    const-string v12, "accountId"

    .line 282
    .line 283
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->e()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-nez v4, :cond_c

    .line 295
    .line 296
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->e()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    const-string v12, "obfuscatedProfileId"

    .line 301
    .line 302
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->q()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_d

    .line 310
    .line 311
    const-string v4, "isOfferPersonalizedByDeveloper"

    .line 312
    .line 313
    invoke-virtual {v10, v4, v14}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    .line 315
    .line 316
    :cond_d
    const/4 v4, 0x0

    .line 317
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    if-nez v12, :cond_e

    .line 322
    .line 323
    new-instance v12, Ljava/util/ArrayList;

    .line 324
    .line 325
    filled-new-array {v4}, [Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    .line 335
    .line 336
    const-string v4, "skusToReplace"

    .line 337
    .line 338
    invoke-virtual {v10, v4, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 339
    .line 340
    .line 341
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->f()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-nez v4, :cond_f

    .line 350
    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->f()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    const-string v12, "oldSkuPurchaseToken"

    .line 356
    .line 357
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :cond_f
    const/4 v4, 0x0

    .line 361
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v12

    .line 365
    if-nez v12, :cond_10

    .line 366
    .line 367
    const-string v12, "oldSkuPurchaseId"

    .line 368
    .line 369
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->g()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v12

    .line 376
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-nez v12, :cond_11

    .line 381
    .line 382
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/m;->g()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    const-string v14, "originalExternalTransactionId"

    .line 387
    .line 388
    invoke-virtual {v10, v14, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v12

    .line 395
    if-nez v12, :cond_12

    .line 396
    .line 397
    const-string v12, "paymentsPurchaseParams"

    .line 398
    .line 399
    invoke-virtual {v10, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_12
    if-eqz v11, :cond_13

    .line 403
    .line 404
    const-string v4, "enablePendingPurchases"

    .line 405
    .line 406
    const/4 v11, 0x1

    .line 407
    invoke-virtual {v10, v4, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_13
    const/4 v11, 0x1

    .line 412
    :goto_5
    if-eqz v15, :cond_14

    .line 413
    .line 414
    const-string v4, "enableAlternativeBilling"

    .line 415
    .line 416
    invoke-virtual {v10, v4, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    .line 418
    .line 419
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    const-string v11, "SKU_OFFER_ID_TOKEN_LIST"

    .line 424
    .line 425
    const-string v12, "additionalSkuTypes"

    .line 426
    .line 427
    const-string v14, "additionalSkus"

    .line 428
    .line 429
    const-string v15, "skuDetailsTokens"

    .line 430
    .line 431
    move-object/from16 v17, v9

    .line 432
    .line 433
    if-nez v4, :cond_19

    .line 434
    .line 435
    new-instance v4, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .line 439
    .line 440
    new-instance v18, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .line 444
    .line 445
    new-instance v18, Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .line 449
    .line 450
    new-instance v18, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .line 454
    .line 455
    new-instance v18, Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v18

    .line 464
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v19

    .line 468
    if-nez v19, :cond_18

    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v18

    .line 474
    if-nez v18, :cond_15

    .line 475
    .line 476
    invoke-virtual {v10, v15, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 477
    .line 478
    .line 479
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    const/4 v15, 0x1

    .line 484
    if-le v4, v15, :cond_16

    .line 485
    .line 486
    new-instance v4, Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 489
    .line 490
    .line 491
    move-result v16

    .line 492
    add-int/lit8 v9, v16, -0x1

    .line 493
    .line 494
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .line 496
    .line 497
    new-instance v9, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 500
    .line 501
    .line 502
    move-result v16

    .line 503
    add-int/lit8 v15, v16, -0x1

    .line 504
    .line 505
    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 506
    .line 507
    .line 508
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 509
    .line 510
    .line 511
    move-result v15

    .line 512
    const/4 v0, 0x1

    .line 513
    if-lt v0, v15, :cond_17

    .line 514
    .line 515
    invoke-virtual {v10, v14, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v10, v12, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 519
    .line 520
    .line 521
    :cond_16
    move-object/from16 v21, v1

    .line 522
    .line 523
    move-object/from16 v20, v6

    .line 524
    .line 525
    move-object/from16 v18, v7

    .line 526
    .line 527
    move-object/from16 v23, v13

    .line 528
    .line 529
    goto/16 :goto_8

    .line 530
    .line 531
    :cond_17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    const/4 v2, 0x0

    .line 539
    throw v2

    .line 540
    :cond_18
    const/4 v2, 0x0

    .line 541
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    throw v2

    .line 549
    :cond_19
    const/4 v0, 0x1

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    add-int/lit8 v4, v4, -0x1

    .line 557
    .line 558
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    .line 560
    .line 561
    new-instance v4, Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    add-int/lit8 v9, v9, -0x1

    .line 568
    .line 569
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .line 571
    .line 572
    new-instance v9, Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .line 576
    .line 577
    new-instance v0, Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .line 581
    .line 582
    move-object/from16 v18, v7

    .line 583
    .line 584
    new-instance v7, Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .line 588
    .line 589
    move-object/from16 v21, v1

    .line 590
    .line 591
    move-object/from16 v20, v6

    .line 592
    .line 593
    const/4 v6, 0x0

    .line 594
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    if-ge v6, v1, :cond_1d

    .line 599
    .line 600
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    check-cast v1, Lcom/android/billingclient/api/m$b;

    .line 605
    .line 606
    invoke-virtual {v1}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 607
    .line 608
    .line 609
    move-result-object v22

    .line 610
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/r;->f()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v23

    .line 614
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    .line 615
    .line 616
    .line 617
    move-result v23

    .line 618
    if-nez v23, :cond_1a

    .line 619
    .line 620
    move-object/from16 v23, v13

    .line 621
    .line 622
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/r;->f()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v13

    .line 626
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    goto :goto_7

    .line 630
    :cond_1a
    move-object/from16 v23, v13

    .line 631
    .line 632
    :goto_7
    invoke-virtual {v1}, Lcom/android/billingclient/api/m$b;->c()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/r;->g()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-nez v1, :cond_1b

    .line 648
    .line 649
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/r;->g()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    :cond_1b
    if-lez v6, :cond_1c

    .line 657
    .line 658
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    check-cast v1, Lcom/android/billingclient/api/m$b;

    .line 663
    .line 664
    invoke-virtual {v1}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lcom/android/billingclient/api/r;->b()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    check-cast v1, Lcom/android/billingclient/api/m$b;

    .line 680
    .line 681
    invoke-virtual {v1}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    invoke-virtual {v1}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    .line 693
    .line 694
    move-object/from16 v13, v23

    .line 695
    .line 696
    goto :goto_6

    .line 697
    :cond_1d
    move-object/from16 v23, v13

    .line 698
    .line 699
    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    if-nez v0, :cond_1e

    .line 707
    .line 708
    invoke-virtual {v10, v15, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 709
    .line 710
    .line 711
    :cond_1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 712
    .line 713
    .line 714
    move-result v0

    .line 715
    if-nez v0, :cond_1f

    .line 716
    .line 717
    const-string v0, "SKU_SERIALIZED_DOCID_LIST"

    .line 718
    .line 719
    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 720
    .line 721
    .line 722
    :cond_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    if-nez v0, :cond_20

    .line 727
    .line 728
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v10, v12, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 732
    .line 733
    .line 734
    :cond_20
    :goto_8
    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-eqz v0, :cond_22

    .line 739
    .line 740
    iget-boolean v0, v8, Lcom/android/billingclient/api/i;->q:Z

    .line 741
    .line 742
    if-eqz v0, :cond_21

    .line 743
    .line 744
    goto :goto_9

    .line 745
    :cond_21
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 746
    .line 747
    sget-object v1, Lcom/android/billingclient/api/p0;->u:Lcom/android/billingclient/api/n;

    .line 748
    .line 749
    const/16 v2, 0x15

    .line 750
    .line 751
    const/4 v3, 0x2

    .line 752
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 757
    .line 758
    .line 759
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 760
    .line 761
    .line 762
    return-object v1

    .line 763
    :cond_22
    :goto_9
    if-eqz v5, :cond_23

    .line 764
    .line 765
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_23

    .line 778
    .line 779
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    const-string v1, "skuPackageName"

    .line 788
    .line 789
    invoke-virtual {v10, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    const/4 v0, 0x0

    .line 793
    const/4 v14, 0x1

    .line 794
    goto :goto_a

    .line 795
    :cond_23
    const/4 v0, 0x0

    .line 796
    const/4 v14, 0x0

    .line 797
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    if-nez v1, :cond_24

    .line 802
    .line 803
    const-string v1, "accountName"

    .line 804
    .line 805
    invoke-virtual {v10, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    if-nez v0, :cond_25

    .line 813
    .line 814
    const-string v0, "Activity\'s intent is null."

    .line 815
    .line 816
    move-object/from16 v9, v23

    .line 817
    .line 818
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    goto :goto_b

    .line 822
    :cond_25
    move-object/from16 v9, v23

    .line 823
    .line 824
    const-string v1, "PROXY_PACKAGE"

    .line 825
    .line 826
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    if-nez v2, :cond_26

    .line 835
    .line 836
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    const-string v1, "proxyPackage"

    .line 841
    .line 842
    invoke-virtual {v10, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    :try_start_0
    iget-object v1, v8, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 846
    .line 847
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    const/4 v2, 0x0

    .line 852
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .line 858
    move-object/from16 v1, v21

    .line 859
    .line 860
    :try_start_1
    invoke-virtual {v10, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    .line 862
    .line 863
    goto :goto_b

    .line 864
    :catch_0
    move-object/from16 v1, v21

    .line 865
    .line 866
    :catch_1
    const-string v0, "package not found"

    .line 867
    .line 868
    invoke-virtual {v10, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    :cond_26
    :goto_b
    iget-boolean v0, v8, Lcom/android/billingclient/api/i;->t:Z

    .line 872
    .line 873
    if-eqz v0, :cond_27

    .line 874
    .line 875
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    if-nez v0, :cond_27

    .line 880
    .line 881
    const/16 v0, 0x11

    .line 882
    .line 883
    :goto_c
    move v3, v0

    .line 884
    goto :goto_d

    .line 885
    :cond_27
    iget-boolean v0, v8, Lcom/android/billingclient/api/i;->r:Z

    .line 886
    .line 887
    if-eqz v0, :cond_28

    .line 888
    .line 889
    if-eqz v14, :cond_28

    .line 890
    .line 891
    const/16 v0, 0xf

    .line 892
    .line 893
    goto :goto_c

    .line 894
    :cond_28
    iget-boolean v0, v8, Lcom/android/billingclient/api/i;->n:Z

    .line 895
    .line 896
    if-eqz v0, :cond_29

    .line 897
    .line 898
    const/16 v3, 0x9

    .line 899
    .line 900
    goto :goto_d

    .line 901
    :cond_29
    const/4 v0, 0x6

    .line 902
    goto :goto_c

    .line 903
    :goto_d
    new-instance v0, Lcom/android/billingclient/api/z;

    .line 904
    .line 905
    move-object v1, v0

    .line 906
    move-object/from16 v2, p0

    .line 907
    .line 908
    move-object/from16 v4, v20

    .line 909
    .line 910
    move-object/from16 v5, v18

    .line 911
    .line 912
    move-object/from16 v6, p2

    .line 913
    .line 914
    move-object v7, v10

    .line 915
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/z;-><init>(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/m;Landroid/os/Bundle;)V

    .line 916
    .line 917
    .line 918
    const/4 v5, 0x0

    .line 919
    iget-object v6, v8, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    .line 920
    .line 921
    const-wide/16 v3, 0x1388

    .line 922
    .line 923
    move-object/from16 v1, p0

    .line 924
    .line 925
    move-object v2, v0

    .line 926
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/i;->K(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    const/16 v1, 0x4e

    .line 931
    .line 932
    goto :goto_e

    .line 933
    :cond_2a
    move-object/from16 v20, v6

    .line 934
    .line 935
    move-object/from16 v18, v7

    .line 936
    .line 937
    move-object/from16 v17, v9

    .line 938
    .line 939
    move-object v9, v13

    .line 940
    new-instance v2, Lcom/android/billingclient/api/a0;

    .line 941
    .line 942
    move-object/from16 v1, v18

    .line 943
    .line 944
    move-object/from16 v0, v20

    .line 945
    .line 946
    invoke-direct {v2, v8, v0, v1}, Lcom/android/billingclient/api/a0;-><init>(Lcom/android/billingclient/api/i;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    const/4 v5, 0x0

    .line 950
    iget-object v6, v8, Lcom/android/billingclient/api/i;->c:Landroid/os/Handler;

    .line 951
    .line 952
    const-wide/16 v3, 0x1388

    .line 953
    .line 954
    move-object/from16 v1, p0

    .line 955
    .line 956
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/i;->K(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    const/16 v1, 0x50

    .line 961
    .line 962
    :goto_e
    if-nez v0, :cond_2b

    .line 963
    .line 964
    :try_start_2
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 965
    .line 966
    sget-object v1, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 967
    .line 968
    const/16 v2, 0x19

    .line 969
    .line 970
    const/4 v3, 0x2

    .line 971
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 976
    .line 977
    .line 978
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 979
    .line 980
    .line 981
    return-object v1

    .line 982
    :catch_2
    move-exception v0

    .line 983
    goto :goto_f

    .line 984
    :catch_3
    move-exception v0

    .line 985
    goto :goto_10

    .line 986
    :catch_4
    move-exception v0

    .line 987
    goto :goto_10

    .line 988
    :cond_2b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 989
    .line 990
    const-wide/16 v3, 0x1388

    .line 991
    .line 992
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    check-cast v0, Landroid/os/Bundle;

    .line 997
    .line 998
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 999
    .line 1000
    .line 1001
    move-result v2

    .line 1002
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    if-eqz v2, :cond_2d

    .line 1007
    .line 1008
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    .line 1012
    .line 1013
    const-string v5, "Unable to buy item, Error response code: "

    .line 1014
    .line 1015
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v2, v3}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/n;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    iget-object v3, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 1033
    .line 1034
    if-eqz v0, :cond_2c

    .line 1035
    .line 1036
    const/16 v1, 0x17

    .line 1037
    .line 1038
    :cond_2c
    const/4 v4, 0x2

    .line 1039
    invoke-static {v1, v4, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-interface {v3, v0}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-direct {v8, v2}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 1047
    .line 1048
    .line 1049
    return-object v2

    .line 1050
    :cond_2d
    new-instance v1, Landroid/content/Intent;

    .line 1051
    .line 1052
    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1053
    .line 1054
    move-object/from16 v3, p1

    .line 1055
    .line 1056
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v2, v17

    .line 1060
    .line 1061
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    check-cast v0, Landroid/app/PendingIntent;

    .line 1066
    .line 1067
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1071
    .line 1072
    .line 1073
    sget-object v0, Lcom/android/billingclient/api/p0;->l:Lcom/android/billingclient/api/n;

    .line 1074
    .line 1075
    return-object v0

    .line 1076
    :goto_f
    const-string v1, "Exception while launching billing flow. Try to reconnect"

    .line 1077
    .line 1078
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    .line 1080
    .line 1081
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 1082
    .line 1083
    sget-object v1, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 1084
    .line 1085
    const/4 v2, 0x5

    .line 1086
    const/4 v3, 0x2

    .line 1087
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 1095
    .line 1096
    .line 1097
    return-object v1

    .line 1098
    :goto_10
    const-string v1, "Time out while launching billing flow. Try to reconnect"

    .line 1099
    .line 1100
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1101
    .line 1102
    .line 1103
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 1104
    .line 1105
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 1106
    .line 1107
    const/4 v2, 0x4

    .line 1108
    const/4 v3, 0x2

    .line 1109
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/i;->G(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/n;

    .line 1117
    .line 1118
    .line 1119
    return-object v1

    .line 1120
    :cond_2e
    move v3, v10

    .line 1121
    iget-object v0, v8, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 1122
    .line 1123
    sget-object v1, Lcom/android/billingclient/api/p0;->E:Lcom/android/billingclient/api/n;

    .line 1124
    .line 1125
    const/16 v2, 0xc

    .line 1126
    .line 1127
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1132
    .line 1133
    .line 1134
    return-object v1
.end method

.method public final d(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/s;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/i;->t:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string p1, "BillingClient"

    .line 34
    .line 35
    const-string v0, "Querying product details is not supported."

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 41
    .line 42
    sget-object v0, Lcom/android/billingclient/api/p0;->v:Lcom/android/billingclient/api/n;

    .line 43
    .line 44
    const/16 v2, 0x14

    .line 45
    .line 46
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/s;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/s1;

    .line 63
    .line 64
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/s1;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Lcom/android/billingclient/api/zzz;

    .line 68
    .line 69
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/s;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/android/billingclient/api/i;->F()Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const-wide/16 v4, 0x7530

    .line 77
    .line 78
    move-object v2, p0

    .line 79
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/i;->K(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_2

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/android/billingclient/api/i;->I()Lcom/android/billingclient/api/n;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 90
    .line 91
    const/16 v2, 0x19

    .line 92
    .line 93
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/s;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final e(Lcom/android/billingclient/api/x;Lcom/android/billingclient/api/u;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/x;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/i;->L(Ljava/lang/String;Lcom/android/billingclient/api/u;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(Lcom/android/billingclient/api/j;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const-string v2, "BillingClient"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 11
    .line 12
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/billingclient/api/m0;->b(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->c(Lcom/google/android/gms/internal/play_billing/zzic;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/android/billingclient/api/p0;->l:Lcom/android/billingclient/api/n;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/n;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/i;->a:I

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    const-string v0, "Client is already in the process of connecting to billing service."

    .line 36
    .line 37
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 41
    .line 42
    sget-object v2, Lcom/android/billingclient/api/p0;->d:Lcom/android/billingclient/api/n;

    .line 43
    .line 44
    const/16 v3, 0x25

    .line 45
    .line 46
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/n;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/billingclient/api/i;->a:I

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    if-ne v0, v4, :cond_2

    .line 61
    .line 62
    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 63
    .line 64
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 68
    .line 69
    sget-object v2, Lcom/android/billingclient/api/p0;->m:Lcom/android/billingclient/api/n;

    .line 70
    .line 71
    const/16 v3, 0x26

    .line 72
    .line 73
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/n;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    iput v3, p0, Lcom/android/billingclient/api/i;->a:I

    .line 85
    .line 86
    const-string v0, "Starting in-app billing setup."

    .line 87
    .line 88
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/android/billingclient/api/f0;

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-direct {v0, p0, p1, v4}, Lcom/android/billingclient/api/f0;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/e0;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/billingclient/api/i;->h:Lcom/android/billingclient/api/f0;

    .line 98
    .line 99
    new-instance v0, Landroid/content/Intent;

    .line 100
    .line 101
    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    .line 102
    .line 103
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "com.android.vending"

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const/16 v7, 0x29

    .line 123
    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_5

    .line 131
    .line 132
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 137
    .line 138
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_4

    .line 151
    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    new-instance v4, Landroid/content/ComponentName;

    .line 155
    .line 156
    invoke-direct {v4, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v5, Landroid/content/Intent;

    .line 160
    .line 161
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/billingclient/api/i;->b:Ljava/lang/String;

    .line 168
    .line 169
    const-string v4, "playBillingLibraryVersion"

    .line 170
    .line 171
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/billingclient/api/i;->e:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/billingclient/api/i;->h:Lcom/android/billingclient/api/f0;

    .line 177
    .line 178
    invoke-virtual {v0, v5, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    const-string p1, "Service was bonded successfully."

    .line 185
    .line 186
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    .line 191
    .line 192
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/16 v3, 0x27

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 199
    .line 200
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/16 v3, 0x28

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_5
    move v3, v7

    .line 207
    :cond_6
    :goto_0
    iput v6, p0, Lcom/android/billingclient/api/i;->a:I

    .line 208
    .line 209
    const-string v0, "Billing service unavailable on device."

    .line 210
    .line 211
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 215
    .line 216
    sget-object v2, Lcom/android/billingclient/api/p0;->c:Lcom/android/billingclient/api/n;

    .line 217
    .line 218
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/n;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method final synthetic t(Lcom/android/billingclient/api/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/n;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method final synthetic u(Lcom/android/billingclient/api/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/q1;->d()Lcom/android/billingclient/api/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/q1;->d()Lcom/android/billingclient/api/v;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/v;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/q1;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/q1;->c()Lcom/android/billingclient/api/t0;

    .line 23
    .line 24
    .line 25
    const-string p1, "BillingClient"

    .line 26
    .line 27
    const-string v0, "No valid listener is set in BroadcastManager"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method final synthetic v(Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/o;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    const/4 p2, 0x4

    .line 4
    sget-object v0, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    invoke-static {v1, p2, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method final synthetic w(Lcom/android/billingclient/api/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/g;->a(Lcom/android/billingclient/api/n;Lcom/android/billingclient/api/f;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic x(Lcom/android/billingclient/api/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xd

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/l;->a(Lcom/android/billingclient/api/n;Lcom/android/billingclient/api/k;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic y(Lcom/android/billingclient/api/d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/n;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method final synthetic z(Lcom/android/billingclient/api/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/n0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/p0;->n:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/s;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
