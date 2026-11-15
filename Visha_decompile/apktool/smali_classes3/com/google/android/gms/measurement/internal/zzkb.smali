.class final Lcom/google/android/gms/measurement/internal/zzkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lb7j;


# direct methods
.method public constructor <init>(Lb7j;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Lb7j;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Lb7j;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zza:J

    invoke-static {v0, v1, v2}, Lb7j;->p(Lb7j;J)V

    return-void
.end method
