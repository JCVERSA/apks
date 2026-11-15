.class final Lcom/google/android/gms/measurement/internal/zzjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/content/ComponentName;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/i;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Lcom/google/android/gms/measurement/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Lcom/google/android/gms/measurement/internal/i;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/j;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/j;->L(Lcom/google/android/gms/measurement/internal/j;Landroid/content/ComponentName;)V

    return-void
.end method
