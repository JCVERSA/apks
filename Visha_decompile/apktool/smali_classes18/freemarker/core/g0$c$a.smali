.class public Lfreemarker/core/g0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lfreemarker/core/g0$c;


# direct methods
.method public constructor <init>(Lfreemarker/core/g0$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/g0$c$a;->c:Lfreemarker/core/g0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/g0$c$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/g0$c$a;->c:Lfreemarker/core/g0$c;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-le v0, v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkr8;->f(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    const-wide v6, 0x200000000L

    and-long/2addr v6, v2

    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lfreemarker/core/g0$c$a;->c:Lfreemarker/core/g0$c;

    iget-object v0, v0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " doesn\'t support the \"f\" flag."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkr8;->e(Ljava/lang/String;)V

    :cond_1
    long-to-int p1, v2

    invoke-static {v1, p1}, Lkr8;->c(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    new-instance v0, Lfreemarker/core/g0$a;

    iget-object p0, p0, Lfreemarker/core/g0$c$a;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lfreemarker/core/g0$a;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object v0
.end method
