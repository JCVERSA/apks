.class public final Lnsh;
.super Lhth;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/google/android/gms/internal/play_billing/zzfp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfp;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnsh;->d:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-direct {p0}, Lhth;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnsh;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p1

    iput p1, p0, Lnsh;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lnsh;->b:I

    iget p0, p0, Lnsh;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lnsh;->b:I

    iget v1, p0, Lnsh;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnsh;->b:I

    iget-object p0, p0, Lnsh;->d:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zza(I)B

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
