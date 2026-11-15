.class public final Ld6f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls8f;

.field public b:Z

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Ls8f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ticker"

    invoke-static {p1, v0}, Ly4f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld6f;->a:Ls8f;

    return-void
.end method

.method public static b(Ls8f;)Ld6f;
    .locals 1

    new-instance v0, Ld6f;

    invoke-direct {v0, p0}, Ld6f;-><init>(Ls8f;)V

    invoke-virtual {v0}, Ld6f;->e()Ld6f;

    return-object v0
.end method

.method public static c(Ls8f;)Ld6f;
    .locals 1

    new-instance v0, Ld6f;

    invoke-direct {v0, p0}, Ld6f;-><init>(Ls8f;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    invoke-virtual {p0}, Ld6f;->h()J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d()Ld6f;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld6f;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld6f;->b:Z

    return-object p0
.end method

.method public final e()Ld6f;
    .locals 3

    iget-boolean v0, p0, Ld6f;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Ly4f;->e(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Ld6f;->b:Z

    iget-object v0, p0, Ld6f;->a:Ls8f;

    invoke-virtual {v0}, Ls8f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ld6f;->d:J

    return-object p0
.end method

.method public final f()Ld6f;
    .locals 6

    iget-object v0, p0, Ld6f;->a:Ls8f;

    invoke-virtual {v0}, Ls8f;->a()J

    move-result-wide v0

    iget-boolean v2, p0, Ld6f;->b:Z

    const-string v3, "This stopwatch is already stopped."

    invoke-static {v2, v3}, Ly4f;->e(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Ld6f;->b:Z

    iget-wide v2, p0, Ld6f;->c:J

    iget-wide v4, p0, Ld6f;->d:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Ld6f;->c:J

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Ld6f;->b:Z

    return p0
.end method

.method public final h()J
    .locals 4

    iget-boolean v0, p0, Ld6f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld6f;->a:Ls8f;

    invoke-virtual {v0}, Ls8f;->a()J

    move-result-wide v0

    iget-wide v2, p0, Ld6f;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ld6f;->c:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ld6f;->c:J

    :goto_0
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ld6f;->h()J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    goto :goto_0

    :cond_5
    move-object p0, v2

    :goto_0
    long-to-double v0, v0

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-double v2, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.4g"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lk5f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "d"

    goto :goto_1

    :pswitch_1
    const-string p0, "h"

    goto :goto_1

    :pswitch_2
    const-string p0, "min"

    goto :goto_1

    :pswitch_3
    const-string p0, "s"

    goto :goto_1

    :pswitch_4
    const-string p0, "ms"

    goto :goto_1

    :pswitch_5
    const-string p0, "\u03bcs"

    goto :goto_1

    :pswitch_6
    const-string p0, "ns"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
