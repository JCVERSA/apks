.class public abstract Ldt7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldt7$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "dt7"

.field public static final b:[Ldt7$a;

.field public static final c:[Ldt7$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Ldt7$a;

    sget v3, Lcom/transsion/onlinevideo/R$string;->visha_measure_million:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v1, 0xf4240

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldt7$a;-><init>(JIZZ)V

    new-instance v0, Ldt7$a;

    sget v10, Lcom/transsion/onlinevideo/R$string;->visha_measure_thousand:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v8, 0x3e8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldt7$a;-><init>(JIZZ)V

    new-instance v1, Ldt7$a;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ldt7$a;-><init>(J)V

    filled-new-array {v6, v0, v1}, [Ldt7$a;

    move-result-object v0

    sput-object v0, Ldt7;->b:[Ldt7$a;

    new-instance v4, Ldt7$a;

    sget v0, Lcom/transsion/onlinevideo/R$string;->visha_play_one_yewas_ago:I

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_play_one_year_ago:I

    const-wide/32 v5, 0x7e900

    invoke-direct {v4, v5, v6, v0, v1}, Ldt7$a;-><init>(JII)V

    new-instance v5, Ldt7$a;

    sget v0, Lcom/transsion/onlinevideo/R$string;->visha_play_many_months_ago:I

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_play_one_month_ago:I

    const-wide/32 v6, 0xa8c0

    invoke-direct {v5, v6, v7, v0, v1}, Ldt7$a;-><init>(JII)V

    new-instance v6, Ldt7$a;

    sget v0, Lcom/transsion/onlinevideo/R$string;->visha_play_many_weeks_ago:I

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_play_one_week_ago:I

    const-wide/16 v7, 0x2760

    invoke-direct {v6, v7, v8, v0, v1}, Ldt7$a;-><init>(JII)V

    new-instance v7, Ldt7$a;

    sget v0, Lcom/transsion/onlinevideo/R$string;->visha_play_many_days_ago:I

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_play_one_day_ago:I

    const-wide/16 v8, 0x5a0

    invoke-direct {v7, v8, v9, v0, v1}, Ldt7$a;-><init>(JII)V

    new-instance v8, Ldt7$a;

    sget v0, Lcom/transsion/onlinevideo/R$string;->visha_play_many_hours_ago:I

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_play_one_hour_ago:I

    const-wide/16 v9, 0x3c

    invoke-direct {v8, v9, v10, v0, v1}, Ldt7$a;-><init>(JII)V

    new-instance v9, Ldt7$a;

    sget v0, Lcom/transsion/onlinevideo/R$string;->visha_play_many_minutes_ago:I

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_play_one_minute_ago:I

    invoke-direct {v9, v2, v3, v0, v1}, Ldt7$a;-><init>(JII)V

    filled-new-array/range {v4 .. v9}, [Ldt7$a;

    move-result-object v0

    sput-object v0, Ldt7;->c:[Ldt7$a;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;)I
    .locals 0

    invoke-static {p0, p1}, Ldt7;->n(Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ldt7;->m(Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Ldt7;->d(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object p0, Ldt7;->c:[Ldt7$a;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ldt7;->f(JZ)I

    move-result v2

    aget-object p0, p0, v2

    invoke-virtual {p0, v0, v1}, Ldt7$a;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, p0, v0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ldt7;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDiffDay error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v1, 0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->visha_ott_liker:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez v1, :cond_1

    sget p0, Lcom/transsion/onlinevideo/R$string;->visha_ott_likers:I

    const-string p1, "0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_ott_likers:I

    sget-object v2, Ldt7;->b:[Ldt7$a;

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Ldt7;->f(JZ)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p0, p1}, Ldt7$a;->b(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(JZ)I
    .locals 6

    if-eqz p2, :cond_0

    sget-object p2, Ldt7;->c:[Ldt7$a;

    goto :goto_0

    :cond_0
    sget-object p2, Ldt7;->b:[Ldt7$a;

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    long-to-double v2, p0

    aget-object v4, p2, v1

    iget-wide v4, v4, Ldt7$a;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static g(JJLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ldt7;->i(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ldt7;->e(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ldt7;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ldt7;->l(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "VK Video"

    :cond_0
    invoke-static {p0, p1}, Ldt7;->i(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ldt7;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ldt7;->l(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(J)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v1, 0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->visha_ott_viewer:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez v1, :cond_1

    sget p0, Lcom/transsion/onlinevideo/R$string;->visha_ott_viewers:I

    const-string p1, "0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_ott_viewers:I

    sget-object v2, Ldt7;->b:[Ldt7$a;

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Ldt7;->f(JZ)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p0, p1}, Ldt7$a;->b(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCategories()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lct7;

    invoke-direct {v0}, Lct7;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ldt7;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVkBeanCategories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static k(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbt7;

    invoke-direct {v0}, Lbt7;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;->url:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Ldt7;->a:Ljava/lang/String;

    const-string v0, "getVkBetterCoverImage: images is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs l(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_4

    aget-object v1, p1, p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;)I
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;->getResolution()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;->getResolution()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
