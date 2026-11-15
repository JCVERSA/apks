.class public Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static Sj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->sP()Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->vS()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    return-object v0
.end method

.method public static EjP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->Sj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    if-nez p0, :cond_2

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->EjP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1

    .line 8
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->vS()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static HiB()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->sP()Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->HiB()Z

    move-result v0

    return v0
.end method

.method private static HiB(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->HiB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->vS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static Jcg(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->HiB()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$sP;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$sP;->sP()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-gtz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/util/Pair;

    .line 41
    .line 42
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->Dq()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;
    .locals 2

    .line 5
    new-instance p2, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;

    invoke-direct {p2}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;-><init>()V

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p3, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 9
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Jcg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    :cond_2
    if-nez v0, :cond_3

    .line 11
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->vS(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 12
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    .line 13
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-static {p0, p3}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x4

    .line 15
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->HiB(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x6

    .line 17
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP()I

    if-eqz v0, :cond_6

    .line 19
    :try_start_0
    new-instance p0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->Sj()Ljava/lang/String;

    move-result-object p1

    const-string p3, "utf-8"

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, p3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 20
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(Landroid/webkit/WebResourceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-object p2
.end method

.method public static Sj()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->sP()Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/adexpress/Sj/TKC/EjP;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/EjP;->vS:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/TKC/EjP;Ljava/lang/String;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP$1;

    const-string v1, "updateTmplTime"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;)V

    const/16 p0, 0xa

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/adexpress/EjP/EjP;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method private static Sj(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->HiB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->Sj()Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->vS()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static Sj(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 28
    :cond_0
    const-string v1, "template_Plugin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;->Sj(Ljava/lang/Long;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;

    .line 5
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;)V

    :cond_1
    return-object p0
.end method

.method public static TKC()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/vS;->TKC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static TKC(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    :try_start_0
    const-string v1, "creatives"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 10
    :cond_2
    const-string v3, "template_Plugin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_6
    :goto_2
    return v0
.end method

.method private static sP(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->HiB()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->Sj()Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 12
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->vS()Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->Dq()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static sP(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Jcg;->sP(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static sP()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Dq;->EjP()V

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->Dq()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static sP(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 20
    :cond_0
    const-string v1, "xTemplate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static vS(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->HiB()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->vS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;

    .line 6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->Dq()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static vS()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->EjP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
