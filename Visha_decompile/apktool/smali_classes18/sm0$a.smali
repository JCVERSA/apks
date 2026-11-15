.class public Lsm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lsm0;


# direct methods
.method public constructor <init>(Lsm0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsm0$a;->c:Lsm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsm0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lsm0$a;->c:Lsm0;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-le v0, v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkr8;->f(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-wide v8, 0x100000000L

    and-long/2addr v8, v6

    cmp-long p1, v8, v4

    if-nez p1, :cond_2

    const-string p1, "split"

    invoke-static {p1, v6, v7}, Lkr8;->a(Ljava/lang/String;J)V

    iget-object p0, p0, Lsm0$a;->b:Ljava/lang/String;

    sget-wide v8, Lkr8;->f:J

    and-long/2addr v6, v8

    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {p0, v2, v3}, Ln0a;->V(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    long-to-int p1, v6

    invoke-static {v2, p1}, Lkr8;->c(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object p0, p0, Lsm0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    :goto_2
    sget-object p1, Lgc7;->b:Lgc7;

    invoke-interface {p1, p0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method
