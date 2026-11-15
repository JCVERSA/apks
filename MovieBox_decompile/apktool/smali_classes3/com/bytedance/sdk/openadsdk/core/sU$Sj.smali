.class public Lcom/bytedance/sdk/openadsdk/core/sU$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/sU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field public final Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final EjP:I

.field final HiB:Ljava/lang/String;

.field final Jcg:Ljava/lang/String;

.field final Sj:I

.field final TEQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final TKC:J

.field final sP:J

.field final uA:Ljava/lang/String;

.field final vS:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/Sj;JJLjava/util/ArrayList;)V
    .locals 0
    .param p7    # Lcom/bytedance/sdk/openadsdk/core/model/Sj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/Sj;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Sj:I

    .line 5
    .line 6
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->EjP:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->HiB:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Jcg:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->uA:Ljava/lang/String;

    .line 15
    .line 16
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->vS:I

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->sP:J

    .line 19
    .line 20
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->TKC:J

    .line 21
    .line 22
    iput-object p12, p0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->TEQ:Ljava/util/ArrayList;

    .line 23
    .line 24
    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)Lcom/bytedance/sdk/openadsdk/core/sU$Sj;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "did"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v1, "processing_time_ms"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const-string v1, "s_receive_ts"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v10

    .line 21
    const-string v1, "s_send_ts"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v12

    .line 27
    const-string v1, "status_code"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v1, "desc"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-string v1, "request_id"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v1, "reason"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-static/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)Landroid/util/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 58
    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 62
    .line 63
    const-string v9, "request_after"

    .line 64
    .line 65
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v14

    .line 69
    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(J)V

    .line 70
    .line 71
    .line 72
    :cond_0
    if-nez v1, :cond_1

    .line 73
    .line 74
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    move-object v2, v0

    .line 79
    invoke-direct/range {v2 .. v14}, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/Sj;JJLjava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;

    .line 84
    .line 85
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    move-object v9, v2

    .line 88
    check-cast v9, Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 89
    .line 90
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 91
    .line 92
    move-object v14, v1

    .line 93
    check-cast v14, Ljava/util/ArrayList;

    .line 94
    .line 95
    move-object v2, v0

    .line 96
    invoke-direct/range {v2 .. v14}, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/Sj;JJLjava/util/ArrayList;)V

    .line 97
    .line 98
    .line 99
    return-object v0
.end method
