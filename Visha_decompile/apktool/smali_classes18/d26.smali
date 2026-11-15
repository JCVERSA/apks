.class public final Ld26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc26;


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Lb26;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld26;->a:Ljava/util/regex/Matcher;

    iput-object p2, p0, Ld26;->b:Ljava/lang/CharSequence;

    new-instance p1, Ld26$b;

    invoke-direct {p1, p0}, Ld26$b;-><init>(Ld26;)V

    iput-object p1, p0, Ld26;->c:Lb26;

    return-void
.end method

.method public static final synthetic d(Ld26;)Ljava/util/regex/MatchResult;
    .locals 0

    invoke-virtual {p0}, Ld26;->e()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lc26$b;
    .locals 0

    invoke-static {p0}, Lc26$a;->a(Lc26;)Lc26$b;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ld26;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ld26$a;

    invoke-direct {v0, p0}, Ld26$a;-><init>(Ld26;)V

    iput-object v0, p0, Ld26;->d:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Ld26;->d:Ljava/util/List;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public c()Lu15;
    .locals 0

    invoke-virtual {p0}, Ld26;->e()Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-static {p0}, Lhr8;->c(Ljava/util/regex/MatchResult;)Lu15;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/regex/MatchResult;
    .locals 0

    iget-object p0, p0, Ld26;->a:Ljava/util/regex/Matcher;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ld26;->e()Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object p0

    const-string v0, "group(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public next()Lc26;
    .locals 3

    invoke-virtual {p0}, Ld26;->e()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->end()I

    move-result v0

    invoke-virtual {p0}, Ld26;->e()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    invoke-virtual {p0}, Ld26;->e()Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Ld26;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Ld26;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Ld26;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ld26;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v0, p0}, Lhr8;->a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lc26;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
