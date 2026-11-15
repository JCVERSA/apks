.class public final Lkg8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg8$a;
    }
.end annotation


# static fields
.field public static final a:Lkg8;

.field public static b:J

.field public static final c:J

.field public static final d:J

.field public static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkg8;

    invoke-direct {v0}, Lkg8;-><init>()V

    sput-object v0, Lkg8;->a:Lkg8;

    invoke-static {}, Lge;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x30

    :goto_0
    sput-wide v0, Lkg8;->b:J

    invoke-static {}, Lge;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xa

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x7

    :goto_1
    sput-wide v0, Lkg8;->c:J

    const-string v6, "asia.pool.ntp.org"

    const-string v7, "cn.pool.ntp.org"

    const-string v2, "time.apple.com"

    const-string v3, "time.google.com"

    const-string v4, "time.windows.com"

    const-string v5, "pool.ntp.org"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkg8;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b()J
    .locals 2

    sget-wide v0, Lkg8;->b:J

    return-wide v0
.end method

.method public static final d()J
    .locals 2

    sget-wide v0, Lkg8;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)J
    .locals 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Le07;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    invoke-static {}, Ljg8;->a()Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkg8;->e()J

    move-result-wide v0

    sget-wide p0, Lkg8;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v0, p0

    if-lez v2, :cond_2

    :cond_1
    move-wide p0, v0

    goto :goto_1

    :goto_0
    const-string v0, "getCurrentTime failed"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PrivacyTimeUtil"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkg8;->e()J

    move-result-wide p0

    sget-wide v0, Lkg8;->d:J

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    :cond_2
    :goto_1
    return-wide p0
.end method

.method public final c(Landroid/content/Context;JJLkg8$a;)Ljava/lang/String;
    .locals 9

    const-string p0, "mContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callBack"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lge;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-wide v0, Lkg8;->c:J

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-wide v0, Lkg8;->c:J

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    sget-wide v2, Lkg8;->d:J

    cmp-long p0, p4, v2

    const-string v2, "getString(...)"

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_countdown_notice_no_network:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {}, Lge;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-wide v3, Lkg8;->b:J

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-wide v3, Lkg8;->b:J

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    :goto_1
    add-long/2addr p2, v3

    const-wide/16 v3, 0x0

    invoke-static {p2, p3, v3, v4}, Lwn8;->e(JJ)J

    move-result-wide p2

    sub-long/2addr p2, p4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide p4

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    const/16 p0, 0x3c

    int-to-long v5, p0

    rem-long/2addr v3, v5

    neg-long v0, v0

    cmp-long p0, v0, p2

    const-string v5, ""

    const/4 v6, 0x1

    const-wide/16 v7, 0x1

    if-gtz p0, :cond_3

    cmp-long p0, p2, v7

    if-gez p0, :cond_3

    invoke-interface {p6, v6}, Lkg8$a;->a(Z)V

    return-object v5

    :cond_3
    cmp-long p0, p2, v0

    if-gez p0, :cond_4

    const/4 p0, 0x0

    invoke-interface {p6, p0}, Lkg8$a;->a(Z)V

    return-object v5

    :cond_4
    cmp-long p0, v7, p4

    const-string p2, "format(...)"

    if-gtz p0, :cond_6

    const-wide/16 v0, 0x31

    cmp-long p0, p4, v0

    if-gez p0, :cond_6

    sget-object p0, Lhz9;->a:Lhz9;

    cmp-long p0, p4, v7

    if-nez p0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_of_hour:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_of_hours:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    cmp-long p0, v7, v3

    if-gtz p0, :cond_8

    const-wide/16 p3, 0x3c

    cmp-long p0, v3, p3

    if-gez p0, :cond_8

    sget-object p0, Lhz9;->a:Lhz9;

    cmp-long p0, v3, v7

    if-nez p0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_of_minute:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_of_minutes:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    sget-object p0, Lhz9;->a:Lhz9;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_of_minute:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "1"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object p0
.end method

.method public final e()J
    .locals 7

    new-instance p0, Lrr9;

    invoke-direct {p0}, Lrr9;-><init>()V

    sget-object v0, Lkg8;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/16 v4, 0xbb8

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lrr9;->e(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lrr9;->a()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0}, Lrr9;->b()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v0

    return-wide v3

    :catch_0
    move-exception v3

    const-string v4, "getNtpTime failed"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "PrivacyTimeUtil"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-wide v0, Lkg8;->d:J

    return-wide v0
.end method
