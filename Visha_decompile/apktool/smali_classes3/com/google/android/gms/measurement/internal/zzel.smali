.class final Lcom/google/android/gms/measurement/internal/zzel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/Object;

.field final synthetic zzd:Ljava/lang/Object;

.field final synthetic zze:Ljava/lang/Object;

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzd:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zze:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lboi;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/c;->n(Lcom/google/android/gms/measurement/internal/c;)C

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v1

    invoke-virtual {v1}, Loce;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    iget-object v2, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    const/16 v2, 0x43

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/c;->D(Lcom/google/android/gms/measurement/internal/c;C)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    iget-object v2, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    const/16 v2, 0x63

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/c;->D(Lcom/google/android/gms/measurement/internal/c;C)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/c;->o(Lcom/google/android/gms/measurement/internal/c;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v2

    invoke-virtual {v2}, Loce;->l()J

    const-wide/32 v2, 0x11d28

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->C(Lcom/google/android/gms/measurement/internal/c;J)V

    :cond_2
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:I

    const-string v2, "01VDIWEA?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/c;->n(Lcom/google/android/gms/measurement/internal/c;)C

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/c;->o(Lcom/google/android/gms/measurement/internal/c;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzd:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzel;->zze:Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-static {v9, v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/c;->z(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object p0, v0, Lroh;->d:Lnmh;

    if-eqz p0, :cond_4

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lnmh;->b(Ljava/lang/String;J)V

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:Lcom/google/android/gms/measurement/internal/c;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->B()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Persisted config not initialized. Not logging error/warn"

    const/4 v1, 0x6

    invoke-static {v1, p0, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
