.class public final Lnae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 3

    new-instance p0, Lz9e;

    new-instance v0, Llae;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Llae;-><init>(JJ)V

    invoke-direct {p0, v0, v0}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final zza()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
