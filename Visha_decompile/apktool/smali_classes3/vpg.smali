.class public final Lvpg;
.super Lwrg;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/google/android/gms/internal/auth/zzee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzee;)V
    .locals 1

    iput-object p1, p0, Lvpg;->d:Lcom/google/android/gms/internal/auth/zzee;

    invoke-direct {p0}, Lwrg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvpg;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzee;->zzd()I

    move-result p1

    iput p1, p0, Lvpg;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lvpg;->b:I

    iget p0, p0, Lvpg;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lvpg;->b:I

    iget v1, p0, Lvpg;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lvpg;->b:I

    iget-object p0, p0, Lvpg;->d:Lcom/google/android/gms/internal/auth/zzee;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzee;->zzb(I)B

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
