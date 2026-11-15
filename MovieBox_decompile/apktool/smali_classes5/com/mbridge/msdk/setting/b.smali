.class public Lcom/mbridge/msdk/setting/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/setting/b$b;,
        Lcom/mbridge/msdk/setting/b$a;
    }
.end annotation


# static fields
.field public static c1:I = 0x5dc


# instance fields
.field private A:Ljava/lang/String;

.field private A0:I

.field private B:Ljava/lang/String;

.field private B0:I

.field private C:I

.field private C0:I

.field private D:Ljava/lang/String;

.field private D0:Z

.field private E:Ljava/lang/String;

.field private E0:I

.field private F:J

.field private F0:Lorg/json/JSONArray;

.field private G:I

.field private G0:Lorg/json/JSONObject;

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H0:Ljava/lang/String;

.field private I:Lcom/mbridge/msdk/setting/d;

.field private I0:J

.field private J:Lcom/mbridge/msdk/setting/b$b;

.field private J0:I

.field private K:I

.field private K0:I

.field private L:J

.field private L0:J

.field private M:I

.field private M0:I

.field private N:I

.field private N0:J

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O0:Z

.field private P:Ljava/lang/String;

.field private P0:I

.field private Q:Z

.field private Q0:I

.field private R:I

.field private R0:I

.field private S:Z

.field private S0:I

.field private T:Z

.field private T0:Ljava/lang/String;

.field private U:I

.field private U0:Ljava/lang/String;

.field private V:I

.field private V0:I

.field private W:I

.field private W0:I

.field private X:Ljava/lang/String;

.field private X0:I

.field private Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Y0:J

.field private Z:Ljava/lang/String;

.field private Z0:Ljava/lang/String;

.field private a:Z

.field private a0:I

.field private a1:I

.field private b:Lorg/json/JSONArray;

.field private b0:I

.field private b1:Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private c0:I

.field private d:Ljava/lang/String;

.field private d0:I

.field private e:I

.field private e0:I

.field private f:I

.field private f0:I

.field private g:I

.field private g0:Ljava/lang/String;

.field private h:I

.field private h0:I

.field private i:Ljava/lang/String;

.field private i0:I

.field private j:Ljava/lang/String;

.field private j0:I

.field private k:Ljava/lang/String;

.field private k0:Ljava/lang/String;

.field private l:I

.field private l0:Ljava/lang/String;

.field private m:I

.field private m0:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private n0:Ljava/lang/String;

.field private o:I

.field private o0:I

.field private p:J

.field private p0:I

.field private q:Lcom/mbridge/msdk/setting/a;

.field private q0:I

.field private r:Ljava/lang/String;

.field private r0:I

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/setting/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private s0:Ljava/lang/String;

.field private t:Z

.field private t0:Ljava/lang/String;

.field private u:I

.field private u0:J

.field private v:I

.field private v0:J

.field private w:Z

.field private w0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private x0:I

.field private y:Ljava/lang/String;

.field private y0:I

.field private z:Ljava/lang/String;

