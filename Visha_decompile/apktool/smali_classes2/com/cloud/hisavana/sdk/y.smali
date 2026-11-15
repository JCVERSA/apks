.class public final Lcom/cloud/hisavana/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/y;

.field public static b:Z

.field public static c:Z

.field public static d:J

.field public static e:I

.field public static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/y;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/y;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cloud/hisavana/sdk/y;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic A(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y;->N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/cloud/hisavana/sdk/y;)Lkotlin/Triple;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->S()Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method public static final E()V
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->h()Lazd;

    move-result-object v0

    invoke-interface {v0}, Lazd;->a()I

    return-void
.end method

.method public static final F(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 10

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->h()Lazd;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/y;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance p0, Lz30;

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lz30;-><init>(ILjava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0}, Lazd;->a(Lz30;)V

    return-void
.end method

.method public static final synthetic G(Lcom/cloud/hisavana/sdk/y;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->T()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/y;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lvxd;

    invoke-direct {v1, p0}, Lvxd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final K(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    sget-object v0, Llxd;->a:Llxd;

    new-instance v1, Lcom/cloud/hisavana/sdk/y$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/y$c;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v2, Lcom/cloud/hisavana/sdk/y$d;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/y$d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/y$e;->a:Lcom/cloud/hisavana/sdk/y$e;

    invoke-virtual {v0, v1, v2, p0}, Llxd;->b(Le74;Lc74;Lc74;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/y;->F(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/cloud/hisavana/sdk/y;->E()V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/y;->K(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic j(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/hisavana/sdk/y;->f:J

    return-void
.end method

.method public static final synthetic k(Lcom/cloud/hisavana/sdk/y;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->v()V

    return-void
.end method

.method public static final synthetic l(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic m(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/sdk/commonutil/util/a$b;ILc74;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/y;->q(Lcom/cloud/sdk/commonutil/util/a$b;ILc74;)V

    return-void
.end method

.method public static synthetic n(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/sdk/commonutil/util/a$b;ILc74;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/y;->q(Lcom/cloud/sdk/commonutil/util/a$b;ILc74;)V

    return-void
.end method

.method public static final synthetic o(Lcom/cloud/hisavana/sdk/y;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic p(Lcom/cloud/hisavana/sdk/y;Lkotlin/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y;->s(Lkotlin/Pair;)V

    return-void
.end method

.method public static final synthetic x(Lcom/cloud/hisavana/sdk/y;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->H()V

    return-void
.end method

.method public static final synthetic y(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic z(Lcom/cloud/hisavana/sdk/y;)J
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->L()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final B()V
    .locals 4

    invoke-static {}, Likd;->c()Z

    move-result p0

    const-string v0, "AttrDataManager"

    if-eqz p0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v1, "clear impressions"

    invoke-virtual {p0, v0, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lwxd;

    invoke-direct {v1}, Lwxd;-><init>()V

    invoke-virtual {p0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->r(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing delete query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL error executing delete query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    const-string v0, "AttrDataManager"

    if-nez p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "Ad is null."

    invoke-virtual {p0, v0, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/cloud/hisavana/sdk/y;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Likd;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lxxd;

    invoke-direct {v1, p1}, Lxxd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->r(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert imp fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final H()V
    .locals 2

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    sget-object v0, Lcom/cloud/hisavana/sdk/y$a;->a:Lcom/cloud/hisavana/sdk/y$a;

    sget-object v1, Lcom/cloud/hisavana/sdk/y$b;->a:Lcom/cloud/hisavana/sdk/y$b;

    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->q(Lc74;Le74;)V

    return-void
.end method

.method public final J()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo p0, "toString(...)"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "-"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ew_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "substring(...)"

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final L()J
    .locals 4

    sget-wide v0, Lcom/cloud/hisavana/sdk/y;->f:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "attr_click_time"

    invoke-virtual {p0, v0}, Lo9;->h(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/cloud/hisavana/sdk/y$i;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/y$i;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/y$j;->a:Lcom/cloud/hisavana/sdk/y$j;

    invoke-virtual {p0, v0, p1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->q(Lc74;Le74;)V

    return-void
.end method

.method public final N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lkotlin/Pair;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "AttrDataManager"

    const-string v1, "Ad is null."

    invoke-virtual {p0, p1, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/cloud/hisavana/sdk/y;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getPullNewestLive(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "action_type"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "p"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getStoreDeeplink()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/cloud/hisavana/sdk/y;->e(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "getCodeSeatId(...)"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adId"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v2, "time"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final O()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->h()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->Q()V

    return-void
.end method

.method public final P()Z
    .locals 2

    sget-boolean p0, Lcom/cloud/hisavana/sdk/y;->b:Z

    if-nez p0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "AttrDataManager"

    const-string v1, "Attr func disable."

    invoke-virtual {p0, v0, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->R()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    sget-object v0, Lcom/cloud/hisavana/sdk/y$f;->a:Lcom/cloud/hisavana/sdk/y$f;

    sget-object v1, Lcom/cloud/hisavana/sdk/y$g;->a:Lcom/cloud/hisavana/sdk/y$g;

    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->q(Lc74;Le74;)V

    return-void
.end method

.method public final R()Z
    .locals 11

    sget-boolean v0, Lcom/cloud/hisavana/sdk/y;->b:Z

    const-string v1, "AttrDataManager"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "Attr func disable."

    invoke-virtual {p0, v1, v0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v0, Llxd;->a:Llxd;

    invoke-virtual {v0}, Llxd;->d()I

    move-result v0

    invoke-static {}, Likd;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attr showConfig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->B()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-boolean p0, Lcom/cloud/hisavana/sdk/y;->c:Z

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sput-boolean v1, Lcom/cloud/hisavana/sdk/y;->c:Z

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/cloud/hisavana/sdk/y;->d:J

    sub-long v5, v3, v5

    int-to-long v7, v0

    const-wide/32 v9, 0x36ee80

    mul-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    sput-wide v3, Lcom/cloud/hisavana/sdk/y;->d:J

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->U()V

    goto :goto_0

    :goto_1
    return v2
.end method

.method public final S()Lkotlin/Triple;
    .locals 11

    const-string p0, "AttrDataManager"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->e()Lqud;

    move-result-object v2

    invoke-interface {v2}, Lqud;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lswd;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Lswd;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lswd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "action_type"

    invoke-virtual {v3}, Lswd;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "p"

    invoke-virtual {v3}, Lswd;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "type"

    invoke-virtual {v3}, Lswd;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "adId"

    invoke-virtual {v3}, Lswd;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "time"

    invoke-virtual {v3}, Lswd;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryClick Exception fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryClick SQLException fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    sget-object v7, Lcom/cloud/hisavana/sdk/y$h;->a:Lcom/cloud/hisavana/sdk/y$h;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v9, 0x3f

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object v10, v1

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Triple;

    invoke-direct {v2, v0, p0, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final T()Lkotlin/Pair;
    .locals 7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->h()Lazd;

    move-result-object v1

    invoke-interface {v1}, Lazd;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz30;

    if-eqz v2, :cond_1

    new-instance v3, Lkotlin/Pair;

    invoke-virtual {v2}, Lz30;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lz30;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lz30;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :goto_2
    new-instance v0, Ljava/lang/Exception;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    new-instance v0, Landroid/database/SQLException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final U()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->h()V

    const/4 p0, 0x0

    sput p0, Lcom/cloud/hisavana/sdk/y;->e:I

    return-void
.end method

.method public final d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getPackageName(...)"

    :goto_0
    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getPsPackageName(...)"

    goto :goto_0

    :goto_2
    return-object p0
.end method

.method public final e(Ljava/util/List;I)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x2

    if-ne p2, p0, :cond_8

    const-string p2, "OTHER"

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "palmplay://"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p0, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p2, "PS"

    goto :goto_1

    :cond_3
    const-string p1, "aha://"

    invoke-static {v0, p1, v1, p0, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p2, "AHA"

    goto :goto_1

    :cond_4
    const-string p1, "market://"

    invoke-static {v0, p1, v1, p0, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "play.google.com"

    invoke-static {v0, p1, v1, p0, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const-string p2, "GP"

    :cond_6
    :goto_1
    return-object p2

    :cond_7
    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "AttrDataManager"

    const-string v0, "ad store deep link is empty"

    invoke-virtual {p0, p1, v0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method public final f(ZI)Lkotlin/Pair;
    .locals 10

    const-string v0, "error_list"

    const-string v1, "count"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "successive_failures_imp"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "successive_failures_click"

    :goto_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lo9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v6, p2, :cond_3

    const/4 v6, 0x5

    if-ne v6, p2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "element"

    invoke-static {v3, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2c

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-le v2, v6, :cond_4

    sput-boolean v4, Lcom/cloud/hisavana/sdk/y;->b:Z

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "hs_attr_shutdown"

    invoke-virtual {v0, v1, v7}, Lo9;->o(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->B()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->v()V

    goto :goto_4

    :cond_3
    :goto_3
    sget v0, Lcom/cloud/hisavana/sdk/y;->e:I

    add-int/2addr v0, v7

    sput v0, Lcom/cloud/hisavana/sdk/y;->e:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    sput-boolean v4, Lcom/cloud/hisavana/sdk/y;->b:Z

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->B()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->v()V

    :cond_4
    :goto_4
    invoke-static {}, Likd;->c()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u6b21errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | \u4e34\u65f6\u964d\u7ea7\u5931\u8d25\u6b21\u6570 : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/cloud/hisavana/sdk/y;->e:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | \u6c38\u4e45\u964d\u7ea7\u5931\u8d25\u6b21\u6570\u548c\u539f\u56e0 :"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AttrDataManager"

    invoke-virtual {p0, p2, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p0, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g(ZLjava/lang/Object;)Lkotlin/Pair;
    .locals 16

    const-string v1, "postData error: "

    const-string v2, "content://com.common.bgainfo.provider/attribute_ew"

    const-string v3, "AttrDataManager"

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/y;->J()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v5, "show"

    goto :goto_0

    :cond_0
    const-string v5, "click"

    :goto_0
    const-string v6, "action"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "linkId"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "content"

    move-object/from16 v6, p2

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/cloud/hisavana/sdk/a;->d:Lcom/cloud/hisavana/sdk/a$a;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v6}, Lcom/cloud/hisavana/sdk/a$a;->a(Lcom/cloud/hisavana/sdk/a$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/a;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/cloud/hisavana/sdk/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v6}, Lcom/cloud/hisavana/sdk/a$a;->a(Lcom/cloud/hisavana/sdk/a$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/a;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ew2913"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/cloud/hisavana/sdk/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "sign"

    invoke-virtual {v15, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v15, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "from"

    const-string v8, "ew"

    invoke-virtual {v15, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v14, v5, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    const-string v12, ""

    :cond_2
    const-string v13, "3"

    invoke-static {v12, v13}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v5, :cond_3

    move v8, v7

    goto :goto_2

    :cond_3
    if-eqz v12, :cond_4

    const/4 v8, 0x5

    goto :goto_2

    :cond_4
    const-wide/16 v12, 0x1388

    cmp-long v8, v8, v12

    if-ltz v8, :cond_5

    move v8, v11

    goto :goto_2

    :cond_5
    move v8, v10

    :goto_2
    invoke-static {}, Likd;->c()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Likd;->b()Likd;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ninsertedUri: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \nerrorCode: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v9, v8

    goto :goto_5

    :goto_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v9, 0x3

    goto :goto_5

    :goto_4
    invoke-static {}, Likd;->b()Likd;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0, v2, v10, v11, v6}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v9, 0x4

    :goto_5
    new-instance v0, Lkotlin/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcy9;->g(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "hs_attr_shutdown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo9;->d(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Llxd;->a:Llxd;

    invoke-virtual {v1}, Llxd;->d()I

    move-result v3

    invoke-virtual {v1}, Llxd;->a()I

    move-result v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-gez v3, :cond_0

    if-ltz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, Lcom/cloud/hisavana/sdk/y;->b:Z

    invoke-static {}, Likd;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAttr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/cloud/hisavana/sdk/y;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nShowDataSyncTimeInterval : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttrDataManager"

    invoke-virtual {p0, v1, v0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final i(I)V
    .locals 3

    const-string p0, "AttrDataManager"

    if-gtz p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid limit value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Likd;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete impressions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->h()Lazd;

    move-result-object v0

    invoke-interface {v0, p1}, Lazd;->a(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error executing delete query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL error executing delete query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final q(Lcom/cloud/sdk/commonutil/util/a$b;ILc74;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/sdk/commonutil/util/a$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/sdk/commonutil/util/a$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/cloud/hisavana/sdk/y;->g(ZLjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v15, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;-><init>(ILjava/lang/String;IJLjava/lang/String;ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v3, p2

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setType(I)V

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setLinkId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/sdk/commonutil/util/a$b;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setCount(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/sdk/commonutil/util/a$b;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setCreatives(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setEventTs(J)V

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setErrorCode(I)V

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Lc74;->invoke()Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/y;->t(Z)V

    invoke-virtual {v15, v2}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setFailCount(I)V

    invoke-virtual {v15, v4}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setErrorList(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/hisavana/sdk/y;->f(ZI)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setFailCount(I)V

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setErrorList(Ljava/lang/String;)V

    :goto_1
    invoke-static {v15}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->K(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 8

    const-string p0, "AttrDataManager"

    if-eqz p1, :cond_3

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-static {}, Likd;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteClicks sql---->,ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->e()Lqud;

    move-result-object v0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Lqud;->a(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteClicks fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public final s(Lkotlin/Pair;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-string v3, "p"

    invoke-static {v3, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "showTime"

    invoke-static {v5, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    filled-new-array {v3, v4}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/y;->g(ZLjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v15, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;-><init>(ILjava/lang/String;IJLjava/lang/String;ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setLinkId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setCount(I)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setCreatives(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setEventTs(J)V

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setErrorCode(I)V

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/y;->i(I)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/y;->t(Z)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setFailCount(I)V

    const-string v0, ""

    invoke-virtual {v15, v0}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setErrorList(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/y;->f(ZI)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setFailCount(I)V

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/cloud/hisavana/sdk/ext/attr/AttrData;->setErrorList(Ljava/lang/String;)V

    :goto_1
    invoke-static {v15}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public final t(Z)V
    .locals 1

    const/4 p0, 0x0

    sput p0, Lcom/cloud/hisavana/sdk/y;->e:I

    if-eqz p1, :cond_0

    const-string/jumbo p0, "successive_failures_imp"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "successive_failures_click"

    :goto_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z
    .locals 3

    sget-boolean p0, Lcom/cloud/hisavana/sdk/y;->b:Z

    const/4 v0, 0x1

    const-string v1, "AttrDataManager"

    if-nez p0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "Attr func disable."

    invoke-virtual {p0, v1, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    sget-object p0, Llxd;->a:Llxd;

    invoke-virtual {p0}, Llxd;->d()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "Show func disable."

    invoke-virtual {p0, v1, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_4
    if-eqz p0, :cond_9

    invoke-static {p0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p0

    const/4 v2, 0x4

    if-ne p0, v2, :cond_6

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "Filter default ad."

    invoke-virtual {p0, v1, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "Exclude regular ads."

    invoke-virtual {p0, v1, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "Ad pkg is empty."

    invoke-virtual {p0, v1, p1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final v()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->e()Lqud;

    move-result-object p0

    invoke-interface {p0}, Lqud;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearClicks fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AttrDataManager"

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "getPullNewestLive(...)"

    const-string v3, "AttrDataManager"

    if-nez v1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "Ad is null."

    invoke-virtual {v0, v3, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/cloud/hisavana/sdk/y;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Likd;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertClick ad info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance v4, Lswd;

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Lcom/cloud/hisavana/sdk/y;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getStoreDeeplink()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Lcom/cloud/hisavana/sdk/y;->e(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v11

    const-string v0, "getCodeSeatId(...)"

    invoke-static {v11, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v14

    const-string v0, "getAdCreativeId(...)"

    invoke-static {v14, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v7, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v16}, Lswd;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->e()Lqud;

    move-result-object v0

    invoke-interface {v0, v4}, Lqud;->a(Lswd;)V

    invoke-static {}, Likd;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertClick success contentValues ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertClick fail "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
