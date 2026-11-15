.class public Lt30$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lt30;


# direct methods
.method public constructor <init>(Lt30;J)V
    .locals 0

    iput-object p1, p0, Lt30$b;->b:Lt30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lt30$b;->a:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lt30$b;->a:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 7

    iget-object v0, p0, Lt30$b;->b:Lt30;

    invoke-static {v0}, Lt30;->d(Lt30;)[Lbw0;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lbw0;->i(J)Lja9$a;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lt30$b;->b:Lt30;

    invoke-static {v2}, Lt30;->d(Lt30;)[Lbw0;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lt30$b;->b:Lt30;

    invoke-static {v2}, Lt30;->d(Lt30;)[Lbw0;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lbw0;->i(J)Lja9$a;

    move-result-object v2

    iget-object v3, v2, Lja9$a;->a:Lla9;

    iget-wide v3, v3, Lla9;->b:J

    iget-object v5, v0, Lja9$a;->a:Lla9;

    iget-wide v5, v5, Lla9;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
