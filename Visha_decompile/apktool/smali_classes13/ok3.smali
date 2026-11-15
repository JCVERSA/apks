.class public abstract Lok3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/schabi/newpipe/extractor/Info;Ltl5;)Ltl5$a;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ltl5;->r()Ltl5$a;

    move-result-object p1

    invoke-virtual {p1}, Ltl5$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->H()Lyz4;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lyz4;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lyz4;->f()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
