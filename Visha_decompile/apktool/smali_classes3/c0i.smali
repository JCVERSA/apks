.class public abstract Lc0i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lxda;Lir0;)Lim5;
    .locals 2

    new-instance p1, Lb0i;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lb0i;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/m8;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, La0i;

    invoke-direct {v1, p1}, La0i;-><init>(Lb0i;)V

    invoke-virtual {p0, v0, v1}, Lxda;->c(Ljava/util/concurrent/Executor;Lpe7;)Lxda;

    return-object p1
.end method
