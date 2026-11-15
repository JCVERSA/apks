.class public Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a:I

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->c:Ljava/lang/String;

    iput-wide p4, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->d:J

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->e:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->d:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->c:Ljava/lang/String;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->d:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
