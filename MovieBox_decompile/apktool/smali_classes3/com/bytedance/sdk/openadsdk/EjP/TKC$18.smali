.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field final synthetic HiB:Lorg/json/JSONObject;

.field final synthetic Sj:J

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:I


# direct methods
.method constructor <init>(JILjava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->Sj:J

    .line 2
    .line 3
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->sP:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->TKC:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->EjP:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->HiB:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "duration"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->Sj:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "percent"

    .line 14
    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->sP:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "feed_break"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->TKC:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "feed_over"

    .line 31
    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->TKC:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->EjP:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->HiB:Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    :cond_1
    const-string v1, "ad_extra_data"

    .line 50
    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$18;->HiB:Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :catchall_0
    return-object v0
.end method
