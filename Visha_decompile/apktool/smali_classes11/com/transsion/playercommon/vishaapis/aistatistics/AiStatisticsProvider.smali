.class public Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlgorithmMark(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/playercommon/data/RecommendMark;

    invoke-direct {v1}, Lcom/transsion/playercommon/data/RecommendMark;-><init>()V

    new-instance v2, Lcom/transsion/playercommon/data/RecommendMark$Event;

    invoke-direct {v2}, Lcom/transsion/playercommon/data/RecommendMark$Event;-><init>()V

    invoke-virtual {v2, p0}, Lcom/transsion/playercommon/data/RecommendMark$Event;->setEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v3, "video_list"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsProvider$1;

    invoke-direct {v5}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsProvider$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/transsion/playercommon/data/RecommendMark$Event;->setEparam(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->getInstance()Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->nextId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/playercommon/data/RecommendMark$Event;->setTid(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/transsion/playercommon/data/RecommendMark$Event;->setTs(Ljava/lang/Long;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/playercommon/data/RecommendMark$Event;->setNet(Ljava/lang/Integer;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lcom/transsion/playercommon/data/RecommendMark;->setEvents(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setBrand(Ljava/lang/String;)V

    const-string v2, "1.0.0"

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setSdkv(Ljava/lang/String;)V

    invoke-static {}, Lge;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setIns(Ljava/lang/String;)V

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setTpmsid(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setLang(Ljava/lang/String;)V

    const-string v2, "1001"

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setAppid(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setCnt(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setGaid(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v3, p1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setIsfl(Ljava/lang/Integer;)V

    invoke-static {}, Lzdc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setOpenid(Ljava/lang/String;)V

    invoke-static {}, Lpp3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setOsv(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setPkg(Ljava/lang/String;)V

    invoke-static {}, Lydc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setVn(Ljava/lang/String;)V

    invoke-static {}, Lydc;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setVc(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setVaid(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setUuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setCountry(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/RecommendMark;->setCity(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
