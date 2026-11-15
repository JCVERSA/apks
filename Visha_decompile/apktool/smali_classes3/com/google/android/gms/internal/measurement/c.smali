.class public abstract Lcom/google/android/gms/internal/measurement/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lk2j;)Lk2j;
    .locals 1

    instance-of v0, p0, Lp2j;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzii;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzii;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzii;-><init>(Lk2j;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lp2j;

    invoke-direct {v0, p0}, Lp2j;-><init>(Lk2j;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lk2j;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