.field private z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->a:Z

    .line 6
    .line 7
    new-instance v1, Lorg/json/JSONArray;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->b:Lorg/json/JSONArray;

    .line 13
    .line 14
    new-instance v1, Lorg/json/JSONArray;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->c:Lorg/json/JSONArray;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->d:Ljava/lang/String;

    .line 24
    .line 25
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->e:I

    .line 26
    .line 27
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->f:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->g:I

    .line 31
    .line 32
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->h:I

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->i:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->j:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->k:Ljava/lang/String;

    .line 39
    .line 40
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->m:I

    .line 41
    .line 42
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->o:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->v:I

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->w:Z

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->x:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->y:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 58
    .line 59
    const/16 v3, 0x78

    .line 60
    .line 61
    iput v3, p0, Lcom/mbridge/msdk/setting/b;->C:I

    .line 62
    .line 63
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v4, p0, Lcom/mbridge/msdk/setting/b;->D:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v4, p0, Lcom/mbridge/msdk/setting/b;->E:Ljava/lang/String;

    .line 78
    .line 79
    sget v4, Lcom/mbridge/msdk/setting/b;->c1:I

    .line 80
    .line 81
    iput v4, p0, Lcom/mbridge/msdk/setting/b;->G:I

    .line 82
    .line 83
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->K:I

    .line 84
    .line 85
    const-wide/32 v4, 0x15180

    .line 86
    .line 87
    .line 88
    iput-wide v4, p0, Lcom/mbridge/msdk/setting/b;->L:J

    .line 89
    .line 90
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->M:I

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    iput v4, p0, Lcom/mbridge/msdk/setting/b;->N:I

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/mbridge/msdk/setting/b;->Q:Z

    .line 96
    .line 97
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->R:I

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->S:Z

    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->T:Z

    .line 102
    .line 103
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->V:I

    .line 104
    .line 105
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->W:I

    .line 106
    .line 107
    const-string v5, "1.0"

    .line 108
    .line 109
    iput-object v5, p0, Lcom/mbridge/msdk/setting/b;->Z:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v5, 0x1e

    .line 112
    .line 113
    iput v5, p0, Lcom/mbridge/msdk/setting/b;->a0:I

    .line 114
    .line 115
    const/16 v5, 0x24a1

    .line 116
    .line 117
    iput v5, p0, Lcom/mbridge/msdk/setting/b;->b0:I

    .line 118
    .line 119
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->c0:I

    .line 120
    .line 121
    const/4 v5, 0x5

    .line 122
    iput v5, p0, Lcom/mbridge/msdk/setting/b;->d0:I

    .line 123
    .line 124
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->e0:I

    .line 125
    .line 126
    const/16 v5, 0x1f40

    .line 127
    .line 128
    iput v5, p0, Lcom/mbridge/msdk/setting/b;->f0:I

    .line 129
    .line 130
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->g0:Ljava/lang/String;

    .line 131
    .line 132
    const/16 v6, 0xa

    .line 133
    .line 134
    iput v6, p0, Lcom/mbridge/msdk/setting/b;->i0:I

    .line 135
    .line 136
    iput v3, p0, Lcom/mbridge/msdk/setting/b;->j0:I

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->m0:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->n0:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->s0:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->t0:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v3, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v3, p0, Lcom/mbridge/msdk/setting/b;->w0:Ljava/util/List;

    .line 152
    .line 153
    iput v4, p0, Lcom/mbridge/msdk/setting/b;->x0:I

    .line 154
    .line 155
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->y0:I

    .line 156
    .line 157
    iput v4, p0, Lcom/mbridge/msdk/setting/b;->z0:I

    .line 158
    .line 159
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->A0:I

    .line 160
    .line 161
    iput v6, p0, Lcom/mbridge/msdk/setting/b;->B0:I

    .line 162
    .line 163
    const/16 v3, 0x258

    .line 164
    .line 165
    iput v3, p0, Lcom/mbridge/msdk/setting/b;->C0:I

    .line 166
    .line 167
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->E0:I

    .line 168
    .line 169
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->H0:Ljava/lang/String;

    .line 170
    .line 171
    iput v5, p0, Lcom/mbridge/msdk/setting/b;->J0:I

    .line 172
    .line 173
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->K0:I

    .line 174
    .line 175
    const-wide/16 v5, 0xa

    .line 176
    .line 177
    iput-wide v5, p0, Lcom/mbridge/msdk/setting/b;->L0:J

    .line 178
    .line 179
    iput v4, p0, Lcom/mbridge/msdk/setting/b;->M0:I

    .line 180
    .line 181
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->P0:I

    .line 182
    .line 183
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->Q0:I

    .line 184
    .line 185
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->R0:I

    .line 186
    .line 187
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->S0:I

    .line 188
    .line 189
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->T0:Ljava/lang/String;

    .line 190
    .line 191
    const/16 v2, 0x514

    .line 192
    .line 193
    iput v2, p0, Lcom/mbridge/msdk/setting/b;->V0:I

    .line 194
    .line 195
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->W0:I

    .line 196
    .line 197
    iput v0, p0, Lcom/mbridge/msdk/setting/b;->X0:I

    .line 198
    .line 199
    const-wide/16 v2, 0xe10

    .line 200
    .line 201
    iput-wide v2, p0, Lcom/mbridge/msdk/setting/b;->Y0:J

    .line 202
    .line 203
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->Z0:Ljava/lang/String;

    .line 204
    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string p0, ""

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->G()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->G()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->G()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 10
    :cond_2
    const-string v0, "{gaid}"

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/setting/b$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    new-instance v4, Lcom/mbridge/msdk/setting/b$a;

    invoke-direct {v4}, Lcom/mbridge/msdk/setting/b$a;-><init>()V

    .line 18
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 19
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/setting/b$a;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    .line 20
    :cond_1
    :goto_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    .line 21
    :goto_2
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 23
    :goto_3
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 9

    .line 26
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    move-result v0

    const-string v1, "H+tU+FeXHM=="

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 27
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v3, Lcom/mbridge/msdk/foundation/same/directory/c;->l:Lcom/mbridge/msdk/foundation/same/directory/c;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/directory/e;->b(Lcom/mbridge/msdk/foundation/same/directory/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v0, "H+tU+Fz8"

    const-string v3, "H+tU+bfPhM=="

    const-string v4, "c"

    const-string v5, "b"

    if-eqz v2, :cond_2

    .line 28
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 31
    sput-object v1, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->b()Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;

    move-result-object v1

    sget-object v6, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :try_start_2
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 34
    :catch_2
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 36
    sput-object p0, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->b()Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;

    move-result-object p0

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 38
    :try_start_4
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 39
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 40
    :cond_2
    :try_start_5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz p0, :cond_4

    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    sget-object v7, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 43
    sput-object v6, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->b()Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;

    move-result-object v6

    sget-object v7, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 46
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 47
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    .line 49
    :cond_3
    :goto_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 51
    sput-object p0, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->b()Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;

    move-result-object p0

    sget-object v3, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/mbridge/msdk/foundation/buffer/sharedperference/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 55
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 57
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_4
    :cond_4
    :goto_4
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/mbridge/msdk/setting/g;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "omsdkjs_h5_url"

    const-string v3, "omsdkjs_url"

    const-string v0, "plctb"

    const-string v4, "pcrn"

    const-string v5, "plct"

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v1, :cond_1f

    .line 2
    :try_start_0
    new-instance v8, Lcom/mbridge/msdk/setting/g;

    invoke-direct {v8}, Lcom/mbridge/msdk/setting/g;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 3
    :try_start_1
    invoke-virtual {v8, v1}, Lcom/mbridge/msdk/setting/b;->c(Lorg/json/JSONObject;)V

    .line 4
    const-string v9, "cc"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/setting/b;->f(Ljava/lang/String;)V

    .line 5
    const-string v9, "mv_wildcard"

    const-string v10, "<mvpackage>mbridge</mvpackage>"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/setting/b;->s(Ljava/lang/String;)V

    .line 6
    const-string v9, "cfc"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/setting/b;->j(I)V

    .line 7
    const-string v9, "getpf"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mbridge/msdk/setting/b;->c(J)V

    .line 8
    const-string v9, "current_time"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mbridge/msdk/setting/b;->b(J)V

    .line 9
    const-string v9, "cfb"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/setting/b;->b(Z)V

    .line 10
    const-string v9, "awct"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mbridge/msdk/setting/b;->a(J)V

    .line 11
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    const-wide/16 v9, 0xe10

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    :goto_0
    invoke-virtual {v8, v9, v10}, Lcom/mbridge/msdk/setting/b;->e(J)V

    .line 12
    const-string v5, "rurl"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->g(Z)V

    .line 13
    const-string v5, "uct"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mbridge/msdk/setting/b;->i(J)V

    .line 14
    const-string v5, "ujds"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->h(Z)V

    .line 15
    const-string v5, "n2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->G(I)V

    .line 16
    const-string v5, "n3"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->H(I)V

    .line 17
    const-string v5, "is_startup_crashsystem"

    const/4 v9, 0x1

    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->r(I)V

    .line 18
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->F(I)V

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v5, v15, v11

    if-nez v5, :cond_1

    const-wide/16 v15, 0x1c20

    :goto_1
    move-wide v13, v15

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_1

    :goto_2
    invoke-virtual {v8, v13, v14}, Lcom/mbridge/msdk/setting/b;->f(J)V

    const/16 v0, 0x64

    .line 20
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->F(I)V

    .line 21
    const-string v0, "opent"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->E(I)V

    .line 22
    const-string v0, "sfct"

    const-wide/16 v4, 0x708

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/mbridge/msdk/setting/b;->g(J)V

    .line 23
    const-string v0, "upgd"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->U(I)V

    .line 24
    const-string v0, "upsrl"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->V(I)V

    .line 25
    const-string v0, "updevid"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->T(I)V

    .line 26
    const-string v0, "sc"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->O(I)V

    .line 27
    const-string v0, "up_tips"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->S(I)V

    .line 28
    const-string v0, "iseu"

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->s(I)V

    .line 29
    const-string v0, "jm_unit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->p(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :try_start_2
    const-string v0, "atf"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    .line 33
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_3

    .line 34
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 35
    invoke-static {v13}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 36
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v13, Lcom/mbridge/msdk/foundation/entity/a;

    const-string v15, "adtype"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v9, "unitid"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v15, v9}, Lcom/mbridge/msdk/foundation/entity/a;-><init>(ILjava/lang/String;)V

    .line 38
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    .line 39
    invoke-virtual {v8, v7}, Lcom/mbridge/msdk/setting/b;->a(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 40
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_4
    :goto_6
    const-string v0, "adct"

    const v7, 0x3f480

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->g(I)V

    .line 42
    const-string v0, "confirm_title"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->k(Ljava/lang/String;)V

    .line 43
    const-string v0, "confirm_description"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->i(Ljava/lang/String;)V

    .line 44
    const-string v0, "confirm_t"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->j(Ljava/lang/String;)V

    .line 45
    const-string v0, "confirm_c_rv"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->h(Ljava/lang/String;)V

    .line 46
    const-string v0, "confirm_c_play"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->g(Ljava/lang/String;)V

    .line 47
    const-string v0, "adchoice_icon"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->c(Ljava/lang/String;)V

    .line 48
    const-string v0, "adchoice_link"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->d(Ljava/lang/String;)V

    .line 49
    const-string v0, "adchoice_size"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->e(Ljava/lang/String;)V

    .line 50
    const-string v0, "platform_logo"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->w(Ljava/lang/String;)V

    .line 51
    const-string v0, "platform_name"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->x(Ljava/lang/String;)V

    .line 52
    const-string v0, "cdnate_cfg"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/setting/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->a(Ljava/util/Map;)V

    .line 53
    const-string v0, "atrqt"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->i(I)V

    .line 54
    const-string v0, "iupdid"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->t(I)V

    .line 55
    const-string v0, "mcs"

    const/16 v7, 0x78

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->C(I)V

    .line 56
    const-string v0, "ab_id"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->b(Ljava/lang/String;)V

    .line 57
    const-string v0, "rid"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->y(Ljava/lang/String;)V

    .line 58
    const-string v0, "log_rate"

    const-string v9, "-1"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->q(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->v(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->u(Ljava/lang/String;)V

    .line 61
    const-string v0, "rty_tk_clk"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->J(I)V

    .line 62
    const-string v0, "rty_tk_imp"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->L(I)V

    .line 63
    const-string v0, "rty_cnt"

    const/4 v9, 0x3

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->K(I)V

    .line 64
    const-string v0, "rty_to"

    const/16 v10, 0x258

    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->N(I)V

    .line 65
    const-string v0, "rty_inr"

    const/16 v10, 0xa

    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->M(I)V

    .line 66
    const-string v0, "dns"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->n(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->v(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->u(Ljava/lang/String;)V

    .line 69
    const-string v0, "tcto"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v11

    if-nez v0, :cond_5

    const-wide/16 v2, 0xa

    .line 70
    invoke-virtual {v8, v2, v3}, Lcom/mbridge/msdk/setting/b;->h(J)V

    goto :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_17

    .line 71
    :cond_5
    invoke-virtual {v8, v2, v3}, Lcom/mbridge/msdk/setting/b;->h(J)V

    .line 72
    const-string v0, "jt"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v3, v4

    .line 75
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 76
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 77
    const-string v12, "domain"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "format"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 78
    :cond_6
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->b(Ljava/util/Map;)V

    .line 79
    :cond_7
    :goto_8
    const-string v0, "mraid_js"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->r(Ljava/lang/String;)V

    .line 80
    const-string v0, "web_env_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->B(Ljava/lang/String;)V

    .line 81
    const-string v0, "alrbs"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_8

    if-gez v0, :cond_9

    :cond_8
    move v0, v4

    .line 82
    :cond_9
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->h(I)V

    .line 83
    const-string v0, "GDPR_area"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->e(Z)V

    .line 84
    const-string v0, "ct"

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->l(I)V

    .line 85
    const-string v0, "ercd"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 88
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_b

    .line 89
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-eqz v7, :cond_a

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 91
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->a(Ljava/util/ArrayList;)V

    .line 94
    :cond_c
    const-string v0, "hst"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v2, :cond_f

    .line 96
    :try_start_4
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100
    :cond_d
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 102
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 103
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 105
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    .line 106
    :cond_e
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 107
    invoke-virtual {v8, v3}, Lcom/mbridge/msdk/setting/b;->a(Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    .line 108
    :goto_b
    :try_start_5
    const-string v2, "SETTING"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_f
    :goto_c
    const-string v0, "refactor_switch"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 110
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_12

    move v2, v4

    .line 111
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 112
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 114
    :cond_10
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/mbridge/msdk/setting/b;->a(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_e

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 118
    :cond_12
    :try_start_6
    const-string v0, "lqcnt"

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 119
    const-string v2, "lqto"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 120
    const-string v3, "lqswt"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 121
    const-string v5, "lqtype"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 122
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->x(I)V

    .line 123
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->u(I)V

    .line 124
    invoke-virtual {v8, v3}, Lcom/mbridge/msdk/setting/b;->w(I)V

    .line 125
    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->y(I)V

    .line 126
    const-string v0, "lg_bl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->a(Lorg/json/JSONArray;)V

    .line 127
    const-string v0, "lg_wl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->b(Lorg/json/JSONArray;)V

    .line 128
    const-string v0, "lg_wl_rt"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->X(I)V

    .line 129
    const-string v0, "srml"

    const/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->P(I)V

    .line 130
    const-string v0, "lrml"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->z(I)V

    .line 131
    const-string v0, "wgl_d_ms"

    const/16 v2, 0x514

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->W(I)V

    .line 132
    const-string v0, "dp_ct"

    sget v2, Lcom/mbridge/msdk/setting/b;->c1:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->m(I)V

    .line 133
    const-string v0, "lqpt"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_13

    const v2, 0xffff

    if-ge v0, v2, :cond_13

    .line 134
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->v(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 135
    :catch_3
    :cond_13
    :try_start_7
    const-string v0, "wvddt"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 136
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->Y(I)V

    .line 137
    const-string v0, "hst_st"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->l(Ljava/lang/String;)V

    .line 138
    const-string v0, "hst_st_t"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->m(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 139
    :try_start_8
    const-string v0, "l"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    const-string v2, "k"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    move v2, v3

    goto :goto_f

    :cond_14
    move v2, v4

    .line 141
    :goto_f
    const-string v5, "m"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_10

    :cond_15
    move v3, v4

    .line 142
    :goto_10
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->I(I)V

    .line 143
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->f(Z)V

    .line 144
    invoke-virtual {v8, v3}, Lcom/mbridge/msdk/setting/b;->a(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_11

    :catch_4
    move-exception v0

    .line 145
    :try_start_9
    const-string v2, "Setting"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_11
    const-string v0, "fbk_swt"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->n(I)V

    .line 147
    const-string v0, "fbk"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/setting/b$b;->a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/setting/b$b;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->a(Lcom/mbridge/msdk/setting/b$b;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 148
    :try_start_a
    const-string v0, "ad_connection_timeout"

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->o:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 149
    const-string v2, "ad_read_timeout"

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->q:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 150
    const-string v3, "ad_write_timeout"

    sget v5, Lcom/mbridge/msdk/foundation/same/a;->s:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 151
    const-string v5, "ad_retry_count"

    sget v7, Lcom/mbridge/msdk/foundation/same/a;->r:I

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-gtz v0, :cond_16

    .line 152
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->o:I

    :cond_16
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->c(I)V

    if-gtz v2, :cond_17

    .line 153
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->q:I

    :cond_17
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->d(I)V

    if-gtz v3, :cond_18

    .line 154
    sget v3, Lcom/mbridge/msdk/foundation/same/a;->s:I

    :cond_18
    invoke-virtual {v8, v3}, Lcom/mbridge/msdk/setting/b;->f(I)V

    if-gez v5, :cond_19

    .line 155
    sget v5, Lcom/mbridge/msdk/foundation/same/a;->r:I

    :cond_19
    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/setting/b;->e(I)V

    .line 156
    const-string v0, "max_download_task_size"

    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1a

    move v0, v10

    .line 157
    :cond_1a
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->B(I)V

    .line 158
    const-string v0, "max_bitmap_cache_size"

    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->A(I)V

    .line 160
    const-string v0, "t_t"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->R(I)V

    .line 161
    const-string v0, "h_t"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->p(I)V

    .line 162
    const-string v0, "gtp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->o(I)V

    .line 163
    const-string v0, "i_i_t"

    const-wide/16 v2, 0xe10

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/mbridge/msdk/setting/b;->d(J)V

    .line 164
    const-string v0, "c_i"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->t(Ljava/lang/String;)V

    .line 165
    const-string v0, "n_c_u_p"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->D(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 166
    :catch_5
    :try_start_b
    const-string v0, "http_track_url"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->o(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 168
    :catch_6
    :try_start_c
    const-string v0, "st_net"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->Q(I)V

    .line 169
    const-string v0, "vtag"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->A(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 170
    :try_start_d
    const-string v0, "check_webview"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1b

    move v7, v4

    goto :goto_12

    :cond_1b
    const/4 v7, 0x1

    .line 171
    :goto_12
    invoke-virtual {v8, v7}, Lcom/mbridge/msdk/setting/b;->c(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_13

    .line 172
    :catch_7
    :try_start_e
    invoke-virtual {v8, v4}, Lcom/mbridge/msdk/setting/b;->c(Z)V

    .line 173
    :goto_13
    const-string v0, "swxid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->z(Ljava/lang/String;)V

    .line 174
    const-string v0, "sdk_filters"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->c(Lorg/json/JSONArray;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 175
    :try_start_f
    const-string v0, "ch_nv_im_cb"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    const/4 v2, 0x1

    :try_start_10
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->k(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_14

    :catch_8
    const/4 v2, 0x1

    .line 177
    :catch_9
    :try_start_11
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->k(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 178
    :goto_14
    :try_start_12
    const-string v0, "do_us_fi_re"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    move v4, v2

    .line 179
    :cond_1c
    invoke-virtual {v8, v4}, Lcom/mbridge/msdk/setting/b;->d(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_15

    .line 180
    :catch_a
    :try_start_13
    invoke-virtual {v8, v2}, Lcom/mbridge/msdk/setting/b;->d(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 181
    :goto_15
    :try_start_14
    invoke-static/range {p0 .. p0}, Lcom/mbridge/msdk/setting/b;->a(Lorg/json/JSONObject;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_16

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 182
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    :goto_16
    const-string v0, "bcp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 185
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/setting/a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/setting/a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->a(Lcom/mbridge/msdk/setting/a;)V

    .line 186
    :cond_1d
    const-string v0, "monitor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 188
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/setting/d;->a(Ljava/lang/String;)Lcom/mbridge/msdk/setting/d;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mbridge/msdk/setting/b;->a(Lcom/mbridge/msdk/setting/d;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :cond_1e
    move-object v7, v8

    goto :goto_19

    :goto_17
    move-object v7, v8

    goto :goto_18

    :catch_c
    move-exception v0

    .line 189
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    :goto_19
    return-object v7
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->L:J

    return-wide v0
.end method

.method public A(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->i0:I

    :cond_0
    return-void
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->T0:Ljava/lang/String;

    return-void
.end method

.method public A0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->Q:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->N:I

    return v0
.end method

.method public B(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->h0:I

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->U0:Ljava/lang/String;

    return-void
.end method

.method public B0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->O:Ljava/util/HashMap;

    return-object v0
.end method

.method public C(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->j0:I

    return-void
.end method

.method public C0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->R:I

    return v0
.end method

.method public D(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->a1:I

    return-void
.end method

.method public D0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->S:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->U:I

    return v0
.end method

.method public E(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->o0:I

    return-void
.end method

.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->V:I

    return v0
.end method

.method public F(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->p0:I

    return-void
.end method

.method public F0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->x:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public G()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->Y:Ljava/util/Map;

    return-object v0
.end method

.method public G(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->q0:I

    return-void
.end method

.method public G0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->y:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public H()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->b:Lorg/json/JSONArray;

    return-object v0
.end method

.method public H(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->r0:I

    return-void
.end method

.method public H0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->T:Z

    .line 2
    .line 3
    return v0
.end method

.method public I()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public I(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->x0:I

    return-void
.end method

.method public I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->D0:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public J(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->y0:I

    return-void
.end method

.method public J0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/setting/b;->O0:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->e0:I

    return v0
.end method

.method public K(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->z0:I

    return-void
.end method

.method public K0()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->G0()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "Continue"

    .line 14
    .line 15
    const-string v3, "Close it"

    .line 16
    .line 17
    const-string v4, "You will not be rewarded after closing the window"

    .line 18
    .line 19
    const-string v5, "Confirm to close? "

    .line 20
    .line 21
    const-string v6, "\u786e\u8ba4\u5173\u95ed"

    .line 22
    .line 23
    const-string v7, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    .line 24
    .line 25
    const-string v8, "\u786e\u8ba4\u5173\u95ed\uff1f"

    .line 26
    .line 27
    const-string v9, "zh"

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iput-object v8, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v7, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v6, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "\u7ee7\u7eed\u89c2\u770b"

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mbridge/msdk/setting/b;->y:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput-object v5, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v4, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v3, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/mbridge/msdk/setting/b;->y:Ljava/lang/String;

    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->F0()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iput-object v8, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v7, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v6, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 85
    .line 86
    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mbridge/msdk/setting/b;->x:Ljava/lang/String;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iput-object v5, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v4, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v3, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/mbridge/msdk/setting/b;->x:Ljava/lang/String;

    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->f0:I

    return v0
.end method

.method public L(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->A0:I

    return-void
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->h0:I

    return v0
.end method

.method public M(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->B0:I

    return-void
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->j0:I

    return v0
.end method

.method public N(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->C0:I

    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->k0:Ljava/lang/String;

    return-object v0
.end method

.method public O(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->E0:I

    return-void
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->l0:Ljava/lang/String;

    return-object v0
.end method

.method public P(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->J0:I

    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->Z0:Ljava/lang/String;

    return-object v0
.end method

.method public Q(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->K0:I

    return-void
.end method

.method public R()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->Y0:J

    return-wide v0
.end method

.method public R(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->M0:I

    return-void
.end method

.method public S()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->a1:I

    return v0
.end method

.method public S(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->P0:I

    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->m0:Ljava/lang/String;

    return-object v0
.end method

.method public T(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->Q0:I

    return-void
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->n0:Ljava/lang/String;

    return-object v0
.end method

.method public U(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->R0:I

    return-void
.end method

.method public V()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->o0:I

    return v0
.end method

.method public V(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->S0:I

    return-void
.end method

.method public W()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->p0:I

    return v0
.end method

.method public W(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->V0:I

    return-void
.end method

.method public X()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->q0:I

    return v0
.end method

.method public X(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->W0:I

    return-void
.end method

.method public Y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->r0:I

    return v0
.end method

.method public Y(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->X0:I

    return-void
.end method

.method public Z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->u0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->w0:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->p:J

    return-void
.end method

.method public a(Lcom/mbridge/msdk/setting/a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->q:Lcom/mbridge/msdk/setting/a;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/setting/b$b;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->J:Lcom/mbridge/msdk/setting/b$b;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/setting/d;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->I:Lcom/mbridge/msdk/setting/d;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->H:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->O:Ljava/util/HashMap;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/a;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->n:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/setting/b$a;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->s:Ljava/util/Map;

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 1

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 68
    const-string v0, "2000088"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->b:Lorg/json/JSONArray;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->Q:Z

    return-void
.end method

.method public a0()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->v0:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x1c20

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/mbridge/msdk/setting/b;->v0:J

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->v0:J

    .line 14
    .line 15
    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .line 192
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->F:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->Y:Ljava/util/Map;

    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .locals 1

    if-nez p1, :cond_0

    .line 193
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 194
    const-string v0, "2000041"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    const-string v0, "2000042"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    const-string v0, "2000032"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    const-string v0, "2000079"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->c:Lorg/json/JSONArray;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->t:Z

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->w0:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->x0:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->e:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->L:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->i:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->F0:Lorg/json/JSONArray;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->G0:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->w:Z

    return-void
.end method

.method public c0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->y0:I

    .line 2
    .line 3
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->f:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->Y0:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->j:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->S:Z

    return-void
.end method

.method public d0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->z0:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->l:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->g:I

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->u0:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->k:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->a:Z

    return-void
.end method

.method public e0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->A0:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->m:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->h:I

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->v0:J

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->r:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->T:Z

    return-void
.end method

.method public f0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->B0:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->n:Ljava/util/List;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->l:I

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->I0:J

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->x:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->D0:Z

    return-void
.end method

.method public g0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->C0:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->o:I

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->m:I

    return-void
.end method

.method public h(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->L0:J

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->y:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/setting/b;->O0:Z

    return-void
.end method

.method public h0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->E0:I

    .line 2
    .line 3
    return v0
.end method

.method public i()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->p:J

    return-wide v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->o:I

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mbridge/msdk/setting/b;->N0:J

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    return-void
.end method

.method public i0()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->F0:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/mbridge/msdk/setting/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->q:Lcom/mbridge/msdk/setting/a;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->u:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    return-void
.end method

.method public j0()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->G0:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->v:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    return-void
.end method

.method public k0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->H0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/setting/b$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->s:Ljava/util/Map;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->C:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->D:Ljava/lang/String;

    return-void
.end method

.method public l0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->I0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->u:I

    return v0
.end method

.method public m(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->G:I

    .line 4
    sput p1, Lcom/mbridge/msdk/click/utils/a;->c:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->E:Ljava/lang/String;

    return-void
.end method

.method public m0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->J0:I

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->v:I

    return v0
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->K:I

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->b1:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/setting/e;->a()Lcom/mbridge/msdk/setting/e;

    move-result-object v0

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/setting/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->K0:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public o(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->M:I

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d(I)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->P:Ljava/lang/String;

    return-void
.end method

.method public o0()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->L0:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->N:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->X:Ljava/lang/String;

    return-void
.end method

.method public p0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->M0:I

    .line 2
    .line 3
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method public q(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->R:I

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->Z:Ljava/lang/String;

    return-void
.end method

.method public q0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->N0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->A:Ljava/lang/String;

    return-object v0
.end method

.method public r(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->U:I

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->k0:Ljava/lang/String;

    return-void
.end method

.method public r0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->P0:I

    .line 2
    .line 3
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->V:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->l0:Ljava/lang/String;

    return-void
.end method

.method public s0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->Q0:I

    .line 2
    .line 3
    return v0
.end method

.method public t()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->C:I

    return v0
.end method

.method public t(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->W:I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->Z0:Ljava/lang/String;

    return-void
.end method

.method public t0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->R0:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " cfc="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/mbridge/msdk/setting/b;->u:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " getpf="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/mbridge/msdk/setting/b;->L:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " rurl="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/mbridge/msdk/setting/b;->D0:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->D:Ljava/lang/String;

    return-object v0
.end method

.method public u(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->a0:I

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->m0:Ljava/lang/String;

    return-void
.end method

.method public u0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->S0:I

    .line 2
    .line 3
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method public v(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->b0:I

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b(I)V

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->c(I)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->n0:Ljava/lang/String;

    return-void
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->T0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/setting/b;->F:J

    return-wide v0
.end method

.method public w(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->c0:I

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->s0:Ljava/lang/String;

    return-void
.end method

.method public w0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->U0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->H:Ljava/util/ArrayList;

    return-object v0
.end method

.method public x(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->d0:I

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->t0:Ljava/lang/String;

    return-void
.end method

.method public x0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->V0:I

    .line 2
    .line 3
    return v0
.end method

.method public y()Lcom/mbridge/msdk/setting/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->I:Lcom/mbridge/msdk/setting/d;

    return-object v0
.end method

.method public y(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->e0:I

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->H0:Ljava/lang/String;

    return-void
.end method

.method public y0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->W0:I

    .line 2
    .line 3
    return v0
.end method

.method public z()Lcom/mbridge/msdk/setting/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->J:Lcom/mbridge/msdk/setting/b$b;

    return-object v0
.end method

.method public z(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/setting/b;->f0:I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->g0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/setting/b;->g0:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/b;->g0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/controller/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/setting/b;->X0:I

    .line 2
    .line 3
    return v0
.end method
