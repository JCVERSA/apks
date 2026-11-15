.class public abstract Lm08;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Llu8;Lcom/google/android/gms/common/api/c;)Lk08;
    .locals 2

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Llu8;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Status code must not be SUCCESS"

    invoke-static {v0, v1}, Lwd8;->b(ZLjava/lang/Object;)V

    new-instance v0, Lt1e;

    invoke-direct {v0, p1, p0}, Lt1e;-><init>(Lcom/google/android/gms/common/api/c;Llu8;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Llu8;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/c;)Lk08;
    .locals 1

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lrx9;

    invoke-direct {v0, p1}, Lrx9;-><init>(Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Llu8;)V

    return-object v0
.end method
