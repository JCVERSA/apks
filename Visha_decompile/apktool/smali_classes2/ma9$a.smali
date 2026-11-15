.class public Lma9$a;
.super Lja9$b;
.source "SourceFile"

# interfaces
.implements Lma9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lja9$b;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method
