.class public Lfreemarker/core/g0$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lfreemarker/core/g0$d;


# direct methods
.method public constructor <init>(Lfreemarker/core/g0$d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/g0$d$a;->c:Lfreemarker/core/g0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/g0$d$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/g0$d$a;->c:Lfreemarker/core/g0$d;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide/16 v6, 0x0

    if-le v0, v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkr8;->f(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    const-wide v10, 0x100000000L

    and-long/2addr v10, v8

    cmp-long p1, v10, v6

    const-wide v10, 0x200000000L

    if-nez p1, :cond_3

    const-string p1, "replace"

    invoke-static {p1, v8, v9}, Lkr8;->a(Ljava/lang/String;J)V

    iget-object p0, p0, Lfreemarker/core/g0$d$a;->b:Ljava/lang/String;

    sget-wide v12, Lkr8;->f:J

    and-long/2addr v12, v8

    cmp-long p1, v12, v6

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    and-long/2addr v8, v10

    cmp-long v0, v8, v6

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    invoke-static {p0, v2, v5, p1, v1}, Ln0a;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    long-to-int p1, v8

    invoke-static {v2, p1}, Lkr8;->c(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object p0, p0, Lfreemarker/core/g0$d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    and-long v0, v8, v10

    cmp-long p1, v0, v6

    if-eqz p1, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
