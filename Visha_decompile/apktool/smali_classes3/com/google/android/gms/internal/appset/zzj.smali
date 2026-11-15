.class final Lcom/google/android/gms/internal/appset/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/appset/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/appset/a;Li1j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/zzj;->zza:Lcom/google/android/gms/internal/appset/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/appset/zzj;->zza:Lcom/google/android/gms/internal/appset/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/appset/a;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lm02;->a()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/appset/zzj;->zza:Lcom/google/android/gms/internal/appset/a;

    invoke-static {p0}, Lcom/google/android/gms/internal/appset/a;->c(Lcom/google/android/gms/internal/appset/a;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/appset/a;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
