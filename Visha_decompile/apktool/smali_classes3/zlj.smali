.class public abstract Lzlj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lnij;)Lofg;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/play_billing/u;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/u;-><init>()V

    new-instance v1, Lvkj;

    invoke-direct {v1, v0}, Lvkj;-><init>(Lcom/google/android/gms/internal/play_billing/u;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/u;->b:Lvkj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/u;->a:Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, v0}, Lnij;->zza(Lcom/google/android/gms/internal/play_billing/u;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/u;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1, p0}, Lvkj;->c(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v1
.end method
