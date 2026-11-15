.class public Lre0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lre0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lre0$d;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Lre0$d;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lre0$a;->a:Lre0$d;

    iput-wide p2, p0, Lre0$a;->b:J

    iput-wide p4, p0, Lre0$a;->c:J

    iput-wide p6, p0, Lre0$a;->d:J

    iput-wide p8, p0, Lre0$a;->e:J

    iput-wide p10, p0, Lre0$a;->f:J

    iput-wide p12, p0, Lre0$a;->g:J

    return-void
.end method

.method public static synthetic a(Lre0$a;)J
    .locals 2

    iget-wide v0, p0, Lre0$a;->c:J

    return-wide v0
.end method

.method public static synthetic b(Lre0$a;)J
    .locals 2

    iget-wide v0, p0, Lre0$a;->d:J

    return-wide v0
.end method

.method public static synthetic c(Lre0$a;)J
    .locals 2

    iget-wide v0, p0, Lre0$a;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lre0$a;)J
    .locals 2

    iget-wide v0, p0, Lre0$a;->f:J

    return-wide v0
.end method

.method public static synthetic e(Lre0$a;)J
    .locals 2

    iget-wide v0, p0, Lre0$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public f(J)J
    .locals 0

    iget-object p0, p0, Lre0$a;->a:Lre0$d;

    invoke-interface {p0, p1, p2}, Lre0$d;->timeUsToTargetTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lre0$a;->b:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 13

    iget-object v0, p0, Lre0$a;->a:Lre0$d;

    invoke-interface {v0, p1, p2}, Lre0$d;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Lre0$a;->c:J

    iget-wide v5, p0, Lre0$a;->d:J

    iget-wide v7, p0, Lre0$a;->e:J

    iget-wide v9, p0, Lre0$a;->f:J

    iget-wide v11, p0, Lre0$a;->g:J

    invoke-static/range {v1 .. v12}, Lre0$c;->h(JJJJJJ)J

    move-result-wide v0

    new-instance p0, Lja9$a;

    new-instance v2, Lla9;

    invoke-direct {v2, p1, p2, v0, v1}, Lla9;-><init>(JJ)V

    invoke-direct {p0, v2}, Lja9$a;-><init>(Lla9;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
