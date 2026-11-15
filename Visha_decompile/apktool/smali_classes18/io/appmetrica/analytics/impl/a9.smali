.class public final Lio/appmetrica/analytics/impl/a9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/Map;

.field public static final i:Lio/appmetrica/analytics/impl/a9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/wd;

.field public final b:Lio/appmetrica/analytics/impl/Qn;

.field public final c:Lio/appmetrica/analytics/impl/D8;

.field public final d:Lio/appmetrica/analytics/impl/z9;

.field public final e:Lio/appmetrica/analytics/impl/ac;

.field public final f:Lio/appmetrica/analytics/impl/Md;

.field public final g:Lio/appmetrica/analytics/impl/U9;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/ka;->c:Lio/appmetrica/analytics/impl/ka;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/ka;->d:Lio/appmetrica/analytics/impl/ka;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/ka;->b:Lio/appmetrica/analytics/impl/ka;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/a9;->h:Ljava/util/Map;

    new-instance v0, Lio/appmetrica/analytics/impl/a9;

    new-instance v2, Lio/appmetrica/analytics/impl/Hi;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Hi;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Am;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Am;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/Ud;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Ud;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/Gi;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Gi;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/qa;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/qa;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/ra;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/ra;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/pa;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/pa;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/wd;Lio/appmetrica/analytics/impl/Qn;Lio/appmetrica/analytics/impl/D8;Lio/appmetrica/analytics/impl/z9;Lio/appmetrica/analytics/impl/ac;Lio/appmetrica/analytics/impl/Md;Lio/appmetrica/analytics/impl/U9;)V

    sput-object v0, Lio/appmetrica/analytics/impl/a9;->i:Lio/appmetrica/analytics/impl/a9;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Z8;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->f(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/wd;

    move-result-object v1

    .line 2
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->g(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/Qn;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->a(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/D8;

    move-result-object v3

    .line 4
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->b(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/z9;

    move-result-object v4

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->c(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/ac;

    move-result-object v5

    .line 6
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->d(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/Md;

    move-result-object v6

    .line 7
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z8;->e(Lio/appmetrica/analytics/impl/Z8;)Lio/appmetrica/analytics/impl/U9;

    move-result-object v7

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/wd;Lio/appmetrica/analytics/impl/Qn;Lio/appmetrica/analytics/impl/D8;Lio/appmetrica/analytics/impl/z9;Lio/appmetrica/analytics/impl/ac;Lio/appmetrica/analytics/impl/Md;Lio/appmetrica/analytics/impl/U9;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/wd;Lio/appmetrica/analytics/impl/Qn;Lio/appmetrica/analytics/impl/D8;Lio/appmetrica/analytics/impl/z9;Lio/appmetrica/analytics/impl/ac;Lio/appmetrica/analytics/impl/Md;Lio/appmetrica/analytics/impl/U9;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a9;->a:Lio/appmetrica/analytics/impl/wd;

    .line 11
    iput-object p2, p0, Lio/appmetrica/analytics/impl/a9;->b:Lio/appmetrica/analytics/impl/Qn;

    .line 12
    iput-object p3, p0, Lio/appmetrica/analytics/impl/a9;->c:Lio/appmetrica/analytics/impl/D8;

    .line 13
    iput-object p4, p0, Lio/appmetrica/analytics/impl/a9;->d:Lio/appmetrica/analytics/impl/z9;

    .line 14
    iput-object p5, p0, Lio/appmetrica/analytics/impl/a9;->e:Lio/appmetrica/analytics/impl/ac;

    .line 15
    iput-object p6, p0, Lio/appmetrica/analytics/impl/a9;->f:Lio/appmetrica/analytics/impl/Md;

    .line 16
    iput-object p7, p0, Lio/appmetrica/analytics/impl/a9;->g:Lio/appmetrica/analytics/impl/U9;

    return-void
.end method

.method public static a()Lio/appmetrica/analytics/impl/Z8;
    .locals 2

    .line 53
    new-instance v0, Lio/appmetrica/analytics/impl/Z8;

    sget-object v1, Lio/appmetrica/analytics/impl/a9;->i:Lio/appmetrica/analytics/impl/a9;

    .line 54
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Z8;-><init>(Lio/appmetrica/analytics/impl/a9;)V

    return-object v0
.end method

.method public static synthetic a(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/wd;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->a:Lio/appmetrica/analytics/impl/wd;

    return-object p0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/Qn;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->b:Lio/appmetrica/analytics/impl/Qn;

    return-object p0
.end method

.method public static synthetic c(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/D8;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->c:Lio/appmetrica/analytics/impl/D8;

    return-object p0
.end method

.method public static synthetic d(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/z9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->d:Lio/appmetrica/analytics/impl/z9;

    return-object p0
.end method

.method public static synthetic e(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/ac;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->e:Lio/appmetrica/analytics/impl/ac;

    return-object p0
.end method

.method public static synthetic f(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/Md;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->f:Lio/appmetrica/analytics/impl/Md;

    return-object p0
.end method

.method public static synthetic g(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/U9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->g:Lio/appmetrica/analytics/impl/U9;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/R8;Lio/appmetrica/analytics/impl/ch;)Lio/appmetrica/analytics/impl/k9;
    .locals 4

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/k9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k9;-><init>()V

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/a9;->f:Lio/appmetrica/analytics/impl/Md;

    .line 4
    iget-object v2, p1, Lio/appmetrica/analytics/impl/R8;->l:Ljava/lang/Integer;

    .line 5
    iget-object v3, p1, Lio/appmetrica/analytics/impl/R8;->m:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2, v3}, Lio/appmetrica/analytics/impl/Md;->a(Ljava/lang/Integer;Ljava/lang/String;)Lio/appmetrica/analytics/impl/j9;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/a9;->e:Lio/appmetrica/analytics/impl/ac;

    .line 8
    iget-object v3, p1, Lio/appmetrica/analytics/impl/R8;->g:Lio/appmetrica/analytics/impl/q7;

    .line 9
    invoke-interface {v2, v3}, Lio/appmetrica/analytics/impl/ac;->a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/f9;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 10
    iput-object v1, v0, Lio/appmetrica/analytics/impl/k9;->g:Lio/appmetrica/analytics/impl/j9;

    :cond_0
    if-eqz v2, :cond_1

    .line 11
    iput-object v2, v0, Lio/appmetrica/analytics/impl/k9;->f:Lio/appmetrica/analytics/impl/f9;

    .line 12
    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/a9;->a:Lio/appmetrica/analytics/impl/wd;

    .line 13
    iget-object v2, p1, Lio/appmetrica/analytics/impl/R8;->a:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/wd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/impl/k9;->d:Ljava/lang/String;

    .line 16
    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/a9;->b:Lio/appmetrica/analytics/impl/Qn;

    invoke-interface {v1, p1, p2}, Lio/appmetrica/analytics/impl/Qn;->a(Lio/appmetrica/analytics/impl/R8;Lio/appmetrica/analytics/impl/ch;)[B

    move-result-object p2

    iput-object p2, v0, Lio/appmetrica/analytics/impl/k9;->e:[B

    .line 17
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->j:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 18
    iput-object p2, v0, Lio/appmetrica/analytics/impl/k9;->h:Ljava/lang/String;

    .line 19
    :cond_3
    iget-object p2, p0, Lio/appmetrica/analytics/impl/a9;->d:Lio/appmetrica/analytics/impl/z9;

    invoke-interface {p2, p1}, Lio/appmetrica/analytics/impl/z9;->a(Lio/appmetrica/analytics/impl/R8;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/k9;->c:I

    .line 21
    :cond_4
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->c:Ljava/lang/Long;

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/k9;->a:J

    .line 23
    :cond_5
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->d:Ljava/lang/Long;

    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/k9;->n:J

    .line 25
    :cond_6
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->e:Ljava/lang/Long;

    if-eqz p2, :cond_7

    .line 26
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/k9;->o:J

    .line 27
    :cond_7
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->f:Ljava/lang/Long;

    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/k9;->b:J

    .line 29
    :cond_8
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->k:Ljava/lang/Integer;

    if-eqz p2, :cond_9

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/k9;->i:I

    .line 31
    :cond_9
    iget-object p2, p0, Lio/appmetrica/analytics/impl/a9;->c:Lio/appmetrica/analytics/impl/D8;

    .line 32
    iget-object v1, p1, Lio/appmetrica/analytics/impl/R8;->o:Lio/appmetrica/analytics/impl/M8;

    .line 33
    invoke-interface {p2, v1}, Lio/appmetrica/analytics/impl/D8;->a(Lio/appmetrica/analytics/impl/M8;)I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/k9;->j:I

    .line 34
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->g:Lio/appmetrica/analytics/impl/q7;

    if-eqz p2, :cond_a

    .line 35
    new-instance v1, Lio/appmetrica/analytics/impl/r6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/r6;-><init>()V

    .line 36
    iget-object p2, p2, Lio/appmetrica/analytics/impl/q7;->a:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/impl/ee;->a(Ljava/lang/Boolean;)I

    move-result p2

    goto :goto_0

    :cond_a
    const/4 p2, -0x1

    .line 38
    :goto_0
    iput p2, v0, Lio/appmetrica/analytics/impl/k9;->k:I

    .line 39
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->n:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lio/appmetrica/analytics/impl/k9;->l:[B

    .line 41
    :cond_b
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->p:Lio/appmetrica/analytics/impl/ka;

    if-eqz p2, :cond_c

    .line 42
    sget-object v1, Lio/appmetrica/analytics/impl/a9;->h:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    goto :goto_1

    :cond_c
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_d

    .line 43
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lio/appmetrica/analytics/impl/k9;->m:I

    .line 44
    :cond_d
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->q:Lio/appmetrica/analytics/impl/s9;

    if-eqz p2, :cond_e

    .line 45
    iget p2, p2, Lio/appmetrica/analytics/impl/s9;->a:I

    iput p2, v0, Lio/appmetrica/analytics/impl/k9;->p:I

    .line 46
    :cond_e
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->r:Ljava/lang/Boolean;

    if-eqz p2, :cond_f

    .line 47
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v0, Lio/appmetrica/analytics/impl/k9;->q:Z

    .line 48
    :cond_f
    iget-object p2, p1, Lio/appmetrica/analytics/impl/R8;->s:Ljava/lang/Integer;

    if-eqz p2, :cond_10

    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/k9;->r:J

    .line 50
    :cond_10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/a9;->g:Lio/appmetrica/analytics/impl/U9;

    .line 51
    iget-object p1, p1, Lio/appmetrica/analytics/impl/R8;->t:[B

    .line 52
    check-cast p0, Lio/appmetrica/analytics/impl/pa;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pa;->a([B)[Lio/appmetrica/analytics/impl/i9;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/k9;->s:[Lio/appmetrica/analytics/impl/i9;

    return-object v0
.end method
