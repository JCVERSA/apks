.class public Lorg/jsoup/select/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lmpa;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "~"

    const-string v1, " "

    const-string v2, ","

    const-string v3, ">"

    const-string v4, "+"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/e;->d:[Ljava/lang/String;

    const-string v5, "*="

    const-string v6, "~="

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/e;->e:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/e;->f:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/e;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/e;->b:Ljava/lang/String;

    new-instance v0, Lmpa;

    invoke-direct {v0, p1}, Lmpa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    return-void
.end method

.method public static t(Ljava/lang/String;)Lorg/jsoup/select/c;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/jsoup/select/e;

    invoke-direct {v0, p0}, Lorg/jsoup/select/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/select/e;->s()Lorg/jsoup/select/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$a;

    invoke-direct {v0}, Lorg/jsoup/select/c$a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    new-instance v0, Lmpa;

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmpa;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jsoup/select/e;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmpa;->h([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldnb;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmpa;->i()Z

    invoke-virtual {v0}, Lmpa;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/c$d;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$b;

    invoke-direct {v0, v1}, Lorg/jsoup/select/c$b;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/c$e;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/c$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/c$i;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/c$i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/c$j;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/c$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/c$g;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/c$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/c$f;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/c$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/c$h;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/c$h;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_7
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object p0, p0, Lorg/jsoup/select/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lmpa;->q()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v1, v0, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldnb;->g(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/c$k;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/c$k;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldnb;->g(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/c$p;

    invoke-direct {v1, v0}, Lorg/jsoup/select/c$p;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v1}, Lmpa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv17;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldnb;->g(Ljava/lang/String;)V

    const-string v2, "*|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v5, Lorg/jsoup/select/b$b;

    new-instance v6, Lorg/jsoup/select/c$j0;

    invoke-direct {v6, v3}, Lorg/jsoup/select/c$j0;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/jsoup/select/c$k0;

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/jsoup/select/c$k0;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Lorg/jsoup/select/c;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-direct {v5, v0}, Lorg/jsoup/select/b$b;-><init>([Lorg/jsoup/select/c;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$j0;

    invoke-direct {v0, v1}, Lorg/jsoup/select/c$j0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final f(C)V
    .locals 10

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v1}, Lmpa;->i()Z

    invoke-virtual {p0}, Lorg/jsoup/select/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/select/e;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/select/c;

    instance-of v6, v2, Lorg/jsoup/select/b$b;

    if-eqz v6, :cond_0

    if-eq p1, v3, :cond_0

    move-object v6, v2

    check-cast v6, Lorg/jsoup/select/b$b;

    invoke-virtual {v6}, Lorg/jsoup/select/b;->c()Lorg/jsoup/select/c;

    move-result-object v6

    move v7, v5

    move-object v9, v6

    move-object v6, v2

    move-object v2, v9

    goto :goto_1

    :cond_0
    :goto_0
    move-object v6, v2

    move v7, v4

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/jsoup/select/b$a;

    iget-object v6, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-direct {v2, v6}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/16 v8, 0x20

    if-eq p1, v8, :cond_7

    const/16 v8, 0x3e

    if-eq p1, v8, :cond_6

    const/16 v8, 0x7e

    if-eq p1, v8, :cond_5

    const/16 v8, 0x2b

    if-eq p1, v8, :cond_4

    if-ne p1, v3, :cond_3

    instance-of p1, v2, Lorg/jsoup/select/b$b;

    if-eqz p1, :cond_2

    check-cast v2, Lorg/jsoup/select/b$b;

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/jsoup/select/b$b;

    invoke-direct {p1}, Lorg/jsoup/select/b$b;-><init>()V

    invoke-virtual {p1, v2}, Lorg/jsoup/select/b$b;->e(Lorg/jsoup/select/c;)V

    move-object v2, p1

    :goto_2
    invoke-virtual {v2, v1}, Lorg/jsoup/select/b$b;->e(Lorg/jsoup/select/c;)V

    goto :goto_4

    :cond_3
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown combinator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    new-instance p1, Lorg/jsoup/select/b$a;

    new-instance v3, Lorg/jsoup/select/f$c;

    invoke-direct {v3, v2}, Lorg/jsoup/select/f$c;-><init>(Lorg/jsoup/select/c;)V

    new-array v0, v0, [Lorg/jsoup/select/c;

    aput-object v3, v0, v4

    aput-object v1, v0, v5

    invoke-direct {p1, v0}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/c;)V

    :goto_3
    move-object v2, p1

    goto :goto_4

    :cond_5
    new-instance p1, Lorg/jsoup/select/b$a;

    new-instance v3, Lorg/jsoup/select/f$f;

    invoke-direct {v3, v2}, Lorg/jsoup/select/f$f;-><init>(Lorg/jsoup/select/c;)V

    new-array v0, v0, [Lorg/jsoup/select/c;

    aput-object v3, v0, v4

    aput-object v1, v0, v5

    invoke-direct {p1, v0}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/c;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/jsoup/select/b$a;

    new-instance v3, Lorg/jsoup/select/f$b;

    invoke-direct {v3, v2}, Lorg/jsoup/select/f$b;-><init>(Lorg/jsoup/select/c;)V

    new-array v0, v0, [Lorg/jsoup/select/c;

    aput-object v3, v0, v4

    aput-object v1, v0, v5

    invoke-direct {p1, v0}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/c;)V

    goto :goto_3

    :cond_7
    new-instance p1, Lorg/jsoup/select/b$a;

    new-instance v3, Lorg/jsoup/select/f$e;

    invoke-direct {v3, v2}, Lorg/jsoup/select/f$e;-><init>(Lorg/jsoup/select/c;)V

    new-array v0, v0, [Lorg/jsoup/select/c;

    aput-object v3, v0, v4

    aput-object v1, v0, v5

    invoke-direct {p1, v0}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/c;)V

    goto :goto_3

    :goto_4
    if-eqz v7, :cond_8

    move-object p1, v6

    check-cast p1, Lorg/jsoup/select/b$b;

    invoke-virtual {p1, v2}, Lorg/jsoup/select/b;->b(Lorg/jsoup/select/c;)V

    goto :goto_5

    :cond_8
    move-object v6, v2

    :goto_5
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g()I
    .locals 2

    iget-object p0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lmpa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lm0a;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Index must be numeric"

    invoke-static {v0, v1}, Ldnb;->d(ZLjava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v1}, Lmpa;->j()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    sget-object v2, Lorg/jsoup/select/e;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmpa;->n([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v1}, Lmpa;->c()C

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v1}, Lmpa;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":contains"

    :goto_0
    invoke-virtual {v0, v1}, Lmpa;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpa;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Ldnb;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$m;

    invoke-direct {p1, v0}, Lorg/jsoup/select/c$m;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$n;

    invoke-direct {p1, v0}, Lorg/jsoup/select/c$n;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":containsData"

    invoke-virtual {v0, v1}, Lmpa;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpa;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":containsData(text) query must not be empty"

    invoke-static {v0, v1}, Ldnb;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/c$l;

    invoke-direct {v1, v0}, Lorg/jsoup/select/c$l;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(ZZ)V
    .locals 8

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lmpa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv17;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/select/e;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lorg/jsoup/select/e;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v6

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$b0;

    invoke-direct {p1, v4, v5}, Lorg/jsoup/select/c$b0;-><init>(II)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$c0;

    invoke-direct {p1, v4, v5}, Lorg/jsoup/select/c$c0;-><init>(II)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$a0;

    invoke-direct {p1, v4, v5}, Lorg/jsoup/select/c$a0;-><init>(II)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$z;

    invoke-direct {p1, v4, v5}, Lorg/jsoup/select/c$z;-><init>(II)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :cond_8
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string p1, "Could not parse nth-index \'%s\': unexpected format"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/select/e;->d()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/select/e;->c()V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->p()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/select/e;->b()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/jsoup/select/e;->a()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/jsoup/select/e;->p()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/jsoup/select/e;->o()V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/jsoup/select/e;->n()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/jsoup/select/e;->m()V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Lorg/jsoup/select/e;->i(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v2, ":containsOwn("

    invoke-virtual {v0, v2}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0, v2}, Lorg/jsoup/select/e;->i(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":containsData("

    invoke-virtual {v0, v3}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/jsoup/select/e;->j()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":matches("

    invoke-virtual {v0, v3}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Lorg/jsoup/select/e;->q(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":matchesOwn("

    invoke-virtual {v0, v3}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v2}, Lorg/jsoup/select/e;->q(Z)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":not("

    invoke-virtual {v0, v3}, Lmpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/jsoup/select/e;->r()V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":nth-child("

    invoke-virtual {v0, v3}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1, v1}, Lorg/jsoup/select/e;->k(ZZ)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":nth-last-child("

    invoke-virtual {v0, v3}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v2, v1}, Lorg/jsoup/select/e;->k(ZZ)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v3, ":nth-of-type("

    invoke-virtual {v0, v3}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/select/e;->k(ZZ)V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":nth-last-of-type("

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v2, v2}, Lorg/jsoup/select/e;->k(ZZ)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":first-child"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$v;

    invoke-direct {v0}, Lorg/jsoup/select/c$v;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":last-child"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$x;

    invoke-direct {v0}, Lorg/jsoup/select/c$x;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":first-of-type"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$w;

    invoke-direct {v0}, Lorg/jsoup/select/c$w;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":last-of-type"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$y;

    invoke-direct {v0}, Lorg/jsoup/select/c$y;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":only-child"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$d0;

    invoke-direct {v0}, Lorg/jsoup/select/c$d0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_17
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":only-of-type"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$e0;

    invoke-direct {v0}, Lorg/jsoup/select/c$e0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":empty"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$u;

    invoke-direct {v0}, Lorg/jsoup/select/c$u;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_19
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":root"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$f0;

    invoke-direct {v0}, Lorg/jsoup/select/c$f0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1a
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":matchText"

    invoke-virtual {v0, v1}, Lmpa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v0, Lorg/jsoup/select/c$g0;

    invoke-direct {v0}, Lorg/jsoup/select/c$g0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1b
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/e;->b:Ljava/lang/String;

    iget-object p0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {p0}, Lmpa;->q()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1c
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/e;->e()V

    :goto_1
    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lmpa;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Ldnb;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/f$a;

    invoke-static {v0}, Lorg/jsoup/select/e;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/f$a;-><init>(Lorg/jsoup/select/c;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/c$q;

    invoke-virtual {p0}, Lorg/jsoup/select/e;->g()I

    move-result p0

    invoke-direct {v1, p0}, Lorg/jsoup/select/c$q;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/c$s;

    invoke-virtual {p0}, Lorg/jsoup/select/e;->g()I

    move-result p0

    invoke-direct {v1, p0}, Lorg/jsoup/select/c$s;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/c$t;

    invoke-virtual {p0}, Lorg/jsoup/select/e;->g()I

    move-result p0

    invoke-direct {v1, p0}, Lorg/jsoup/select/c$t;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(Z)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":matches"

    :goto_0
    invoke-virtual {v0, v1}, Lmpa;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Ldnb;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$i0;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jsoup/select/c$i0;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance p1, Lorg/jsoup/select/c$h0;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jsoup/select/c$h0;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lmpa;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lmpa;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Ldnb;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/f$d;

    invoke-static {v0}, Lorg/jsoup/select/e;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/f$d;-><init>(Lorg/jsoup/select/c;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()Lorg/jsoup/select/c;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->i()Z

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    sget-object v1, Lorg/jsoup/select/e;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmpa;->n([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/f$g;

    invoke-direct {v1}, Lorg/jsoup/select/f$g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->c()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/select/e;->f(C)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/select/e;->l()V

    :goto_0
    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->i()Z

    move-result v0

    iget-object v1, p0, Lorg/jsoup/select/e;->a:Lmpa;

    sget-object v2, Lorg/jsoup/select/e;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmpa;->n([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/select/e;->a:Lmpa;

    invoke-virtual {v0}, Lmpa;->c()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/select/e;->f(C)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/jsoup/select/e;->f(C)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/select/e;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/select/c;

    return-object p0

    :cond_4
    new-instance v0, Lorg/jsoup/select/b$a;

    iget-object p0, p0, Lorg/jsoup/select/e;->c:Ljava/util/List;

    invoke-direct {v0, p0}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/select/e;->b:Ljava/lang/String;

    return-object p0
.end method
