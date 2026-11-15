.class public final Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;,
        Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;

.field public static volatile l:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lrc2;

.field public c:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:J

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->k:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CloudMediaPlayInfoManager"

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    const-string v0, "mi_media_info"

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->d:Ljava/lang/String;

    const-string v0, "mi_media_info_expire"

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->h:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i:Ljava/util/HashMap;

    const-string v0, "mi_media_video_resolution"

    iput-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->r()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->p(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->n(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->q(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->o(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic e()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->l:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->l:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    return-void
.end method

.method public static final k()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->k:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;

    invoke-virtual {v0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$a;->a()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    move-result-object v0

    return-object v0
.end method

.method public static final n(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMIMediaVideoPlayInfo success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getData(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g(Ljava/lang/String;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->c:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;->a(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMIMediaVideoPlayInfo failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->c:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getMessage(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;->onFailed(ILjava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final o(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final p(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/Throwable;)Lzfb;
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMIMediaVideoPlayInfo error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->c:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown error"

    :cond_0
    const/4 v0, -0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;->onFailed(ILjava/lang/String;)V

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final q(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->h:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->t()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->s()V

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cached media info for video ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-gtz v4, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->t()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->s()V

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared expired cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " media items"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final i(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;
    .locals 6

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->t()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->s()V

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media info for video ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has expired"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->getDataList()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getResolution()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public final l(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlayDuration: no cached info found for videoId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->getPlayDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPlayDuration success: videoId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", playDuration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlayDuration failed: videoId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public final m(Ljava/lang/String;Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->b:Lrc2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrc2;->dispose()V

    :cond_0
    iput-object p2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->c:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->c:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;->a(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object p2

    const-class v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {p2, v0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {p2, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getMIPlayInfo(Ljava/lang/String;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Lt21;

    invoke-direct {v0, p0, p1}, Lt21;-><init>(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/String;)V

    new-instance p1, Lu21;

    invoke-direct {p1, v0}, Lu21;-><init>(Le74;)V

    new-instance v0, Lv21;

    invoke-direct {v0, p0}, Lv21;-><init>(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;)V

    new-instance v1, Lw21;

    invoke-direct {v1, v0}, Lw21;-><init>(Le74;)V

    invoke-virtual {p2, p1, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->b:Lrc2;

    :cond_2
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 7

    const-string v0, " items"

    const-string v1, "fromJson(...)"

    const-string v2, ""

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$restoreFromCache$infoMap$1;

    invoke-direct {v4}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$restoreFromCache$infoMap$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v3, v4}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored media info cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to restore media info cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$restoreFromCache$expireMap$1;

    invoke-direct {v4}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$restoreFromCache$expireMap$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v3, v4}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored expire time cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to restore expire time cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_3
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$restoreFromCache$resolutionMap$1;

    invoke-direct {v3}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$restoreFromCache$resolutionMap$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restored mediaResolution cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore mediaResolutionMap cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final s()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved expire time to cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save expire time to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved media info to cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save media info to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    const-string v1, "saveTemplateToCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTemplateToCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolution"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->u()V

    iget-object p0, p0, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", template: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v0, "videoId"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaPlayInfoPlayDuration: invalid playDuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    if-nez v5, :cond_1

    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayInfoPlayDuration: no cached info found for videoId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2

    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayInfoPlayDuration: cached info expired for videoId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->s()V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->f:Ljava/util/HashMap;

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long v11, v3, v6

    const/16 v15, 0xdf

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v5 .. v16}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->copy$default(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->t()V

    iget-object v0, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaPlayInfoPlayDuration success: videoId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", playDuration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object v1, v1, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayInfoPlayDuration failed: videoId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
