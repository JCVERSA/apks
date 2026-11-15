.class public abstract Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.super Lmk3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmk3;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public B()Ljava/util/Locale;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public C()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public E()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public F()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public G()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0
.end method

.method public H()Lyz4;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public I()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract J()Lorg/schabi/newpipe/extractor/stream/StreamType;
.end method

.method public K()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public L()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public M()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public N()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public O()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public P()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Q()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract R()Ljava/util/List;
.end method

.method public S()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public T(Ljava/lang/String;)J
    .locals 5

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    :try_start_1
    const-string p1, "(\\d+)s"

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "(\\d+)m"

    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v2, "(\\d+)h"

    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-object p1, v0

    move-object v1, p1

    :catch_2
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "t=(\\d+)"

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_2

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_3

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    int-to-long v0, p0

    const-wide/16 v3, 0x3c

    int-to-long p0, p1

    mul-long/2addr p0, v3

    add-long/2addr v0, p0

    const-wide/16 p0, 0xe10

    int-to-long v2, v2

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0

    :goto_5
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get timestamp."

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    const-wide/16 p0, 0x0

    return-wide p0

    :catch_4
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method public U()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public V()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract W()Ljava/lang/String;
.end method

.method public X()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract Y()Ljava/lang/String;
.end method

.method public abstract Z()Ljava/util/List;
.end method

.method public abstract a0()Ljava/util/List;
.end method

.method public b0()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public r()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract s()Ljava/util/List;
.end method

.method public t()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract v()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public w()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public y()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public z()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
