.class public abstract Ljea;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;Lzda;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljea;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method

.method public static b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lzda;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p0}, Lud;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lzda;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static c(Lxda;)Lxda;
    .locals 1

    new-instance v0, Lv0e;

    invoke-direct {v0}, Lv0e;-><init>()V

    invoke-virtual {p0, v0}, Lxda;->h(Lxh1;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lzda;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lud;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lzda;->d(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method
