.class public final Ldhb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldhb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldhb;

    invoke-direct {v0}, Ldhb;-><init>()V

    sput-object v0, Ldhb;->a:Ldhb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic m(Ldhb;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ldhb;->l(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    return-void
.end method

.method public static synthetic q(Ldhb;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldhb;->p(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic v(Ldhb;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldhb;->u(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object p0, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    invoke-virtual {p0}, Lcom/cloud/tupdate/TUpdate$a;->b()Lcom/cloud/tupdate/TUpdate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tupdate/TUpdate;->b()Landroid/app/Application;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateInterval()Ljava/util/List;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "update"

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateInterval()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "upgrade_record"

    invoke-virtual {p0, p1, v0}, Ldhb;->j(Lcom/cloud/tupdate/bean/UpdateEntity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    const-string/jumbo v1, "\u6839\u636e\u65f6\u95f4\u95f4\u9694\u7684\u81ea\u52a8\u666e\u901a\u5347\u7ea7"

    invoke-virtual {v0, v2, v1}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Ldhb;->f(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p3, Lvk;->a:Lvk;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lvk;->x(I)V

    invoke-virtual {p0, p1, p2}, Ldhb;->e(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lww4;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "tupdate_update_day"

    invoke-virtual {p0, v1, v3, v0}, Ldhb;->i(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    const-string/jumbo v1, "\u975e\u65f6\u95f4\u95f4\u9694\u7684\u81ea\u52a8\u666e\u901a\u5347\u7ea7"

    invoke-virtual {v0, v2, v1}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Ldhb;->f(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p3, Lvk;->a:Lvk;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lvk;->x(I)V

    invoke-virtual {p0, p1, p2}, Ldhb;->e(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    :goto_1
    return-void
.end method

.method public final c(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V
    .locals 3

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldhb;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Ldhb;->b(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Ldhb;->e(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    :goto_1
    return-void
.end method

.method public final d(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    const-string/jumbo v0, "update"

    const-string/jumbo v1, "\u624b\u52a8\u666e\u901a\u5347\u7ea7"

    invoke-virtual {p0, v0, v1}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, p2, p3}, Lww4;->c(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V
    .locals 4

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/AppScoreContent;->getShowAfterUpdate()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "update"

    if-eqz v1, :cond_4

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v1

    const-string/jumbo v3, "\u5347\u7ea7\u540e\u81ea\u52a8\u5f39\u8bc4\u5206 \u5f00\u5173 = true"

    invoke-virtual {v1, v2, v3}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldhb;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v1

    const-string/jumbo v3, "\u5347\u7ea7\u540e\u81ea\u52a8\u5f39\u8bc4\u5206\u5f39\u6846"

    invoke-virtual {v1, v2, v3}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, p2}, Lww4;->j(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    sget-object p1, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    invoke-virtual {p1}, Lcom/cloud/tupdate/TUpdate$a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Ldhb;->p(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    invoke-virtual {v1}, Lcom/cloud/tupdate/TUpdate$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ldhb;->h(Landroid/content/Context;Lcom/cloud/tupdate/bean/UpdateEntity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v1

    const-string/jumbo v3, "\u5347\u7ea7\u540e\u6839\u636e\u65f6\u95f4\u95f4\u9694\u5f39\u8bc4\u5206\u5f39\u6846"

    invoke-virtual {v1, v2, v3}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, p2}, Lww4;->j(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Ldhb;->s(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    invoke-virtual {v0}, Lcom/cloud/tupdate/TUpdate$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ldhb;->h(Landroid/content/Context;Lcom/cloud/tupdate/bean/UpdateEntity;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    const-string/jumbo v0, "\u5347\u7ea7\u540e\u5f39\u8bc4\u5206\u5f15\u5bfc\u5173\u95ed\uff0c\u6839\u636e\u65f6\u95f4\u95f4\u9694\u5f39\u8bc4\u5206\u5f39\u6846"

    invoke-virtual {p0, v2, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, p2}, Lww4;->j(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final f(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lww4$a;->a(Lww4;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;ZILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lpg9;->a:Lpg9;

    invoke-virtual {v0}, Lpg9;->a()Lsg9;

    move-result-object v0

    const-string v1, "ignore_upgrade_dialog"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "ignoreInstallDialogValue"

    invoke-static {v3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "-"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v0, Lvk;->a:Lvk;

    invoke-virtual {v0, p0}, Lvk;->x(I)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return p0
.end method

.method public final h(Landroid/content/Context;Lcom/cloud/tupdate/bean/UpdateEntity;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_1
    sget-object v1, Lpg9;->a:Lpg9;

    invoke-virtual {v1}, Lpg9;->a()Lsg9;

    move-result-object v3

    const-string v4, "score_record"

    invoke-virtual {v3, v4, v2}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lpg9;->a()Lsg9;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lsg9;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    if-eqz v6, :cond_9

    invoke-static {v6}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v1, "scoreRecordValue"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "#"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :try_start_0
    invoke-static {v8, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/AppScoreContent;->getIntervalDays()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/AppScoreContent;->getIntervalDays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/AppScoreContent;->getIntervalDays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v9, v3, 0x1

    if-lt v1, v9, :cond_6

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getIntervalDays()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/16 v1, 0x18

    int-to-float v1, v1

    mul-float/2addr p2, v1

    const/16 v1, 0x3c

    int-to-float v1, v1

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    long-to-float v1, v3

    cmpl-float p2, v1, p2

    if-lez p2, :cond_6

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v6 .. v12}, Ldhb;->q(Ldhb;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;ILjava/lang/Object;)V

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    return v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v5, v1, p2}, Ldhb;->p(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_3
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_8
    return v0

    :cond_9
    :goto_4
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Ldhb;->q(Ldhb;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;ILjava/lang/Object;)V

    :cond_a
    :goto_5
    return v0
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object p1, Lpg9;->a:Lpg9;

    invoke-virtual {p1}, Lpg9;->a()Lsg9;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lsg9;->g(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public final j(Lcom/cloud/tupdate/bean/UpdateEntity;Ljava/lang/String;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    sget-object v0, Lpg9;->a:Lpg9;

    invoke-virtual {v0}, Lpg9;->a()Lsg9;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    if-eqz v5, :cond_7

    invoke-static {v5}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string/jumbo v2, "updateRecordValue"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "#"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :try_start_0
    invoke-static {v6, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateInterval()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateInterval()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateInterval()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateInterval()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/16 v2, 0x18

    int-to-float v2, v2

    mul-float/2addr p1, v2

    const/16 v2, 0x3c

    int-to-float v2, v2

    mul-float/2addr p1, v2

    mul-float/2addr p1, v2

    const/16 v2, 0x3e8

    int-to-float v2, v2

    mul-float/2addr p1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    long-to-float v2, v4

    cmpl-float p1, v2, p1

    if-lez p1, :cond_4

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v7, v3

    move-object v8, p2

    invoke-static/range {v5 .. v11}, Ldhb;->v(Ldhb;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)V

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    return v1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p0, v4, v2, p2, p1}, Ldhb;->u(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_2
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_6
    return v1

    :cond_7
    :goto_3
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move-object v6, p2

    invoke-static/range {v3 .. v9}, Ldhb;->v(Ldhb;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)V

    return v0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 10

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    const-string/jumbo v0, "version = "

    invoke-static {v0, p1}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-virtual {p0, v1, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lpg9;->a:Lpg9;

    invoke-virtual {v0}, Lpg9;->a()Lsg9;

    move-result-object v0

    const-string v2, "is_show_After_Update"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    const-string v2, "isShowScoreDialogValue = "

    invoke-static {v2, v4}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-static {v4}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "isShowScoreDialogValue"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "-"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public final l(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 6

    const-string/jumbo p0, "updateManager"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lpg9;->a:Lpg9;

    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object v0

    const-string/jumbo v1, "show_dialog_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsg9;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    sget-object v0, Lvk;->a:Lvk;

    invoke-virtual {v0}, Lvk;->t()V

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v3, Lvk;->a:Lvk;

    invoke-interface {p2}, Lww4;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_1

    :cond_5
    sget-object v5, Lqa1;->a:Lqa1;

    invoke-virtual {v5, v4}, Lqa1;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvk;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lsg9;->m(Ljava/lang/String;Z)V

    :goto_2
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->getCriteriaResult()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string/jumbo v0, "\u5b9a\u5411\u6761\u4ef6\u7ed3\u679c = "

    invoke-static {v0, v2}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-virtual {p0, v1, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    const-string/jumbo v0, "\u5f3a\u5236\u5347\u7ea7"

    invoke-virtual {p0, v1, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, p2, p3}, Lww4;->c(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    goto :goto_4

    :cond_8
    if-eqz p3, :cond_9

    sget-object p0, Ldhb;->a:Ldhb;

    invoke-virtual {p0, p1, p2, p3}, Ldhb;->d(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    goto :goto_4

    :cond_9
    sget-object p0, Ldhb;->a:Ldhb;

    invoke-virtual {p0, p1, p2}, Ldhb;->c(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    :goto_4
    return-void
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lpg9;->a:Lpg9;

    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignore_upgrade_dialog"

    invoke-virtual {p0, p2, p1}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Long;)V
    .locals 8

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p0, 0x23

    const-string p1, "score_record"

    if-nez p4, :cond_2

    :try_start_0
    sget-object p4, Lpg9;->a:Lpg9;

    invoke-virtual {p4}, Lpg9;->a()Lsg9;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SharedPreferencesHelper.\u2026ing(KEY_SCORE_RECORD, \"\")"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lpg9;->a()Lsg9;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "#-1#"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v0, "#"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4}, Lpg9;->a()Lsg9;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p1, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lpg9;->a:Lpg9;

    invoke-virtual {v0}, Lpg9;->a()Lsg9;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final r(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lpg9;->a:Lpg9;

    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lsg9;->m(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Ljava/lang/String;Z)V
    .locals 9

    if-eqz p1, :cond_4

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p0, Lpg9;->a:Lpg9;

    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object v0

    const-string v1, ""

    const-string v2, "is_show_After_Update"

    invoke-virtual {v0, v2, v1}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    const-string v1, "saveShowScoreDialogValue --> isShowScoreDialogValue = "

    invoke-static {v1, v3}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "update"

    invoke-virtual {v0, v4, v1}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2d

    if-eqz v3, :cond_3

    invoke-static {v3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "isShowScoreDialogValue"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    const-string p0, "judgeKey"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lpg9;->a:Lpg9;

    invoke-virtual {p0}, Lpg9;->a()Lsg9;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lsg9;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public final u(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x23

    if-nez p4, :cond_2

    :try_start_0
    sget-object p4, Lpg9;->a:Lpg9;

    invoke-virtual {p4}, Lpg9;->a()Lsg9;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Lsg9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SharedPreferencesHelper.\u2026e.getString(judgeKey, \"\")"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lpg9;->a()Lsg9;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "#-1#"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v0, "#"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4}, Lpg9;->a()Lsg9;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p3, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lpg9;->a:Lpg9;

    invoke-virtual {v0}, Lpg9;->a()Lsg9;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
