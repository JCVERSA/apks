.class public final Lnte;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    const-string v3, "ZZ4V/Y3/WcXV1iobSsNLXr6TJ7vZy9r1U0ttG6Pb6Z4="

    const/16 v6, 0x2d

    const-string v2, "9wvnViXgITvEao5ly+BRRyQrzFTt3bYFFawK/4VAi8rGNT0AvgE+boySJAbIF/vH"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    iput-object p7, p0, Lnte;->i:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lnte;->i:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lyre;

    invoke-direct {v1, v0}, Lyre;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lyre;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Looe;->y(J)Looe;

    iget-object v0, v1, Lyre;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lyre;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p0, v1}, Looe;->V(I)Looe;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Looe;->V(I)Looe;

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
