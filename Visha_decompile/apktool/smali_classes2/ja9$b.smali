.class public Lja9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lja9$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lja9$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lja9$b;->a:J

    .line 4
    new-instance p1, Lja9$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lla9;->c:Lla9;

    goto :goto_0

    :cond_0
    new-instance p2, Lla9;

    invoke-direct {p2, v0, v1, p3, p4}, Lla9;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lja9$a;-><init>(Lla9;)V

    iput-object p1, p0, Lja9$b;->b:Lja9$a;

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lja9$b;->a:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 0

    iget-object p0, p0, Lja9$b;->b:Lja9$a;

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
