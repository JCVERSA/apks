.class public Lcom/bytedance/adsdk/ugeno/core/HiB;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lorg/json/JSONObject;

.field private HiB:Ljava/lang/String;

.field private Jcg:Z

.field private Sj:Lorg/json/JSONObject;

.field private TKC:Ljava/lang/String;

.field private sP:Lorg/json/JSONObject;

.field private vS:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/core/HiB;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 3
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj:Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "main_template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj:Lorg/json/JSONObject;

    .line 6
    :goto_0
    const-string v1, "sub_templates"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP:Lorg/json/JSONObject;

    .line 7
    const-string v1, "meta"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_1
    const-string v1, "template_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    :goto_1
    const-string v2, "3.0"

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Jcg:Z

    .line 13
    const-string p1, "version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_2
    const-string p1, "sdk_version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC:Ljava/lang/String;

    .line 17
    :cond_3
    :goto_2
    const-string p1, "adType"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->HiB:Ljava/lang/String;

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC:Ljava/lang/String;

    .line 21
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Jcg:Z

    .line 22
    :cond_5
    :goto_3
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->EjP:Lorg/json/JSONObject;

    .line 23
    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->vS:Lorg/json/JSONObject;

    :cond_6
    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "name"

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_0
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 8
    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "children"

    if-eqz v8, :cond_3

    .line 9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 10
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 11
    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :cond_3
    new-instance v7, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    invoke-direct {v7}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;-><init>()V

    .line 13
    invoke-static {v7, v5}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-boolean v5, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Jcg:Z

    if-eqz v5, :cond_4

    const-string v5, "Video"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "V3"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v7, v2}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    :goto_2
    invoke-static {v7, v6}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 18
    invoke-static {v7, p2}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 19
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC:Ljava/lang/String;

    invoke-static {v7, p2}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->TKC(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->HiB:Ljava/lang/String;

    invoke-static {v7, p2}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    const-string p2, "i18n"

    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 22
    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 23
    :cond_5
    const-string p2, "CustomComponent"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 24
    invoke-static {v7}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 25
    :cond_6
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 26
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    .line 27
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_c

    .line 28
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    :goto_4
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->EjP:Lorg/json/JSONObject;

    invoke-static {v8, v9}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 33
    const-string v9, "Template"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 34
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP:Lorg/json/JSONObject;

    if-eqz v5, :cond_9

    .line 35
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_5

    :cond_9
    move-object v5, v0

    goto :goto_6

    .line 36
    :cond_a
    :goto_5
    invoke-direct {p0, v5, v7}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_b

    .line 37
    invoke-virtual {v7, v5}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    :goto_7
    return-object v7
.end method

.method private Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7

    .line 38
    const-string v0, "children"

    const-string v1, "events"

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->vS:Lorg/json/JSONObject;

    if-eqz v2, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    const-string v2, "targetId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->vS:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 42
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v2, "targetProps"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 44
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 48
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    instance-of v4, v5, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/Jcg/sP;->Sj(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_5

    .line 53
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 54
    :cond_5
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 56
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method

.method public static Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public EjP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Jcg:Z

    .line 2
    .line 3
    return v0
.end method

.method public Sj()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object v0

    return-object v0
.end method

.method public TKC()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP:Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP:Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p0, v3, v1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
