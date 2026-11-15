.class public final Lsy9$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsy9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsy9$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsy9$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpk3;)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public createSeekMap()Lja9;
    .locals 2

    new-instance p0, Lja9$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lja9$b;-><init>(J)V

    return-object p0
.end method

.method public startSeek(J)V
    .locals 0

    return-void
.end method
