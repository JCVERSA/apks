.class public abstract Lhr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhr5$a;
    }
.end annotation


# static fields
.field public static final e:Lhr5$a;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhr5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhr5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lhr5;->e:Lhr5$a;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lhr5;->b:J

    invoke-static/range {p1 .. p6}, Lxh8;->d(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lhr5;->c:J

    iput-wide p5, p0, Lhr5;->d:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Lhr5;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lhr5;->c:J

    return-wide v0
.end method

.method public f()Lfr5;
    .locals 8

    new-instance v7, Lir5;

    iget-wide v1, p0, Lhr5;->b:J

    iget-wide v3, p0, Lhr5;->c:J

    iget-wide v5, p0, Lhr5;->d:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lir5;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lhr5;->f()Lfr5;

    move-result-object p0

    return-object p0
.end method
