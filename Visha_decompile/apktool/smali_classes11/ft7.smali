.class public final Lft7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lft7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lft7;

    invoke-direct {v0}, Lft7;-><init>()V

    sput-object v0, Lft7;->a:Lft7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShortVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailActivity"

    goto :goto_0

    :cond_0
    const-string v0, "com.transsion.onlinevideo.mangotv.PlayerDetailActivity"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "router_data"

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "from_router"

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method public static final c(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lft7;->m(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    const-string v1, "OttPlayDeepLinkHelper"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute: invalid ott_play uri="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShortVideo()Z

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_id()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute: route to player, isShort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", video_id="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lft7;->b(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "addFlags(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic g(Lft7;Landroid/net/Uri;[Ljava/lang/String;JILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lft7;->f(Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final i(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "host"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lft7;->j(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lft7;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return v1

    :cond_3
    invoke-static {p1}, Lft7;->m(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeepLinkIfNeeded: invalid ott_play uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OttPlayDeepLinkHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lft7;->a:Lft7;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lft7;->l(Landroid/app/Activity;)V

    return v1

    :cond_4
    invoke-static {p0, p1}, Lft7;->c(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_5
    :goto_0
    return v0
.end method

.method public static final j(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "ott_play"

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final m(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
    .locals 17

    move-object/from16 v7, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseRouterData uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OttPlayDeepLinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lft7;->j(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static/range {p0 .. p0}, Ly45;->g(Ljava/lang/Object;)V

    sget-object v8, Lft7;->a:Lft7;

    const-string v0, "is_youtube"

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v0, v9}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const-string v3, "source_type"

    invoke-virtual {v8, v7, v3, v2}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "is_vk"

    invoke-virtual {v8, v7, v3, v9}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v9

    :cond_4
    :goto_2
    const-string v3, "missing source_id"

    const-string v4, "source_id"

    if-eqz v0, :cond_6

    invoke-virtual {v7, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-virtual {v8, v7, v3}, Lft7;->k(Landroid/net/Uri;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const-string v1, "youtube_video_name"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "youtube_channel"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "youtube_channel_cover"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "youtube_cover"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v0}, Lft7;->a(Landroid/net/Uri;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V

    return-object v0

    :cond_6
    const-string v0, "title"

    if-eqz v1, :cond_b

    const-string v1, "vk_id"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    const-string v0, "missing vk_id"

    invoke-virtual {v8, v7, v0}, Lft7;->k(Landroid/net/Uri;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v1, "video_url"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    const-string v0, "missing video_url"

    invoke-virtual {v8, v7, v0}, Lft7;->k(Landroid/net/Uri;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v1, "type_bean_json"

    invoke-virtual {v7, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_9

    move-object v14, v2

    goto :goto_3

    :cond_9
    move-object v14, v1

    :goto_3
    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v11, v2

    goto :goto_4

    :cond_a
    move-object v11, v0

    :goto_4
    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v13, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v7, v0}, Lft7;->a(Landroid/net/Uri;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V

    return-object v0

    :cond_b
    const-string v1, "video_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v7, v1, v10, v11}, Lft7;->e(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v10

    if-gtz v1, :cond_c

    const-string v0, "missing or invalid video_id"

    invoke-virtual {v8, v7, v0}, Lft7;->k(Landroid/net/Uri;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {v7, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {v8, v7, v3}, Lft7;->k(Landroid/net/Uri;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_6

    :cond_e
    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {v3, v5, v6, v1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v12, v3

    goto :goto_7

    :cond_f
    :goto_6
    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {v3, v5, v6, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;)V

    goto :goto_5

    :goto_7
    invoke-virtual {v12, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSourceType(I)V

    const-string v0, "serial_id"

    invoke-virtual {v8, v7, v0, v10, v11}, Lft7;->e(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSerialId(J)V

    const-string v0, "video_serial_id"

    const-string v1, "video_serail_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v6}, Lft7;->g(Lft7;Landroid/net/Uri;[Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setVideo_serail_id(J)V

    invoke-virtual {v12}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-nez v2, :cond_10

    cmp-long v2, v0, v10

    if-lez v2, :cond_10

    invoke-virtual {v12, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSerialId(J)V

    :cond_10
    const-string v0, "video_serial_source_id"

    const-string v1, "video_serail_source_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lft7;->h(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v12, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setVideo_serail_source_id(Ljava/lang/String;)V

    :cond_11
    const-string v0, "force_play"

    invoke-virtual {v8, v7, v0, v9}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setVideo_force_play(I)V

    invoke-virtual {v8, v7, v12}, Lft7;->a(Landroid/net/Uri;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V

    return-object v12
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V
    .locals 4

    const-string v0, "from_card"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "external_deeplink"

    :cond_0
    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_card(Ljava/lang/String;)V

    const-string v0, "from_page"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_page(Ljava/lang/String;)V

    :cond_1
    const-string v0, "data_type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    const-string v0, "topic_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lft7;->e(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_id(J)V

    const-string v0, "is_short"

    invoke-virtual {p0, p1, v0, v1}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p2, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    :cond_2
    const-string v0, "play_from_history"

    invoke-virtual {p0, p1, v0, v1}, Lft7;->d(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_3

    invoke-virtual {p2, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setMbNotPlayFromHistory(I)V

    :cond_3
    return-void
.end method

.method public final d(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_0
    return p3
.end method

.method public final e(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 0

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lf1a;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_0
    return-wide p3
.end method

.method public final f(Landroid/net/Uri;[Ljava/lang/String;J)J
    .locals 2

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lf1a;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide p3
.end method

.method public final varargs h(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Landroid/net/Uri;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseRouterData failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uri="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OttPlayDeepLinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 v0, 0x14000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
