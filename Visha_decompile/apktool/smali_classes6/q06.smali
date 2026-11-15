.class public abstract Lq06;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
