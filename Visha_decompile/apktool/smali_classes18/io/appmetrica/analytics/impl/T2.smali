.class public abstract Lio/appmetrica/analytics/impl/T2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ka;


# static fields
.field public static final m:Ljava/util/HashSet;

.field public static final n:Lio/appmetrica/analytics/impl/R2;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lio/appmetrica/analytics/impl/xh;

.field protected final c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final d:Lio/appmetrica/analytics/impl/on;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final e:Lio/appmetrica/analytics/impl/tg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final f:Lio/appmetrica/analytics/impl/C6;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lio/appmetrica/analytics/impl/X;

.field protected final h:Lio/appmetrica/analytics/impl/ni;

.field public i:Lio/appmetrica/analytics/impl/tb;

.field public final j:Lio/appmetrica/analytics/impl/lc;

.field public final k:Lio/appmetrica/analytics/impl/T9;

.field public final l:Lio/appmetrica/analytics/impl/ye;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lio/appmetrica/analytics/impl/T2;->m:Ljava/util/HashSet;

    new-instance v0, Lio/appmetrica/analytics/impl/R2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/R2;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/T2;->n:Lio/appmetrica/analytics/impl/R2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T2;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/T2;->d:Lio/appmetrica/analytics/impl/on;

    iput-object p7, p0, Lio/appmetrica/analytics/impl/T2;->e:Lio/appmetrica/analytics/impl/tg;

    iput-object p8, p0, Lio/appmetrica/analytics/impl/T2;->f:Lio/appmetrica/analytics/impl/C6;

    iput-object p9, p0, Lio/appmetrica/analytics/impl/T2;->g:Lio/appmetrica/analytics/impl/X;

    iput-object p10, p0, Lio/appmetrica/analytics/impl/T2;->l:Lio/appmetrica/analytics/impl/ye;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/b4;->b()Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance p2, Lio/appmetrica/analytics/impl/Tk;

    const-string p4, "Crash Environment"

    invoke-direct {p2, p1, p4}, Lio/appmetrica/analytics/impl/Tk;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lio/appmetrica/analytics/impl/xh;->a(Lio/appmetrica/analytics/impl/Tk;)V

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/b4;->b()Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lio/appmetrica/analytics/impl/s3;->a(Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    :cond_0
    iput-object p5, p0, Lio/appmetrica/analytics/impl/T2;->j:Lio/appmetrica/analytics/impl/lc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lio/appmetrica/analytics/impl/nn;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    move-object v1, p1

    goto :goto_0

    .line 11
    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/impl/R1;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object p1, v0

    .line 13
    :goto_0
    new-instance v2, Lio/appmetrica/analytics/impl/S;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/T2;->j:Lio/appmetrica/analytics/impl/lc;

    .line 14
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/lc;->b()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-direct {v2, v0, v0, v3}, Lio/appmetrica/analytics/impl/S;-><init>(Lio/appmetrica/analytics/impl/Tm;Ljava/util/ArrayList;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    .line 17
    iget-object p1, p1, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/xm;

    .line 18
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 19
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    .line 20
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T9;->c:Lio/appmetrica/analytics/impl/q3;

    .line 21
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 22
    invoke-static {v1, v2, v0, p1, p0}, Lio/appmetrica/analytics/impl/qn;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/S;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/S;)V
    .locals 12
    .param p1    # Lio/appmetrica/analytics/impl/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    new-instance v0, Lio/appmetrica/analytics/impl/W;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    .line 35
    iget-object v1, v1, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/xm;

    .line 36
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    .line 38
    iget-object v2, v2, Lio/appmetrica/analytics/impl/T9;->c:Lio/appmetrica/analytics/impl/q3;

    .line 39
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 40
    invoke-direct {v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/W;-><init>(Lio/appmetrica/analytics/impl/S;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->g:Lio/appmetrica/analytics/impl/X;

    .line 42
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/W;)Lio/appmetrica/analytics/impl/d6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 43
    sget-object v3, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 44
    new-instance v3, Lio/appmetrica/analytics/impl/e4;

    sget-object v4, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x1750

    .line 45
    const-string v5, ""

    invoke-direct {v3, v0, v5, v4, v2}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 46
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v3, v0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, v2, v0, v3, v4}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 50
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANR was reported "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/S;->a:Lio/appmetrica/analytics/impl/Tm;

    if-eqz p1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread[name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Tm;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",tid={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Tm;->c:J

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v2, p1, Lio/appmetrica/analytics/impl/Tm;->b:I

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Tm;->d:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Tm;->f:Ljava/util/List;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, "\n"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lio/appmetrica/analytics/impl/nn;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/nn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 24
    iget-object v2, v0, Lio/appmetrica/analytics/impl/ni;->d:Lio/appmetrica/analytics/impl/i0;

    .line 25
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/i0;->b()V

    .line 26
    iget-object v2, v0, Lio/appmetrica/analytics/impl/ni;->b:Lio/appmetrica/analytics/impl/pn;

    invoke-virtual {v2, p1, v1}, Lio/appmetrica/analytics/impl/pn;->a(Lio/appmetrica/analytics/impl/nn;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/nh;

    move-result-object v1

    .line 27
    iget-object v2, v1, Lio/appmetrica/analytics/impl/nh;->e:Lio/appmetrica/analytics/impl/xh;

    .line 28
    iget-object v3, v0, Lio/appmetrica/analytics/impl/ni;->e:Lio/appmetrica/analytics/impl/rl;

    if-eqz v3, :cond_0

    .line 29
    iget-object v2, v2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 30
    check-cast v3, Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/ni;->c:Lio/appmetrica/analytics/impl/oi;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/oi;->b(Lio/appmetrica/analytics/impl/nh;)V

    .line 33
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    .line 66
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, p1, p0, v2, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid Error Environment (key,value) pair: (%s,%s)."

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Put error environment pair <%s, %s>"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/xh;->c:Lio/appmetrica/analytics/impl/I8;

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I8;->b:Lio/appmetrica/analytics/impl/Tk;

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I8;->a:Lio/appmetrica/analytics/impl/Lc;

    invoke-virtual {v0, p0, p1, p2}, Lio/appmetrica/analytics/impl/Tk;->b(Lio/appmetrica/analytics/impl/Lc;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lio/appmetrica/analytics/impl/T2;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". With value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 9
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 10
    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 12
    sget-object p1, Lio/appmetrica/analytics/impl/s9;->c:Lio/appmetrica/analytics/impl/s9;

    .line 13
    iput-object p1, v7, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/s9;

    .line 14
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {v7, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lio/appmetrica/analytics/impl/T2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 18
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/xh;->f()Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/xh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ni;->d:Lio/appmetrica/analytics/impl/i0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i0;->c()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->i:Lio/appmetrica/analytics/impl/tb;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/tb;->a:Landroid/os/Handler;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/tb;->b:Lio/appmetrica/analytics/impl/T2;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/tb;->c:Lio/appmetrica/analytics/impl/ub;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/xh;->e:Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v2, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    new-instance v8, Lio/appmetrica/analytics/impl/e4;

    sget-object v2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const-string v3, ""

    const/4 v6, 0x0

    const/4 v5, 0x3

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v1, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Clear app environment"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/e4;->n()Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    new-instance v7, Lio/appmetrica/analytics/impl/nh;

    new-instance v6, Lio/appmetrica/analytics/impl/xh;

    new-instance v1, Lio/appmetrica/analytics/impl/pf;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v3, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v6, v1, v3, v4}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    invoke-virtual {v0, v7}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ni;->d:Lio/appmetrica/analytics/impl/i0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i0;->b()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->i:Lio/appmetrica/analytics/impl/tb;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/tb;->a:Landroid/os/Handler;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/tb;->b:Lio/appmetrica/analytics/impl/T2;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/tb;->c:Lio/appmetrica/analytics/impl/ub;

    invoke-static {v1, v2, v0}, Lio/appmetrica/analytics/impl/tb;->a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/T2;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const-string v2, ""

    const/4 v5, 0x0

    const/16 v4, 0x1900

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/xh;->e:Z

    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "[BaseReporter]"

    return-object p0
.end method

.method public k()V
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/xh;->d:Lio/appmetrica/analytics/impl/jf;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v9

    sget-object v3, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/appmetrica/analytics/impl/jf;->a:Lio/appmetrica/analytics/impl/ff;

    if-eqz v1, :cond_0

    :try_start_1
    const-string v4, "preloadInfo"

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ff;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/e4;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    sget-object v3, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v7, 0x1800

    const/4 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/e4;->c(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final pauseSession()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Pause session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/T2;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid App Environment (key,value) pair: (%s,%s)."

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Put app environment: <%s, %s>"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/e4;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    new-instance p1, Lio/appmetrica/analytics/impl/nh;

    new-instance v6, Lio/appmetrica/analytics/impl/xh;

    new-instance p2, Lio/appmetrica/analytics/impl/pf;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {p2, v1}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v6, p2, v1, v3}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/T2;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 10
    .param p1    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    new-instance v1, Lio/appmetrica/analytics/impl/B;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-direct {v1, p1, p2, v2}, Lio/appmetrica/analytics/impl/B;-><init>(Lio/appmetrica/analytics/AdRevenue;ZLio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v3, v2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 4
    invoke-virtual {v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    .line 5
    invoke-static {v3, v1}, Lio/appmetrica/analytics/impl/e4;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/B;)Lio/appmetrica/analytics/impl/e4;

    move-result-object v5

    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/nh;

    .line 7
    new-instance v9, Lio/appmetrica/analytics/impl/xh;

    .line 8
    new-instance v3, Lio/appmetrica/analytics/impl/pf;

    .line 9
    iget-object v4, v2, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    .line 10
    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    .line 11
    new-instance v4, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 12
    iget-object v6, v2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 13
    invoke-direct {v4, v6}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v6, v2, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 16
    invoke-direct {v9, v3, v4, v6}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v1

    .line 17
    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    .line 19
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdRevenue Received: AdRevenue{adRevenue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->currency:Ljava/util/Currency;

    .line 20
    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adType:Lio/appmetrica/analytics/AdType;

    .line 21
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adNetwork=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adNetwork:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adUnitId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adUnitId:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adUnitName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adUnitName:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adPlacementId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adPlacementId:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adPlacementName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adPlacementName:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', precision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->precision:Ljava/lang/String;

    .line 27
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/appmetrica/analytics/AdRevenue;->payload:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", autoCollected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v2

    throw p0
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Z;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/Z;-><init>(Lio/appmetrica/analytics/impl/a0;Ljava/util/Map;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Y;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Y;-><init>(Lio/appmetrica/analytics/impl/Z;)V

    new-instance v0, Lio/appmetrica/analytics/impl/sa;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/sa;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/t4;->a:Lio/appmetrica/analytics/impl/lc;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Zm;->a()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/S;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Zm;->b()[Ljava/lang/StackTraceElement;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v5, v4

    :catch_1
    :cond_0
    :goto_0
    invoke-interface {v0, v2, v5}, Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/impl/Tm;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/Ym;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/Ym;-><init>()V

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :try_start_2
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Zm;->c()Ljava/util/Map;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    if-eqz v4, :cond_1

    invoke-virtual {v8, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    if-eq v7, v2, :cond_2

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v7, v4}, Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/Tm;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/lc;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v5, v6, p1}, Lio/appmetrica/analytics/impl/S;-><init>(Lio/appmetrica/analytics/impl/Tm;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/impl/T2;->a(Lio/appmetrica/analytics/impl/S;)V

    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 9
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E-commerce event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->getPublicDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/xf;->toProto()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ti;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v2

    new-instance v4, Lio/appmetrica/analytics/impl/e4;

    invoke-direct {v4, v2}, Lio/appmetrica/analytics/impl/e4;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    sget-object v2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const v2, 0xa028

    iput v2, v4, Lio/appmetrica/analytics/impl/a6;->d:I

    iget-object v2, v1, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-static {v2}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/io/Base64Utils;->compressBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/e4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/ti;->b:Lio/appmetrica/analytics/impl/v3;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/v3;->getBytesTruncated()I

    move-result v1

    iput v1, v4, Lio/appmetrica/analytics/impl/a6;->g:I

    new-instance v1, Lio/appmetrica/analytics/impl/nh;

    new-instance v8, Lio/appmetrica/analytics/impl/xh;

    new-instance v2, Lio/appmetrica/analytics/impl/pf;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v3, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v3, v5}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v8, v2, v3, v5}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    return-void
.end method

.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->l:Lio/appmetrica/analytics/impl/ye;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ye;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, v1

    .line 30
    :goto_0
    new-instance v0, Lio/appmetrica/analytics/impl/sg;

    invoke-direct {v0, p2, p1}, Lio/appmetrica/analytics/impl/sg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/nn;)V

    .line 31
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->e:Lio/appmetrica/analytics/impl/tg;

    .line 32
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/tg;->a(Lio/appmetrica/analytics/impl/sg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 33
    sget-object v3, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 34
    new-instance v3, Lio/appmetrica/analytics/impl/e4;

    sget-object v4, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x1708

    .line 35
    invoke-direct {v3, v0, p2, v4, v2}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 36
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v3, v0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p1, v2, v0, v3, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 40
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error from plugin received: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/T2;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    new-instance v0, Lio/appmetrica/analytics/impl/B6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->l:Lio/appmetrica/analytics/impl/ye;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {v1, p3}, Lio/appmetrica/analytics/impl/ye;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p3

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p3, v2

    .line 44
    :goto_0
    new-instance v1, Lio/appmetrica/analytics/impl/sg;

    invoke-direct {v1, p2, p3}, Lio/appmetrica/analytics/impl/sg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/nn;)V

    .line 45
    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/B6;-><init>(Lio/appmetrica/analytics/impl/sg;Ljava/lang/String;)V

    .line 46
    iget-object p3, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->f:Lio/appmetrica/analytics/impl/C6;

    .line 47
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/C6;->a(Lio/appmetrica/analytics/impl/B6;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 48
    sget-object v3, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 49
    new-instance v3, Lio/appmetrica/analytics/impl/e4;

    sget-object v4, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x1708

    .line 50
    invoke-direct {v3, v0, p2, v4, v1}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 51
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 52
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v3, v0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v3, 0x1

    .line 54
    invoke-virtual {p3, v1, v0, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 55
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 56
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 57
    const-string p2, "Error with identifier: %s from plugin received: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    new-instance v0, Lio/appmetrica/analytics/impl/B6;

    new-instance v1, Lio/appmetrica/analytics/impl/sg;

    .line 13
    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/impl/T2;->a(Ljava/lang/Throwable;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lio/appmetrica/analytics/impl/sg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/nn;)V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/B6;-><init>(Lio/appmetrica/analytics/impl/sg;Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->f:Lio/appmetrica/analytics/impl/C6;

    .line 15
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/C6;->a(Lio/appmetrica/analytics/impl/B6;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 16
    sget-object v2, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 17
    new-instance v2, Lio/appmetrica/analytics/impl/e4;

    sget-object v3, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v3, 0x1708

    .line 18
    invoke-direct {v2, v0, p2, v3, v1}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v2, v0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 22
    invoke-virtual {p3, v1, v0, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 24
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 26
    const-string p2, "Error received: id: %s, message: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/sg;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/T2;->a(Ljava/lang/Throwable;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/sg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/nn;)V

    .line 2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->e:Lio/appmetrica/analytics/impl/tg;

    .line 3
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/tg;->a(Lio/appmetrica/analytics/impl/sg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 4
    sget-object v2, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 5
    new-instance v2, Lio/appmetrica/analytics/impl/e4;

    sget-object v3, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v3, 0x1704

    .line 6
    invoke-direct {v2, v0, p1, v3, v1}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v2, v0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 9
    invoke-virtual {p2, v1, v0, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error received: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 9
    .param p1    # Lio/appmetrica/analytics/ModuleEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getType()I

    move-result v0

    .line 35
    sget-object v1, Lio/appmetrica/analytics/impl/T2;->m:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getType()I

    move-result v5

    .line 37
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getEnvironment()Ljava/util/Map;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getExtras()Ljava/util/Map;

    move-result-object v7

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 41
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 42
    new-instance v8, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x2000

    move-object v1, v8

    .line 43
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 44
    invoke-static {v0}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iput-object v0, v8, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 46
    iput-object v7, v8, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    .line 47
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 48
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getServiceDataReporterType()I

    move-result v1

    .line 49
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getAttributes()Ljava/util/Map;

    move-result-object p1

    .line 50
    invoke-virtual {v0, v8, p0, v1, p1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    :goto_0
    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 3
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 4
    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    .line 5
    const-string v2, ""

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v1, v7

    move-object v3, p1

    .line 6
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v7, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, p1, p0, v2, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". With value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 16
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 17
    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 19
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v7, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 24
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 25
    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    .line 26
    const-string v2, ""

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v1, v7

    move-object v3, p1

    .line 27
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v7, v1, v2, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". With value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 11
    .param p1    # Lio/appmetrica/analytics/Revenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/appmetrica/analytics/impl/S2;->a:Lio/appmetrica/analytics/impl/Di;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Di;->a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v0

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/Nn;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    new-instance v1, Lio/appmetrica/analytics/impl/Ei;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-direct {v1, p1, v3}, Lio/appmetrica/analytics/impl/Ei;-><init>(Lio/appmetrica/analytics/Revenue;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v4}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v4

    invoke-static {v4, v1}, Lio/appmetrica/analytics/impl/e4;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Ei;)Lio/appmetrica/analytics/impl/e4;

    move-result-object v6

    new-instance v1, Lio/appmetrica/analytics/impl/nh;

    new-instance v10, Lio/appmetrica/analytics/impl/xh;

    new-instance v4, Lio/appmetrica/analytics/impl/pf;

    iget-object v5, v3, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v5, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v7, v3, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v5, v7}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter v3

    :try_start_0
    iget-object v7, v3, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-direct {v10, v4, v5, v7}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Revenue received for productID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/appmetrica/analytics/Revenue;->productID:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of quantity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/Revenue;->quantity:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with price (in micros): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lio/appmetrica/analytics/Revenue;->priceMicros:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue;->currency:Ljava/util/Currency;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Passed revenue is not valid. Reason: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Nn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 6
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->l:Lio/appmetrica/analytics/impl/ye;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ye;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/nn;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    .line 19
    iget-object v2, v0, Lio/appmetrica/analytics/impl/nn;->a:Lio/appmetrica/analytics/impl/dn;

    const-string v3, ""

    if-nez v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v2, Lio/appmetrica/analytics/impl/dn;->a:Ljava/lang/String;

    .line 21
    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 22
    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->d:Lio/appmetrica/analytics/impl/on;

    .line 23
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/on;->a(Lio/appmetrica/analytics/impl/nn;)Lio/appmetrica/analytics/impl/g6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 24
    sget-object v4, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 25
    sget-object v4, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    .line 26
    new-instance v4, Lio/appmetrica/analytics/impl/e4;

    const/16 v5, 0x1703

    invoke-direct {v4, v0, v3, v5, v2}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v4, v0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 30
    invoke-virtual {v1, v2, v0, v4, v3}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 31
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-virtual {p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Crash from plugin received: %s"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/S;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->j:Lio/appmetrica/analytics/impl/lc;

    .line 2
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/lc;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v2, v2, v1}, Lio/appmetrica/analytics/impl/S;-><init>(Lio/appmetrica/analytics/impl/Tm;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    .line 5
    iget-object v1, v1, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/xm;

    .line 6
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lio/appmetrica/analytics/impl/T2;->k:Lio/appmetrica/analytics/impl/T9;

    .line 8
    iget-object v3, v3, Lio/appmetrica/analytics/impl/T9;->c:Lio/appmetrica/analytics/impl/q3;

    .line 9
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 10
    invoke-static {p1, v0, v2, v1, v3}, Lio/appmetrica/analytics/impl/qn;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/S;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 12
    iget-object v2, v0, Lio/appmetrica/analytics/impl/ni;->d:Lio/appmetrica/analytics/impl/i0;

    .line 13
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/i0;->b()V

    .line 14
    iget-object v2, v0, Lio/appmetrica/analytics/impl/ni;->b:Lio/appmetrica/analytics/impl/pn;

    invoke-virtual {v2, p1, v1}, Lio/appmetrica/analytics/impl/pn;->a(Lio/appmetrica/analytics/impl/nn;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/nh;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 9
    .param p1    # Lio/appmetrica/analytics/profile/UserProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/An;

    sget-object v1, Lio/appmetrica/analytics/impl/An;->c:[I

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/An;-><init>([I)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/profile/UserProfile;->getUserProfileUpdates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    invoke-virtual {v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;->getUserProfileUpdatePatcher()Lio/appmetrica/analytics/impl/Bn;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-object v3, v1

    check-cast v3, Lio/appmetrica/analytics/impl/zd;

    iput-object v2, v3, Lio/appmetrica/analytics/impl/zd;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/Bn;->a(Lio/appmetrica/analytics/impl/An;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/Fn;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Fn;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, v0, Lio/appmetrica/analytics/impl/An;->a:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lio/appmetrica/analytics/impl/An;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/impl/Cn;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lio/appmetrica/analytics/impl/Cn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/Cn;

    iput-object v0, p1, Lio/appmetrica/analytics/impl/Fn;->a:[Lio/appmetrica/analytics/impl/Cn;

    sget-object v0, Lio/appmetrica/analytics/impl/T2;->n:Lio/appmetrica/analytics/impl/R2;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/R2;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v0

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/e4;->a(Lio/appmetrica/analytics/impl/Fn;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v4

    new-instance p1, Lio/appmetrica/analytics/impl/nh;

    new-instance v8, Lio/appmetrica/analytics/impl/xh;

    new-instance v3, Lio/appmetrica/analytics/impl/pf;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {v3, v5}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v5, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter v1

    :try_start_0
    iget-object v6, v1, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {v8, v3, v5, v6}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "User profile received"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "UserInfo wasn\'t sent because "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Nn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final resumeSession()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/T2;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Resume session"

    invoke-virtual {p0, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Send event buffer"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    new-instance v1, Lio/appmetrica/analytics/impl/e4;

    const-string v3, ""

    const/4 v6, 0x0

    const-string v4, ""

    const/16 v5, 0x100

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setDataSendingEnabled(Z)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Updated data sending enabled: %s"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const-string v2, ""

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2001

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v7, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v2

    new-instance v4, Lio/appmetrica/analytics/impl/e4;

    invoke-direct {v4, v2}, Lio/appmetrica/analytics/impl/e4;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    sget-object v2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const v2, 0xa002

    iput v2, v4, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/e4;->c(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/e4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/nh;

    new-instance v8, Lio/appmetrica/analytics/impl/xh;

    new-instance v3, Lio/appmetrica/analytics/impl/pf;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-direct {v3, v5}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    new-instance v5, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    monitor-enter v1

    :try_start_0
    iget-object v6, v1, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {v8, v3, v5, v6}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set user profile ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
