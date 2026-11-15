.class public Lmm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lmm0;


# direct methods
.method public constructor <init>(Lmm0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm0$a;->c:Lmm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmm0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lmm0$a;->c:Lmm0;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    iget-object v1, p0, Lmm0$a;->c:Lmm0;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lmm0$a;->c:Lmm0;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkr8;->f(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-wide v8, 0x100000000L

    and-long/2addr v8, v6

    cmp-long p1, v8, v4

    const/4 v0, -0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmm0$a;->c:Lmm0;

    iget-object p1, p1, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-static {p1, v6, v7, v3}, Lkr8;->b(Ljava/lang/String;JZ)V

    sget-wide v8, Lkr8;->f:J

    and-long/2addr v6, v8

    cmp-long p1, v6, v4

    if-nez p1, :cond_1

    iget-object p1, p0, Lmm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lmm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_2

    :cond_3
    long-to-int p1, v6

    invoke-static {v1, p1}, Lkr8;->c(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v1, p0, Lmm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    :goto_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    goto :goto_1

    :cond_4
    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    if-ne p1, v0, :cond_6

    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lmm0$a;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lmm0$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_3
    return-object p1
.end method
