.class public Lhm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lhm0;


# direct methods
.method public constructor <init>(Lhm0;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lhm0$a;->c:Lhm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lhm0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lhm0;Ljava/lang/String;Lam0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lhm0$a;-><init>(Lhm0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lhm0$a;->c:Lhm0;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lfreemarker/core/j;->a0(Ljava/util/List;II)V

    iget-object v0, p0, Lhm0$a;->c:Lhm0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lhm0$a;->c:Lhm0;

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, 0x100000000L

    const/4 v6, 0x2

    if-le v3, v6, :cond_0

    iget-object v3, p0, Lhm0$a;->c:Lhm0;

    invoke-virtual {v3, p1, v6}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkr8;->f(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    and-long v3, v6, v4

    const-wide/16 v8, 0x0

    cmp-long p1, v3, v8

    if-nez p1, :cond_2

    iget-object p1, p0, Lhm0$a;->c:Lhm0;

    iget-object p1, p1, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-static {p1, v6, v7, v2}, Lkr8;->b(Ljava/lang/String;JZ)V

    sget-wide v2, Lkr8;->f:J

    and-long/2addr v2, v6

    cmp-long p1, v2, v8

    if-nez p1, :cond_1

    iget-object p1, p0, Lhm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lhm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    long-to-int p1, v6

    invoke-static {v0, p1}, Lkr8;->c(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lhm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lhm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    :goto_2
    new-instance v1, Lfreemarker/template/SimpleScalar;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lhm0$a;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lhm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-direct {v1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
