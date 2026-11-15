.class Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->Sj:I

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->sP:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uA(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/uA;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;->TKC()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "remove_loading_page_type"

    .line 57
    .line 58
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->Sj:I

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v3, "remove_loading_page_reason"

    .line 64
    .line 65
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->sP:I

    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v3, "playable_url"

    .line 71
    .line 72
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 73
    .line 74
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Ym(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v3, "duration"

    .line 82
    .line 83
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;->getDisplayDuration()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    const-string v3, "is_new_playable"

    .line 97
    .line 98
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v1, "pag_json_data"

    .line 102
    .line 103
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string v1, "playable_event"

    .line 111
    .line 112
    const-string v2, "remove_loading_page"

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v3, "playable_track"

    .line 130
    .line 131
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    return-void
.end method
