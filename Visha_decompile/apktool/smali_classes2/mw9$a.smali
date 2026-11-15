.class public Lmw9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmw9;->d(Lja9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lja9;

.field public final synthetic b:Lmw9;


# direct methods
.method public constructor <init>(Lmw9;Lja9;)V
    .locals 0

    iput-object p1, p0, Lmw9$a;->b:Lmw9;

    iput-object p2, p0, Lmw9$a;->a:Lja9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-object p0, p0, Lmw9$a;->a:Lja9;

    invoke-interface {p0}, Lja9;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 8

    iget-object v0, p0, Lmw9$a;->a:Lja9;

    invoke-interface {v0, p1, p2}, Lja9;->getSeekPoints(J)Lja9$a;

    move-result-object p1

    new-instance p2, Lja9$a;

    new-instance v0, Lla9;

    iget-object v1, p1, Lja9$a;->a:Lla9;

    iget-wide v2, v1, Lla9;->a:J

    iget-wide v4, v1, Lla9;->b:J

    iget-object v1, p0, Lmw9$a;->b:Lmw9;

    invoke-static {v1}, Lmw9;->a(Lmw9;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lla9;-><init>(JJ)V

    new-instance v1, Lla9;

    iget-object p1, p1, Lja9$a;->b:Lla9;

    iget-wide v2, p1, Lla9;->a:J

    iget-wide v4, p1, Lla9;->b:J

    iget-object p0, p0, Lmw9$a;->b:Lmw9;

    invoke-static {p0}, Lmw9;->a(Lmw9;)J

    move-result-wide p0

    add-long/2addr v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lla9;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lja9$a;-><init>(Lla9;Lla9;)V

    return-object p2
.end method

.method public isSeekable()Z
    .locals 0

    iget-object p0, p0, Lmw9$a;->a:Lja9;

    invoke-interface {p0}, Lja9;->isSeekable()Z

    move-result p0

    return p0
.end method
