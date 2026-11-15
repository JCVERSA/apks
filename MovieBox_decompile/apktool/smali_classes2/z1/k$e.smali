.class public Lz1/k$e;
.super Lz1/k;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final d:J

.field final e:J


# direct methods
.method public constructor <init>()V
    .locals 10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v9}, Lz1/k$e;-><init>(Lz1/i;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lz1/i;JJJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lz1/k;-><init>(Lz1/i;JJ)V

    .line 2
    iput-wide p6, p0, Lz1/k$e;->d:J

    .line 3
    iput-wide p8, p0, Lz1/k$e;->e:J

    return-void
.end method


# virtual methods
.method public c()Lz1/i;
    .locals 7

    .line 1
    iget-wide v4, p0, Lz1/k$e;->e:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, v4, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v6, Lz1/i;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iget-wide v2, p0, Lz1/k$e;->d:J

    .line 15
    .line 16
    move-object v0, v6

    .line 17
    invoke-direct/range {v0 .. v5}, Lz1/i;-><init>(Ljava/lang/String;JJ)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0
.end method
