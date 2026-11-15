.class public Lcom/bytedance/sdk/openadsdk/core/sU;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/sU$sP;,
        Lcom/bytedance/sdk/openadsdk/core/sU$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
        "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private EjP(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    const-string p1, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private EjP(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jcg/sP;->Sj()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Jcg/sP;->Sj(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;J)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private HiB(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private HiB(Ljava/lang/String;)[B
    .locals 5

    .line 2
    const-string v0, "NetApiImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 3
    new-array v2, v2, [B

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 10
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v3, v1

    .line 12
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 13
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 16
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_2
    :goto_3
    return-object v2

    :goto_4
    if-eqz v1, :cond_3

    .line 17
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 20
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-object v1
.end method

.method static synthetic Sj(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 321
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 324
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 317
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dx;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dx;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p0

    .line 319
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;
    .locals 4

    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    .line 331
    const-string v2, "personalized_ad"

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->jb()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v1, "lmt"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->TKC()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v1, "gdpr"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->TEQ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string v1, "pa_consent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Ym()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v1, "is_gdpr_user"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Wjd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 336
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ib;->Sj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ib;->Sj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/ib;

    if-eqz v1, :cond_0

    .line 338
    const-string v2, "lastadomain"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ib;->sP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v2, "lastbundle"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ib;->TKC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v2, "lastclick"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ib;->EjP()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v2, "lastskip"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ib;->HiB()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    :cond_0
    const-string v1, "keywords"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->sef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "data"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/model/ib;)Lorg/json/JSONObject;
    .locals 5

    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 347
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v1, "adtype"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 352
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 353
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    const-string v2, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    const-string v2, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 358
    const-string v2, "ext"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    :cond_3
    const-string v2, "preview_ads"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_4
    const-string v1, "render_method"

    const-string v2, "accepted_size"

    const/4 v3, 0x1

    if-eqz p3, :cond_6

    .line 361
    :try_start_1
    iget v4, p3, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    iget v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    if-ne v1, v3, :cond_5

    .line 363
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 364
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Ljava/lang/String;FF)V

    goto :goto_0

    .line 365
    :cond_6
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 367
    :cond_7
    :goto_0
    const-string v1, "ptpl_ids"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v1, "ugen_ptpl_ids"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v1, "ptpl_ids_v3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v1, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    const-string v1, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 372
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v1

    if-gtz v1, :cond_8

    const/4 v1, 0x5

    if-ne p2, v1, :cond_9

    .line 373
    :cond_8
    const-string v1, "is_origin_ad"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    if-eqz p3, :cond_a

    .line 374
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Jcg:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    .line 375
    const-string v2, "session_params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    if-gtz v1, :cond_b

    move v1, v3

    :cond_b
    const/4 v2, 0x3

    if-le v1, v2, :cond_c

    move v1, v2

    :cond_c
    const/4 v2, 0x7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x8

    if-ne p2, v2, :cond_e

    :cond_d
    move v1, v3

    :cond_e
    if-eqz p3, :cond_f

    .line 377
    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/model/ib;->HiB:Lorg/json/JSONArray;

    if-eqz p3, :cond_f

    .line 378
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    .line 379
    :cond_f
    const-string p3, "ad_count"

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne p2, v3, :cond_10

    .line 380
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 381
    const-string p3, "is_rotate_banner"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getIsRotateBanner()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string p3, "rotate_time"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateTime()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    const-string p3, "rotate_order"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateOrder()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string p3, "type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBannerType()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string p1, "banner"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_10
    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)Lorg/json/JSONObject;
    .locals 11
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    const/4 v0, 0x1

    .line 6
    const-string v1, "app"

    const-string v2, "7.1.1.4"

    const-string v3, "ad_sdk_version"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 8
    iget-object v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Sj:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Sj:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v7, 0x7

    .line 9
    const-string v8, "req_type"

    if-ne p3, v7, :cond_2

    if-eqz p2, :cond_4

    .line 10
    :try_start_1
    iget v7, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->sP:I

    if-lez v7, :cond_4

    .line 11
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/16 v7, 0x8

    if-ne p3, v7, :cond_3

    if-eqz p2, :cond_4

    .line 12
    iget v7, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TKC:I

    if-lez v7, :cond_4

    .line 13
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const/4 v7, 0x3

    if-ne p3, v7, :cond_4

    if-eqz p2, :cond_4

    .line 14
    iget v7, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->EjP:I

    if-lez v7, :cond_4

    .line 15
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uA()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 18
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string v10, "version"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v7, "param"

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v7, "abtest"

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :catchall_1
    :cond_5
    :try_start_3
    const-string v7, "request_id"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lorg/json/JSONObject;)V

    .line 24
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v7, "rewardedfull_link"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    const-string v7, "js_render_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v7, "js_render_v3_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->TKC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v7, "source_type"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Sj(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    const-string v7, "device"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "user"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "channel"

    const-string v7, "main"

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/model/ib;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    const-string p3, "adslots"

    invoke-virtual {v5, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-direct {p0, v5, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/ib;)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v7, 0x3e8

    div-long/2addr p2, v7

    .line 40
    const-string v1, "ts"

    invoke-virtual {v5, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string v1, ""

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 43
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_6
    const-string p1, "req_sign"

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->HiB()I

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    const-string p1, "pglx"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->HiB()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_7
    const-string p1, "adx_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/uA;->wE()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Lorg/json/JSONObject;)V

    .line 49
    sget-object p1, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 50
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string p1, "oversea_version_type"

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 52
    :goto_3
    const-string p2, "body data exception"

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return-object v4
.end method

.method private Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lorg/json/JSONObject;)V
    .locals 1

    .line 419
    :try_start_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "cypher"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 421
    const-string p2, "x-pgli18n"

    const-string v0, "4"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string p2, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V
    .locals 14

    move-object/from16 v1, p2

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->qRN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 199
    :try_start_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/ib;->uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    move-object/from16 v5, p6

    .line 200
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide v2

    :goto_0
    move-wide v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p6

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object v9, v11

    .line 201
    invoke-static/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZLorg/json/JSONObject;Z)V

    .line 202
    const-string v0, "load_ad_time"

    move-object/from16 p1, p7

    move-object/from16 p2, p8

    move-object/from16 p3, v0

    move-wide/from16 p4, v12

    move-object/from16 p6, v11

    invoke-static/range {p1 .. p6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZLorg/json/JSONObject;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/ib;->uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 204
    const-string v2, "client_start_time"

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide v3

    invoke-virtual {p9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 205
    :cond_0
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide p1

    const-string v2, "network_time"

    invoke-virtual {p9, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 206
    const-string p1, "sever_time"

    invoke-virtual {p9, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string p1, "client_end_time"

    invoke-virtual {p5, p3}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide p2

    invoke-virtual {p9, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p8, :cond_1

    .line 208
    const-string p1, "is_choose_ad"

    const/4 p2, 0x1

    invoke-virtual {p9, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 209
    :cond_1
    const-string p1, "open_ad"

    invoke-virtual {p7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result p1

    const-string p2, "is_icon_only"

    invoke-virtual {p9, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    .line 211
    const-string p1, "render_control_type"

    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result p2

    invoke-virtual {p9, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    move-result p1

    const-string p2, "webview_cache_size"

    invoke-virtual {p9, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string p1, "sync_barrier_open"

    invoke-virtual {p9, p1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    iget-wide p1, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->sP:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_4

    .line 215
    iget-wide p3, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->TKC:J

    sub-long/2addr p3, p1

    const-string p1, "enqueue_2_run_ts"

    invoke-virtual {p9, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 216
    iget-wide p1, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->HiB:J

    iget-wide p3, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->sP:J

    sub-long/2addr p1, p3

    const-string p3, "run_2_connect_end_ts"

    invoke-virtual {p9, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    iget-wide p1, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->vS:J

    iget-wide p3, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->HiB:J

    sub-long/2addr p1, p3

    const-string p3, "connect_end_2_response_end_ts"

    invoke-virtual {p9, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;->vS:J

    sub-long/2addr p1, p3

    const-string p0, "response_end_2_callback_end_ts"

    invoke-virtual {p9, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 2

    const/4 v0, -0x1

    .line 325
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 326
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 327
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V
    .locals 2

    const/4 v0, -0x1

    .line 328
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 9

    .line 177
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 179
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uvD()Lcom/bytedance/sdk/openadsdk/core/model/HiB;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v6, 0x0

    .line 182
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v7

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/uvD;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 183
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gY()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v7

    const-string v4, ""

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/uvD;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 184
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v0

    .line 186
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-direct {p0, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v3

    invoke-virtual {v3}, La6/b;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v3

    invoke-virtual {v3}, La6/b;->t()I

    move-result v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v3

    invoke-virtual {v3}, La6/b;->C()I

    move-result v6

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/uvD;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sU$14;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    const/4 p1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;I)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/Jcg/sP;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p10}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Jcg/sP;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void
.end method

.method private Sj(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/uvD;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 191
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    .line 192
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    .line 193
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    .line 194
    invoke-interface {p2, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-direct {p3, p5, p1, v2}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {p2, p3, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;I)Lcom/bytedance/sdk/component/HiB/uA;

    return-void

    :cond_0
    if-nez p4, :cond_1

    return-void

    .line 195
    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p5, p3, v2}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {p1, p2, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;I)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method

.method private Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Jcg/sP;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Jcg/sP;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/utils/WMZ;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/model/TKC;",
            "Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;",
            "Lcom/bytedance/sdk/openadsdk/core/model/ib;",
            "I)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v10, p7

    move-object/from16 v9, p8

    move-object/from16 v3, p9

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p3, :cond_0

    .line 84
    const-string v2, "pgad_end"

    move-object/from16 v4, p4

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_12

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 86
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sU$11;

    invoke-direct {v2, v11, v1}, Lcom/bytedance/sdk/openadsdk/core/sU$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 87
    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->sP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 88
    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 89
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v5

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->db()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 93
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 94
    const-string v8, "Pangle_Debug_Mode"

    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    invoke-static {v8, v6, v12}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v14, v9

    move-object v12, v10

    goto/16 :goto_6

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {v10, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    .line 97
    invoke-direct {v11, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 98
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->vS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V

    return-void

    .line 100
    :cond_2
    invoke-static {v4, v1, v3, v10}, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)Lcom/bytedance/sdk/openadsdk/core/sU$Sj;

    move-result-object v1

    .line 101
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->TEQ:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Ljava/util/ArrayList;)V

    .line 102
    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->uA:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    iget v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->EjP:I

    const/16 v8, 0x4e20

    if-eq v6, v8, :cond_4

    .line 104
    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->LqL()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->EjP:I

    const v2, 0x9c5d

    if-ne v0, v2, :cond_3

    const/16 v0, -0x64

    .line 106
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-interface {v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_3
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->EjP:I

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->HiB:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 109
    :goto_1
    invoke-static/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 110
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->vS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V

    return-void

    .line 112
    :cond_4
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    if-nez v6, :cond_5

    .line 113
    invoke-direct {v11, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 114
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V

    return-void

    .line 116
    :cond_5
    invoke-direct {v11, v6, v9}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 117
    :cond_6
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->TKC(Ljava/lang/String;)V

    .line 118
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v8

    if-eqz v3, :cond_7

    .line 120
    iget-object v2, v3, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    if-eqz v2, :cond_7

    .line 121
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Sj:I

    invoke-virtual {v2, v0, v5, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    .line 122
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->EjP()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    move/from16 v2, p10

    if-ne v2, v7, :cond_9

    goto :goto_2

    :cond_8
    move/from16 v2, p10

    :cond_9
    move v7, v4

    :goto_2
    if-eqz v7, :cond_d

    .line 123
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 124
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 125
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 126
    invoke-static/range {p10 .. p10}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Dq()Z

    move-result v20

    .line 128
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 129
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_a

    .line 130
    :try_start_1
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/model/ib;->uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iget-wide v2, v4, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj:J

    cmp-long v2, v2, v12

    if-lez v2, :cond_a

    .line 131
    invoke-virtual {v8, v4}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide v12

    :cond_a
    move-wide v2, v12

    if-eqz v18, :cond_c

    .line 132
    invoke-virtual/range {v18 .. v18}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->db()Z

    move-result v4

    .line 133
    const-string v12, "is_new_engine"

    invoke-virtual {v14, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v12, "webview_cache_size"

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I

    move-result v4

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    move-result v4

    :goto_3
    invoke-virtual {v14, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    move-result-object v12

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Sj:I

    const/16 v22, 0x1

    move-object/from16 v13, p9

    move-object/from16 p3, v14

    move-object/from16 v14, p5

    move-object v0, v15

    move-object v15, v5

    move/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v19, v6

    move-object/from16 v21, p3

    invoke-static/range {v12 .. v22}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZLorg/json/JSONObject;Z)V

    .line 136
    const-string v4, "duration"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    const-string v2, "extra_data"

    move-object/from16 v3, p3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v2, "tag"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "callback_start"

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :catch_0
    :cond_d
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-interface {v9, v0, v10}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 142
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 144
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Ljava/util/Map;)V

    .line 146
    :cond_e
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 147
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez v7, :cond_f

    .line 148
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 149
    invoke-static/range {p10 .. p10}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v12

    .line 150
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Dq()Z

    move-result v13

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    move-result-object v2

    iget v6, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Sj:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p5

    move-object v7, v8

    move-object v8, v0

    move-object v14, v9

    move-object v9, v12

    move-object v12, v10

    move v10, v13

    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_f
    move-object v14, v9

    move-object v12, v10

    .line 152
    :goto_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->EjP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_5

    :cond_10
    move-object v14, v9

    move-object v12, v10

    .line 153
    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 154
    :goto_6
    const-string v1, "NetApiImpl"

    const-string v2, "get ad error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-direct {v11, v14, v12}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 156
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V

    return-void

    :cond_11
    move-object v14, v9

    move-object v12, v10

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sU$12;

    invoke-direct {v0, v11, v1}, Lcom/bytedance/sdk/openadsdk/core/sU$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v0

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 162
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 163
    invoke-static/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 164
    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 165
    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 166
    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->HiB()V

    .line 168
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj(ILjava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V

    :cond_12
    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Lcom/bytedance/sdk/component/Jcg/sP;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;",
            "Lcom/bytedance/sdk/openadsdk/core/model/TKC;",
            ")V"
        }
    .end annotation

    .line 63
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$10;

    invoke-direct {p1, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/sU$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    if-eqz p3, :cond_0

    .line 64
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 66
    :cond_1
    const-string p1, ""

    .line 67
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object p4

    if-eqz p5, :cond_2

    .line 68
    iget-wide p4, p4, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "pgad_end"

    invoke-interface {p6, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p4

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->db()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object p4

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_4

    if-eqz p2, :cond_3

    .line 70
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    .line 71
    :goto_1
    const-string p5, "Pangle_Debug_Mode"

    iget-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    invoke-static {p5, p4, p6}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 72
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result p2

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 73
    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_6

    const/16 p2, 0x25a

    goto :goto_2

    :cond_6
    const/16 p2, 0x259

    :goto_2
    if-eqz p7, :cond_7

    .line 74
    invoke-interface {p7, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 75
    :cond_7
    invoke-virtual {p8, p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 76
    invoke-static {p8}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 77
    sget-object p3, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 78
    sget-object p3, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 79
    sget-object p3, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Jcg:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->HiB()V

    .line 81
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->TKC()V

    return-void
.end method

.method private Sj(Ljava/util/Map;Lcom/bytedance/sdk/component/Jcg/sP/EjP;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/component/Jcg/sP/EjP;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 263
    const-string v3, "ADD header exceptopn"

    const-string v4, "NetApiImpl"

    if-eqz p1, :cond_0

    .line 264
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 265
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v6, v5}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 266
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v5, v6, v0

    invoke-static {v4, v6}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_0
    :try_start_1
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p1, v5}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v3, p2, v1

    aput-object p1, p2, v0

    invoke-static {v4, p2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/ib;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 53
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->HiB:Lorg/json/JSONArray;

    if-nez p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    const-string v0, "source_temai_product_ids"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Ljava/lang/String;FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 392
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 393
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 394
    :try_start_0
    const-string v2, "width"

    float-to-int p3, p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string p3, "height"

    float-to-int p4, p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 397
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 386
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 387
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 388
    :try_start_0
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string p3, "height"

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 391
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static Sj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 344
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->sU()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 270
    :cond_0
    :try_start_0
    const-string v2, "header"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "aid"

    const-string v4, "4562"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 271
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "reportETEvent error"

    aput-object v4, v3, v1

    aput-object v2, v3, v0

    const-string v2, "NetApiImpl"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v2

    .line 273
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->uvD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 274
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p2

    sget-object v4, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {p2, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result p2

    .line 275
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/sU;->HiB(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz p2, :cond_3

    .line 276
    invoke-static {v5}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4WithoutBase64([B)Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 277
    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_1

    move-object v7, v6

    check-cast v7, [B

    array-length v7, v7

    if-lez v7, :cond_1

    .line 278
    move-object v3, v6

    check-cast v3, [B

    .line 279
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 280
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v1

    .line 281
    :goto_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    .line 282
    invoke-static {v0, v4, p2}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V

    .line 283
    :cond_3
    :goto_2
    const-string p2, "application/octet-stream;tt-data=a"

    if-eqz v3, :cond_4

    .line 284
    const-string v0, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "x-pgli18n"

    const-string v1, "4"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2, p2, v3}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;[B)V

    goto :goto_3

    .line 287
    :cond_4
    invoke-static {v5}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptV3([B)[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP()Ljava/util/Map;

    move-result-object v0

    .line 289
    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/component/Jcg/sP/EjP;)V

    .line 290
    invoke-virtual {v2, p2, v3}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;[B)V

    :cond_5
    :goto_3
    if-nez v3, :cond_7

    .line 291
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 292
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, p2

    .line 293
    :goto_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->EjP(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 294
    invoke-direct {p0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/component/Jcg/sP/EjP;)V

    .line 295
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uvD()Z

    move-result p2

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;Z)V

    :cond_7
    const/4 p1, 0x7

    .line 296
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 297
    const-string p1, "et_applog"

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 298
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$15;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)Z
    .locals 9

    const/4 v0, 0x1

    const v1, 0x9c75

    if-nez p1, :cond_0

    .line 170
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    return v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 174
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/sU$13;

    invoke-direct {v8, p0, v5}, Lcom/bytedance/sdk/openadsdk/core/sU$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string v7, "material_error"

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static TKC(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj()Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 22
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->HiB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->Sj()Ljava/lang/String;

    move-result-object v4

    .line 26
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 27
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "id"

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0

    .line 31
    :goto_2
    const-string v1, "NetApiImpl"

    const-string v2, "getUgenParentTplIds: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private TKC()Lorg/json/JSONObject;
    .locals 7
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/sU;->vS(Lorg/json/JSONObject;)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    .line 7
    const-string v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    :try_start_2
    const-string v4, "NetApiImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to get the application installation package path. error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    const-string v3, "package_install_path"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v2, "is_paid_app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/uA;->Fmk()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    const-string v2, "apk_sign"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->Jcg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v2, "app_running_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->Sj()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    const-string v2, "fmwname"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Ym(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v2, "is_init"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 16
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 17
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v1, v5, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v5

    .line 18
    :goto_1
    const-string v1, "orientation_support"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method private TKC(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static sP(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 126
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->TKC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->decryptType4(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 128
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 129
    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    .line 130
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 131
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(Z)V

    if-eqz p0, :cond_2

    .line 132
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    const/4 p0, 0x2

    .line 133
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;
    .locals 9

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Zq()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserData()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 111
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 112
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 113
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    .line 115
    const-string v7, "name"

    if-ge v5, v3, :cond_5

    .line 116
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 117
    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_5
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_7

    .line 121
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 122
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 124
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    return-object v0
.end method

.method private sP()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream;tt-data=a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static sP(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    .line 160
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->sP(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 161
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 163
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;->sP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0

    .line 169
    :goto_2
    const-string v1, "NetApiImpl"

    const-string v2, "getParentTplIds: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private sP(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string v2, "ad_sdk_version"

    const-string v3, "7.1.1.4"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string p1, "gaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string p1, "extra"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string p1, "filter_words"

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string p1, "dislike_source"

    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->xhi()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    const-string p2, "creative_info"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string p1, "feedback_type"

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string p1, "user_description"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 103
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    const-string p2, "actions"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v10, p2

    move-object/from16 v14, p4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->zwV()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x9c7c

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->TKC()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->vS()V

    .line 5
    :cond_1
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;-><init>()V

    .line 6
    invoke-virtual {v15, v13}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v14, :cond_2

    .line 8
    const-string v0, "Ad request is temporarily paused, Please contact your AM"

    const/16 v1, 0x3e8

    invoke-interface {v14, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 9
    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 10
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fm()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v14, :cond_4

    const/16 v0, -0x10

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    const/16 v0, 0x3e9

    .line 13
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 14
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    :cond_4
    return-void

    :cond_5
    if-nez v14, :cond_6

    return-void

    .line 15
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/sU;->EjP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x8

    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    return-void

    .line 17
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "NetApiImpl"

    const-string v3, "Pangle_Debug_Mode"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_10

    iget-boolean v0, v10, Lcom/bytedance/sdk/openadsdk/core/model/ib;->vS:Z

    if-nez v0, :cond_10

    const/4 v0, 0x2

    .line 18
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->sP(I)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->db()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 24
    :cond_9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    .line 26
    invoke-direct {v12, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    .line 27
    :cond_a
    invoke-static {v0, v13, v10, v15}, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)Lcom/bytedance/sdk/openadsdk/core/sU$Sj;

    move-result-object v1

    .line 28
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->TEQ:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Ljava/util/ArrayList;)V

    .line 29
    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->uA:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->EjP:I

    const/16 v5, 0x4e20

    if-eq v3, v5, :cond_b

    .line 31
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->HiB:Ljava/lang/String;

    invoke-interface {v14, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 32
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->EjP:I

    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 33
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void

    .line 34
    :cond_b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    if-nez v3, :cond_c

    .line 35
    invoke-direct {v12, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void

    .line 36
    :cond_c
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 37
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 38
    :cond_d
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {v12, v3, v14}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    .line 39
    :cond_e
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->TKC(Ljava/lang/String;)V

    .line 40
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-interface {v14, v0, v15}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 41
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Ljava/util/Map;)V

    .line 43
    :cond_f
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;

    move-result-object v0

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/sU$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 45
    :goto_0
    const-string v1, "get ad error: "

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-direct {v12, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void

    .line 47
    :cond_10
    invoke-direct/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_11

    const/16 v0, -0x9

    .line 48
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    .line 49
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 50
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void

    .line 51
    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->db()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    move-result v0

    if-ne v0, v5, :cond_12

    .line 52
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v7, v12, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj:Landroid/content/Context;

    invoke-static {v3, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    :cond_12
    const-string v0, "/api/ad/union/sdk/get_ads/"

    invoke-static {v0, v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v9

    .line 56
    :try_start_1
    invoke-static {v9, v11}, Lcom/bytedance/sdk/openadsdk/Dq/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :catch_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uvD()Z

    move-result v3

    invoke-virtual {v9, v0, v3}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 60
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 61
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 63
    invoke-virtual {v9, v0, v8}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_13
    :try_start_3
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {v12, v9, v6}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 67
    :catch_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v6

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRequestExtraMap()Ljava/util/Map;

    move-result-object v8

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v8, :cond_14

    move/from16 v16, v5

    goto :goto_2

    :cond_14
    move/from16 v16, v4

    :goto_2
    if-eqz v16, :cond_15

    .line 70
    const-string v0, "pgad_start"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const/16 v0, 0xa

    .line 71
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 72
    const-string v0, "get_ad"

    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sU$8;

    invoke-direct {v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/sU$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    :cond_16
    if-nez v1, :cond_17

    .line 76
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sU$9;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v11

    move/from16 v4, v16

    move-object v5, v8

    move-object/from16 v7, p1

    move-object v8, v15

    move-object v13, v9

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/sU$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V

    invoke-virtual {v13, v0}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    return-void

    :cond_17
    move-object/from16 v17, v9

    .line 77
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    move-result-object v0

    if-nez v0, :cond_18

    .line 78
    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP;

    const-string v21, "response is null, content type is not support!!"

    const-string v23, "REQUEST_BODY_NULL"

    const-wide/16 v24, 0x1

    const-wide/16 v26, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1389

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v27}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    :cond_18
    move-object v4, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    goto :goto_4

    .line 79
    :goto_3
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_19

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v4

    move/from16 v4, v16

    move-object v5, v8

    move-object/from16 v7, p1

    move-object/from16 v18, v8

    move-object v8, v15

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    move-object/from16 v19, v11

    move/from16 v11, p3

    .line 80
    :try_start_5
    invoke-direct/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Jcg/sP;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TKC;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/ib;I)V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_19
    move-object/from16 v18, v8

    move-object/from16 v19, v11

    .line 81
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, p4

    move-object v9, v15

    .line 82
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 83
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    .line 84
    :goto_4
    new-instance v11, Lcom/bytedance/sdk/component/Jcg/sP;

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x138a

    const-string v4, "execute method throw exception"

    const/4 v5, 0x0

    const-string v6, "REQUEST_BODY_EXCEPTION"

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 85
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, p4

    move-object v9, v15

    .line 86
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void
.end method

.method private vS(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "package_name"

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    const-string v0, "version_code"

    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string v0, "version"

    .line 20
    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Jcg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;
    .locals 15

    .line 423
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 424
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v0, "tpl_fetch_model"

    const-string v6, "date"

    const-wide/16 v7, 0x0

    invoke-static {v0, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v2, v9

    .line 425
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Mts()Ljava/lang/String;

    move-result-object v9

    .line 426
    const-string v10, "last_url"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 427
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v13

    invoke-interface {v13}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->wE()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v2, v13

    const-string v14, "model"

    if-gtz v13, :cond_1

    cmp-long v2, v2, v7

    if-ltz v2, :cond_1

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-static {v0, v14, v11}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 431
    :catch_0
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    move-result-object v2

    .line 432
    invoke-static {v2, v9}, Lcom/bytedance/sdk/openadsdk/Dq/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 435
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 436
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v2

    .line 437
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    const-string v2, "template_fetch_url"

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    invoke-static {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v1

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v14, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {v0, v10, v9}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 443
    const-string v2, "NetApiImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public Sj(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/EjP/HiB;
    .locals 11
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 219
    const-string v0, "NetApiImpl"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 221
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v4

    .line 222
    invoke-virtual {v4, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->kb()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 224
    const-string p2, "_disable_retry"

    const-string v6, "1"

    invoke-virtual {v4, p2, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    const/4 p2, 0x1

    if-eqz p3, :cond_6

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    sget-object v7, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v6

    .line 226
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/core/sU;->HiB(Ljava/lang/String;)[B

    move-result-object v8

    if-eqz v6, :cond_4

    .line 227
    invoke-static {v8}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4WithoutBase64([B)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 228
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_2

    move-object v10, v9

    check-cast v10, [B

    array-length v10, v10

    if-lez v10, :cond_2

    .line 229
    move-object v5, v9

    check-cast v5, [B

    .line 230
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    .line 231
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v1

    .line 232
    :goto_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    .line 233
    invoke-static {p2, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_4
    :goto_2
    const-string v6, "application/octet-stream;tt-data=a"

    if-eqz v5, :cond_5

    .line 235
    :try_start_1
    const-string v7, "Content-Encoding"

    const-string v8, "union_sdk_encode"

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v7, "x-pgli18n"

    const-string v8, "4"

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4, v6, v5}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;[B)V

    goto :goto_3

    .line 238
    :cond_5
    invoke-static {v8}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptV3([B)[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 239
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP()Ljava/util/Map;

    move-result-object v7

    .line 240
    invoke-direct {p0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/component/Jcg/sP/EjP;)V

    .line 241
    invoke-virtual {v4, v6, v5}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    if-nez v5, :cond_8

    .line 242
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :try_start_3
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/sU;->TKC(Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object v5, p1

    .line 244
    :cond_7
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/sU;->EjP(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    .line 245
    invoke-direct {p0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/component/Jcg/sP/EjP;)V

    .line 246
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uvD()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;Z)V

    goto :goto_4

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    const-string p2, "encrypt_error"

    const/4 p3, -0x2

    invoke-direct {p1, v1, p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 249
    :cond_8
    :goto_4
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 250
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 251
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/sU;->HiB(Lorg/json/JSONObject;)Z

    move-result v5

    goto :goto_5

    :cond_9
    move v5, v1

    .line 253
    :goto_5
    const-string v6, "error unknown"

    if-eqz v4, :cond_a

    .line 254
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v7

    goto :goto_6

    :cond_a
    move v7, v1

    :goto_6
    if-nez v5, :cond_b

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_b

    .line 255
    const-string v6, "server say not success"

    goto :goto_7

    :cond_b
    if-eqz v4, :cond_c

    .line 256
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 257
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v6

    :cond_c
    move p2, v1

    .line 258
    :goto_7
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lorg/json/JSONObject;Z)V

    .line 259
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {p1, v5, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;ZIJ)V

    .line 260
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    invoke-direct {p1, v5, v7, v6, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB;-><init>(ZILjava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p1

    .line 261
    :goto_8
    const-string p2, "uploadEvent error"

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    const/16 p2, 0x1fd

    const-string p3, "service_busy"

    invoke-direct {p1, v1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB;-><init>(ZILjava/lang/String;Z)V

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 411
    const-string v0, "auction_price"

    if-nez p1, :cond_0

    return-object p1

    .line 412
    :cond_0
    :try_start_0
    const-string v1, "cypher"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 413
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 417
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    :try_start_2
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-object p1, v2

    :catch_0
    :catchall_1
    :cond_1
    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V
    .locals 8

    .line 55
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

    invoke-direct {v6, p4, p1}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    if-eqz p2, :cond_1

    .line 56
    iget p4, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->sP:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    iget p4, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TKC:I

    if-eq p4, v0, :cond_0

    iget p4, p2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->EjP:I

    if-ne p4, v0, :cond_1

    :cond_0
    const/4 p4, 0x1

    .line 57
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setPreload(Z)V

    .line 58
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_2

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object p4

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/sU$1;

    const-string v2, "getAd"

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/sU$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    invoke-virtual {p4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    .line 61
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->TKC()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->Jcg()V

    :cond_3
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    .line 444
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    move-result-object v0

    .line 445
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 446
    const-string p1, "upload_bidding"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 447
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 448
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$6;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/sU;->sP(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 301
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object p3

    .line 302
    const-string p4, "/api/ad/union/dislike_event/"

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 303
    sget-object p5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DISLIKE:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    .line 304
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p5

    .line 305
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lorg/json/JSONObject;)V

    .line 306
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->EjP(Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 308
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 309
    const-string p2, "dislike"

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 310
    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/sU$2;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 311
    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/sU$3;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    .line 312
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    const-string p1, "cid"

    const-string p4, ""

    invoke-virtual {p3, p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 315
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p5, p5}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 316
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V
    .locals 3

    .line 398
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x3e8

    .line 399
    const-string v0, "Ad request is temporarily paused, Please contact your AM"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 400
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->REWARD_VERIFY:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 401
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v0

    .line 402
    :try_start_0
    const-string v1, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/Dq/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 404
    const-string v2, "NetApiImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lorg/json/JSONObject;)V

    if-eqz p1, :cond_3

    .line 406
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->EjP(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 407
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 408
    const-string p1, "reward"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 409
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 410
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$5;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/sU$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 449
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v0

    .line 450
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->generateRequestHeader()Landroid/util/Pair;

    move-result-object p2

    .line 452
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string v1, "transfer-param"

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->oWa()Ljava/lang/String;

    move-result-object p2

    const-string v1, "x-pangle-target-idc"

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lorg/json/JSONObject;)V

    const/4 p1, 0x5

    .line 456
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 457
    const-string p1, "apm_pv"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 458
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$7;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    return-void
.end method

.method public sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/EjP/HiB;
    .locals 10

    .line 134
    const-string v0, "error unknown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 135
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->zwV()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_8

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 137
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    move-result-object v3

    const/4 v4, 0x0

    .line 138
    :try_start_0
    sget-object v5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->STATS_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uvD()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Ljava/lang/String;Z)V

    .line 140
    const-string v5, "/api/ad/union/sdk/stats/batch/"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lorg/json/JSONObject;)V

    .line 143
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Uc()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    const-string p1, "_disable_retry"

    const-string v5, "1"

    invoke-virtual {v3, p1, v5}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 146
    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    move-result-object p1

    if-nez p1, :cond_3

    .line 147
    :try_start_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    invoke-direct {p1, v4, v4, v0, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 148
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 149
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 151
    const-string v7, "data"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x4e20

    const/4 v7, 0x1

    if-ne v6, v5, :cond_4

    move v5, v7

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    const v8, 0xea65

    if-ne v6, v8, :cond_5

    goto :goto_1

    :cond_5
    move v7, v4

    goto :goto_1

    :cond_6
    move v5, v4

    move v7, v5

    .line 152
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v4

    .line 153
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v6

    if-nez v6, :cond_7

    .line 154
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move p1, v4

    move v4, v5

    goto :goto_2

    :catchall_1
    move p1, v4

    move v7, p1

    :goto_2
    move v5, v4

    move v4, p1

    .line 156
    :cond_7
    :goto_3
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {p1, v5, v4, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;ZIJ)V

    .line 157
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    invoke-direct {p1, v5, v4, v0, v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 158
    :catchall_2
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {p1, v4, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;ZIJ)V

    .line 159
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    invoke-direct {p1, v4, v4, v0, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    :cond_8
    :goto_4
    return-object v4
.end method
