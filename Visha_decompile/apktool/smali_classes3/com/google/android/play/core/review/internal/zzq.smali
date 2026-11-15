.class final Lcom/google/android/play/core/review/internal/zzq;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lhij;


# direct methods
.method public constructor <init>(Lhij;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzq;->zza:Lhij;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lykj;->o(Lykj;)V

    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzq;->zza:Lhij;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v0}, Lykj;->j(Lykj;Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzq;->zza:Lhij;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lykj;->i(Lykj;Z)V

    return-void
.end method
