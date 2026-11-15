.class public final synthetic Lcom/google/android/gms/measurement/internal/zzkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzkd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzkd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzc:Lcom/google/android/gms/measurement/internal/k;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzb:J

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    invoke-virtual {p0}, Lini;->g()V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object p0

    const-string v3, "Application going to the background"

    invoke-virtual {p0, v3}, Lu6h;->a(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p0

    iget-object p0, p0, Lroh;->q:Llih;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Llih;->a(Z)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object p0

    invoke-virtual {p0}, Loce;->w()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lb7j;->e:Lw6j;

    invoke-virtual {p0, v1, v2}, Lw6j;->b(J)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lb7j;->e:Lw6j;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Lw6j;->d(ZZJ)Z

    :cond_0
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k;->b:Lb7j;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ab"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
