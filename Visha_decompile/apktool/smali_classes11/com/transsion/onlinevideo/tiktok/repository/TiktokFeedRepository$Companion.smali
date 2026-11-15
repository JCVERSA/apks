.class public final Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "5g"

    goto :goto_0

    :cond_1
    const-string p0, "4g"

    goto :goto_0

    :cond_2
    const-string p0, "3g"

    goto :goto_0

    :cond_3
    const-string p0, "2g"

    goto :goto_0

    :cond_4
    const-string p0, "wifi"

    goto :goto_0

    :cond_5
    const-string p0, "none"

    :goto_0
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;
    .locals 4

    const-string p0, "json"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string p1, "{"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->e()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;

    invoke-virtual {p1, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object p1, v0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;->getReqId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->setReqId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;->getReqId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v1

    goto :goto_3

    :cond_4
    const-string p1, "["

    invoke-static {p0, p1, v2, v1, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->e()Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v1, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion$parseFeedCacheJson$legacy$1;

    invoke-direct {v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion$parseFeedCacheJson$legacy$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;

    invoke-direct {p1, v0, p0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFeedCacheJson failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokFeedRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method
