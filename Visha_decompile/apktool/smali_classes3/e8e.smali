.class public final Le8e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(JJJJJJJ)V
    .locals 13

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Le8e;->a:J

    move-wide/from16 v1, p3

    iput-wide v1, v0, Le8e;->b:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Le8e;->d:J

    move-wide/from16 v5, p7

    iput-wide v5, v0, Le8e;->e:J

    move-wide/from16 v7, p9

    iput-wide v7, v0, Le8e;->f:J

    move-wide/from16 v9, p11

    iput-wide v9, v0, Le8e;->g:J

    move-wide/from16 v11, p13

    iput-wide v11, v0, Le8e;->c:J

    invoke-static/range {v1 .. v12}, Le8e;->f(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v0, Le8e;->h:J

    return-void
.end method

.method public static synthetic a(Le8e;)J
    .locals 2

    iget-wide v0, p0, Le8e;->g:J

    return-wide v0
.end method

.method public static synthetic b(Le8e;)J
    .locals 2

    iget-wide v0, p0, Le8e;->f:J

    return-wide v0
.end method

.method public static synthetic c(Le8e;)J
    .locals 2

    iget-wide v0, p0, Le8e;->h:J

    return-wide v0
.end method

.method public static synthetic d(Le8e;)J
    .locals 2

    iget-wide v0, p0, Le8e;->a:J

    return-wide v0
.end method

.method public static synthetic e(Le8e;)J
    .locals 2

    iget-wide v0, p0, Le8e;->b:J

    return-wide v0
.end method

.method public static f(JJJJJJ)J
    .locals 4

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v2, v2, p8

    if-gez v2, :cond_1

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, p2

    sub-long v0, p8, p6

    sub-long/2addr p4, p2

    long-to-float p0, p0

    long-to-float p1, v0

    long-to-float p2, p4

    div-float/2addr p1, p2

    mul-float/2addr p0, p1

    float-to-long p0, p0

    add-long p2, p6, p0

    sub-long/2addr p2, p10

    const-wide/16 p4, -0x1

    add-long/2addr p8, p4

    sget p4, Lkfh;->a:I

    const-wide/16 p4, 0x14

    div-long/2addr p0, p4

    sub-long/2addr p2, p0

    invoke-static {p2, p3, p8, p9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method public static bridge synthetic g(Le8e;JJ)V
    .locals 0

    iput-wide p1, p0, Le8e;->e:J

    iput-wide p3, p0, Le8e;->g:J

    invoke-virtual {p0}, Le8e;->i()V

    return-void
.end method

.method public static bridge synthetic h(Le8e;JJ)V
    .locals 0

    iput-wide p1, p0, Le8e;->d:J

    iput-wide p3, p0, Le8e;->f:J

    invoke-virtual {p0}, Le8e;->i()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 12

    iget-wide v0, p0, Le8e;->b:J

    iget-wide v2, p0, Le8e;->d:J

    iget-wide v4, p0, Le8e;->e:J

    iget-wide v6, p0, Le8e;->f:J

    iget-wide v8, p0, Le8e;->g:J

    iget-wide v10, p0, Le8e;->c:J

    invoke-static/range {v0 .. v11}, Le8e;->f(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Le8e;->h:J

    return-void
.end method
