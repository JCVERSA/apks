.class public final Lsh2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh2$a;
    }
.end annotation


# static fields
.field public static final f:Lsh2$a;

.field public static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:J

.field public b:J

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsh2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsh2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsh2;->f:Lsh2$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lsh2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lsh2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsh2;->a:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lsh2;->b:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lsh2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lsh2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Cold"

    goto :goto_0

    :cond_0
    const-string p1, "Cool"

    :goto_0
    iput-object p1, p0, Lsh2;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lsh2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lsh2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lsh2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Cold"

    goto :goto_0

    :cond_0
    const-string p0, "Cool"

    goto :goto_0

    :cond_1
    const-string p0, "Warm"

    :goto_0
    return-object p0
.end method

.method public final b()V
    .locals 4

    iget-wide v0, p0, Lsh2;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lsh2;->f:Lsh2$a;

    invoke-virtual {v0}, Lsh2$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lsh2;->b:J

    return-void
.end method

.method public final c(Lrq4;)V
    .locals 13

    iget-wide v0, p0, Lsh2;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Lsh2;->a:J

    sub-long v6, v0, v2

    iget-object v9, p0, Lsh2;->d:Ljava/lang/String;

    const/16 v11, 0x14

    const/4 v12, 0x0

    const-string v5, "Div.Context.Create"

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v12}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsh2;->b:J

    return-void
.end method

.method public final d(JJLrq4;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v10, p5

    const-string v1, "histogramReporter"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewCreateCallType"

    move-object/from16 v6, p6

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    sub-long v3, p3, p1

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v2, "Div.View.Create"

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v9}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    iget-object v1, v0, Lsh2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v10}, Lsh2;->c(Lrq4;)V

    :cond_1
    return-void
.end method
