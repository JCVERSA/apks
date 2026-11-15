.class public abstract Lhr8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lc26;
    .locals 0

    invoke-static {p0, p1, p2}, Lhr8;->f(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lc26;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lc26;
    .locals 0

    invoke-static {p0, p1}, Lhr8;->g(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lc26;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Ljava/util/regex/MatchResult;)Lu15;
    .locals 0

    invoke-static {p0}, Lhr8;->h(Ljava/util/regex/MatchResult;)Lu15;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Ljava/util/regex/MatchResult;I)Lu15;
    .locals 0

    invoke-static {p0, p1}, Lhr8;->i(Ljava/util/regex/MatchResult;I)Lu15;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Ljava/lang/Iterable;)I
    .locals 0

    invoke-static {p0}, Lhr8;->j(Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public static final f(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lc26;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ld26;

    invoke-direct {p1, p0, p2}, Ld26;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final g(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lc26;
    .locals 1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ld26;

    invoke-direct {v0, p0, p1}, Ld26;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final h(Ljava/util/regex/MatchResult;)Lu15;
    .locals 1

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->end()I

    move-result p0

    invoke-static {v0, p0}, Lwn8;->q(II)Lu15;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/util/regex/MatchResult;I)Lu15;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result p0

    invoke-static {v0, p0}, Lwn8;->q(II)Lu15;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljava/lang/Iterable;)I
    .locals 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyx3;

    invoke-interface {v1}, Lyx3;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
