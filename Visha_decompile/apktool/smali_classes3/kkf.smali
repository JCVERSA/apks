.class public final Lkkf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkkf;->a:I

    iput p2, p0, Lkkf;->c:I

    iput p3, p0, Lkkf;->b:I

    return-void
.end method

.method public static a()Lkkf;
    .locals 2

    new-instance v0, Lkkf;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lkkf;-><init>(III)V

    return-object v0
.end method

.method public static b(II)Lkkf;
    .locals 2

    new-instance v0, Lkkf;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lkkf;-><init>(III)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/ads/internal/client/zzr;)Lkkf;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lkkf;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lkkf;-><init>(III)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v0, :cond_1

    new-instance p0, Lkkf;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lkkf;-><init>(III)V

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzh:Z

    if-eqz v0, :cond_2

    new-instance p0, Lkkf;

    invoke-direct {p0, v1, v1, v1}, Lkkf;-><init>(III)V

    return-object p0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    new-instance v1, Lkkf;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0}, Lkkf;-><init>(III)V

    return-object v1
.end method

.method public static d()Lkkf;
    .locals 3

    new-instance v0, Lkkf;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkkf;-><init>(III)V

    return-object v0
.end method

.method public static e()Lkkf;
    .locals 3

    new-instance v0, Lkkf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkkf;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 0

    iget p0, p0, Lkkf;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 1

    iget p0, p0, Lkkf;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 1

    iget p0, p0, Lkkf;->a:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .locals 1

    iget p0, p0, Lkkf;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 1

    iget p0, p0, Lkkf;->a:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
