.class public Lfreemarker/core/g0$b;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 7

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    instance-of v0, v3, Lfreemarker/core/g0$a;

    if-eqz v0, :cond_0

    check-cast v3, Lfreemarker/core/g0$a;

    invoke-virtual {v3}, Lfreemarker/core/g0$a;->c()Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v3, Lfreemarker/core/g0$a$a;

    if-eqz v0, :cond_1

    check-cast v3, Lfreemarker/core/g0$a$a;

    iget-object p0, v3, Lfreemarker/core/g0$a$a;->c:Lfreemarker/template/SimpleSequence;

    return-object p0

    :cond_1
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/g0;->a:Ljava/lang/Class;

    if-nez p0, :cond_2

    const-string p0, "freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel"

    invoke-static {p0}, Lfreemarker/core/g0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/g0;->a:Ljava/lang/Class;

    :cond_2
    sget-object v1, Lfreemarker/core/g0;->b:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups"

    invoke-static {v1}, Lfreemarker/core/g0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/g0;->b:Ljava/lang/Class;

    :cond_3
    filled-new-array {p0, v1}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "regular expression matcher"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method
