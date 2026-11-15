.class abstract Lcom/google/android/libraries/places/internal/zzlg;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private zza:Lcom/google/android/gms/tasks/Task;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzlf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/tasks/CancellationTokenSource;
.end method

.method public final zzc()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzlg;->zza:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzlg;->zza:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    return-void
.end method
