.class public Lcom/hunantv/imgo/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/util/k$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/imgo/util/k$a;)V
    .locals 8

    .line 12
    :try_start_0
    new-instance v2, Lcom/hunantv/imgo/b/b;

    invoke-direct {v2, p0}, Lcom/hunantv/imgo/b/b;-><init>(Landroid/content/Context;)V

    .line 13
    sget v0, Lcom/mgtv/ssp/R$string;->ssp_confim_leave:I

    invoke-virtual {v2, v0}, Lcom/hunantv/imgo/b/b;->a(I)Lcom/hunantv/imgo/b/b;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$string;->ssp_common_cancel:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/b/b;->b(I)Lcom/hunantv/imgo/b/b;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$string;->ssp_common_confim:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/b/b;->c(I)Lcom/hunantv/imgo/b/b;

    move-result-object v6

    new-instance v7, Lcom/hunantv/imgo/util/k$1;

    move-object v0, v7

    move-object v1, v2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hunantv/imgo/util/k$1;-><init>(Lcom/hunantv/imgo/b/b;Lcom/hunantv/imgo/b/b;Ljava/lang/String;Landroid/content/Context;Lcom/hunantv/imgo/util/k$a;)V

    .line 15
    invoke-virtual {v6, v7}, Lcom/hunantv/imgo/b/b;->a(Lcom/hunantv/imgo/b/b$a;)Lcom/hunantv/imgo/b/b;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/hunantv/imgo/b/b;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 18
    const-string v0, "UTF-8"

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance p3, Lcom/hunantv/imgo/util/k$2;

    invoke-direct {p3, p5, p1, p6, p4}, Lcom/hunantv/imgo/util/k$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/hunantv/imgo/util/k$a;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 20
    invoke-static {p2}, Lcom/hunantv/imgo/util/u;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string p3, "vcode"

    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string p3, "webUrl"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p0, p2}, Lcom/hunantv/imgo/util/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    :goto_1
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "vcode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&jump="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&from="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object v4, p1

    goto :goto_3

    .line 27
    :catchall_0
    const-string p1, ""

    goto :goto_2

    .line 28
    :goto_3
    new-instance p1, Lcom/hunantv/imgo/a/e;

    invoke-direct {p1, p0}, Lcom/hunantv/imgo/a/e;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p0, Lcom/hunantv/imgo/data/EventClickData;

    invoke-static {}, Lcom/hunantv/imgo/util/u;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downdiver"

    const-string v3, "1"

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hunantv/imgo/data/EventClickData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p5}, Lcom/hunantv/imgo/data/EventClickData;->setCpid(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p0}, Lcom/hunantv/imgo/a/e;->a(Lcom/hunantv/imgo/data/EventClickData;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/hunantv/imgo/util/k$a;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/hunantv/imgo/util/k$a;)Z
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/hunantv/imgo/util/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p1}, Lcom/hunantv/imgo/util/u;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {v0, p1, p3}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/imgo/util/k$a;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 8
    invoke-interface {p3}, Lcom/hunantv/imgo/util/k$a;->a()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 9
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 11
    invoke-interface {p3}, Lcom/hunantv/imgo/util/k$a;->a()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
