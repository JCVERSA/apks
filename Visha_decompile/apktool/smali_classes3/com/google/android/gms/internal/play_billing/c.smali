.class public final Lcom/google/android/gms/internal/play_billing/c;
.super Lsbf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lsbf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/c;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsbf;->a:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lsbf;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lgcf;->a(II)I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-boolean v0, p0, Lsbf;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsbf;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsbf;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsbf;->c:Z

    :cond_1
    iget-object v0, p0, Lsbf;->a:[Ljava/lang/Object;

    iget v1, p0, Lsbf;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsbf;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/play_billing/zzcf;
    .locals 3

    iget v0, p0, Lsbf;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lsbf;->a:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lsbf;->b:I

    iput-boolean v1, p0, Lsbf;->c:Z

    return-object v0

    :cond_0
    iget-object p0, p0, Lsbf;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcr;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    return-object p0
.end method
