.class public Lcom/bytedance/sdk/openadsdk/common/Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/common/Sj$sP;,
        Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;
    }
.end annotation


# static fields
.field private static final Sj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/common/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private static final sP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/common/Sj$sP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

.field private final HiB:Ljava/lang/String;

.field private final TKC:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private final vS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/bytedance/sdk/openadsdk/common/Sj;->sP:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->vS:Ljava/util/Map;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->TKC:Landroid/content/Context;

    .line 16
    .line 17
    sget-object p1, Lcom/bytedance/sdk/openadsdk/common/Sj;->sP:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->HiB:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/Sj;
    .locals 4

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/common/Sj;

    if-nez v1, :cond_1

    .line 5
    const-class v1, Lcom/bytedance/sdk/openadsdk/common/Sj;

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/common/Sj;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/common/Sj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    return-object v1
.end method

.method private Sj(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object p2

    invoke-interface {p2}, Lz5/b;->Sj()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->HiB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/Sj;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V

    return-void
.end method

.method public static Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/Sj$sP;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/Sj;->sP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V
    .locals 13

    move-object v10, p0

    .line 57
    iget-object v0, v10, Lcom/bytedance/sdk/openadsdk/common/Sj;->vS:Ljava/util/Map;

    move-object v3, p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    move-wide v4, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 59
    const-string v0, "load_video_success"

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_1
    const-string v0, "load_video_error"

    goto :goto_1

    :goto_2
    if-nez p1, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v8, p5

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    move-object v8, v0

    .line 60
    :goto_3
    new-instance v12, Lcom/bytedance/sdk/openadsdk/common/Sj$2;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide/from16 v6, p3

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/common/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/Sj;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JJLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v11, v0, v12}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj()Z
    .locals 3

    .line 3
    const-string v0, "material_cache_disk_format"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private TKC()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v0

    invoke-interface {v0}, Lz5/b;->Sj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/model/Sj;
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->HiB(Ljava/lang/String;)J

    move-result-wide v0

    .line 54
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->vS(Ljava/lang/String;)Z

    move-result v2

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    cmp-long p2, v3, p2

    if-gez p2, :cond_0

    if-nez v2, :cond_0

    const/4 p2, 0x1

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Sj;
    .locals 3

    const/4 v0, 0x0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->sP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v1, "cypher"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    :cond_0
    const-string v1, "creatives"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;-><init>()V

    .line 40
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_6

    .line 41
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->HiB()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 42
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 43
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 45
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/common/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->HiB()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->EjP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 50
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/sP;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 51
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 52
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v1

    :catch_0
    :cond_6
    :goto_2
    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    invoke-virtual {v1}, La6/b;->G()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-lez p2, :cond_2

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DSn()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    return-void

    .line 20
    :cond_3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Lcom/bytedance/sdk/openadsdk/common/Sj$Sj<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->vS:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    invoke-virtual {v1}, La6/b;->G()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->EjP()Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/Sj;Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;->Sj(ZLjava/lang/Object;)V

    :cond_2
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->TKC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cKW()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 14
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->uA(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public TKC(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->Dq(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP()V
    .locals 10

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->HiB:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->Jcg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    const-string v2, "files"

    goto :goto_0

    .line 3
    :cond_0
    const-string v2, "shared_prefs"

    :goto_0
    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->TKC:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/common/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->TKC:Landroid/content/Context;

    const-string v4, "1"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/Sj$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/common/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/Sj;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    array-length v2, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_4

    aget-object v6, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 10
    :try_start_1
    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 12
    const-string v8, ".xml"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 13
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_3

    .line 14
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->TKC:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    .line 15
    :cond_3
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->TKC:Landroid/content/Context;

    invoke-virtual {v8, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 16
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 18
    :catchall_1
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/Sj;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_5
    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/common/Sj$sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj$sP;->Jcg(Ljava/lang/String;)V

    return-void
.end method
