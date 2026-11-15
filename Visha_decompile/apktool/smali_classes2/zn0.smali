.class public final Lzn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/l;


# instance fields
.field public final a:Luk3;

.field public b:Lnk3;

.field public c:Lpk3;


# direct methods
.method public constructor <init>(Luk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzn0;->a:Luk3;

    return-void
.end method


# virtual methods
.method public a(Lms1;Landroid/net/Uri;Ljava/util/Map;JJLqk3;)V
    .locals 7

    new-instance v6, Li12;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Li12;-><init>(Lms1;JJ)V

    iput-object v6, p0, Lzn0;->c:Lpk3;

    iget-object p1, p0, Lzn0;->b:Lnk3;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lzn0;->a:Luk3;

    invoke-interface {p1, p2, p3}, Luk3;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lnk3;

    move-result-object p1

    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, Lzn0;->b:Lnk3;

    goto :goto_6

    :cond_1
    array-length p3, p1

    move v0, p6

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    :try_start_0
    invoke-interface {v1, v6}, Lnk3;->c(Lpk3;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lzn0;->b:Lnk3;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p7}, Lzi;->g(Z)V

    invoke-interface {v6}, Lpk3;->resetPeekPosition()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lzn0;->b:Lnk3;

    if-nez v1, :cond_4

    invoke-interface {v6}, Lpk3;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, p6

    goto :goto_2

    :cond_4
    :goto_1
    move v1, p7

    :goto_2
    invoke-static {v1}, Lzi;->g(Z)V

    invoke-interface {v6}, Lpk3;->resetPeekPosition()V

    goto :goto_4

    :goto_3
    iget-object p0, p0, Lzn0;->b:Lnk3;

    if-nez p0, :cond_5

    invoke-interface {v6}, Lpk3;->getPosition()J

    move-result-wide p2

    cmp-long p0, p2, p4

    if-nez p0, :cond_6

    :cond_5
    move p6, p7

    :cond_6
    invoke-static {p6}, Lzi;->g(Z)V

    invoke-interface {v6}, Lpk3;->resetPeekPosition()V

    throw p1

    :catch_0
    iget-object v1, p0, Lzn0;->b:Lnk3;

    if-nez v1, :cond_4

    invoke-interface {v6}, Lpk3;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_3

    goto :goto_1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    iget-object p3, p0, Lzn0;->b:Lnk3;

    if-eqz p3, :cond_8

    :goto_6
    iget-object p0, p0, Lzn0;->b:Lnk3;

    invoke-interface {p0, p8}, Lnk3;->a(Lqk3;)V

    return-void

    :cond_8
    new-instance p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "None of the available extractors ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lblb;->G([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p0
.end method

.method public b(Lid8;)I
    .locals 1

    iget-object v0, p0, Lzn0;->b:Lnk3;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnk3;

    iget-object p0, p0, Lzn0;->c:Lpk3;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpk3;

    invoke-interface {v0, p0, p1}, Lnk3;->b(Lpk3;Lid8;)I

    move-result p0

    return p0
.end method

.method public disableSeekingOnMp3Streams()V
    .locals 1

    iget-object p0, p0, Lzn0;->b:Lnk3;

    instance-of v0, p0, Lkr6;

    if-eqz v0, :cond_0

    check-cast p0, Lkr6;

    invoke-virtual {p0}, Lkr6;->i()V

    :cond_0
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    iget-object p0, p0, Lzn0;->c:Lpk3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lpk3;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lzn0;->b:Lnk3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnk3;->release()V

    iput-object v1, p0, Lzn0;->b:Lnk3;

    :cond_0
    iput-object v1, p0, Lzn0;->c:Lpk3;

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iget-object p0, p0, Lzn0;->b:Lnk3;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnk3;

    invoke-interface {p0, p1, p2, p3, p4}, Lnk3;->seek(JJ)V

    return-void
.end method
