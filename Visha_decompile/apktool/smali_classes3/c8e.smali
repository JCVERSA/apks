.class public final Lc8e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:Lf8e;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lf8e;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8e;->a:Lf8e;

    iput-wide p2, p0, Lc8e;->b:J

    iput-wide p6, p0, Lc8e;->c:J

    iput-wide p8, p0, Lc8e;->d:J

    iput-wide p10, p0, Lc8e;->e:J

    iput-wide p12, p0, Lc8e;->f:J

    return-void
.end method

.method public static bridge synthetic b(Lc8e;)J
    .locals 2

    iget-wide v0, p0, Lc8e;->f:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lc8e;)J
    .locals 2

    iget-wide v0, p0, Lc8e;->e:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lc8e;)J
    .locals 2

    iget-wide v0, p0, Lc8e;->c:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lc8e;)J
    .locals 2

    iget-wide v0, p0, Lc8e;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 13

    iget-object v0, p0, Lc8e;->a:Lf8e;

    invoke-interface {v0, p1, p2}, Lf8e;->b(J)J

    move-result-wide v1

    iget-wide v5, p0, Lc8e;->c:J

    iget-wide v7, p0, Lc8e;->d:J

    iget-wide v9, p0, Lc8e;->e:J

    iget-wide v11, p0, Lc8e;->f:J

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v12}, Le8e;->f(JJJJJJ)J

    move-result-wide v0

    new-instance p0, Lz9e;

    new-instance v2, Llae;

    invoke-direct {v2, p1, p2, v0, v1}, Llae;-><init>(JJ)V

    invoke-direct {p0, v2, v2}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final g(J)J
    .locals 0

    iget-object p0, p0, Lc8e;->a:Lf8e;

    invoke-interface {p0, p1, p2}, Lf8e;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lc8e;->b:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
