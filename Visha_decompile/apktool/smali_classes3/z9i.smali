.class public abstract Lz9i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/u9;->zza:I

    :try_start_0
    invoke-static {}, Lz9i;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Loai;->b()V

    invoke-static {}, Lmli;->a()V

    const/4 v0, 0x1

    invoke-static {v0}, Lvai;->a(Z)V

    invoke-static {v0}, Lsbi;->a(Z)V

    invoke-static {}, Lugi;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lhbi;->a(Z)V

    invoke-static {v0}, Lfci;->a(Z)V

    invoke-static {v0}, Lnci;->a(Z)V

    invoke-static {v0}, Lsci;->a(Z)V

    invoke-static {v0}, Lvci;->a(Z)V

    invoke-static {v0}, Lmei;->a(Z)V

    invoke-static {v0}, Lfei;->a(Z)V

    return-void
.end method
