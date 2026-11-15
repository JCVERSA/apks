.class Lcom/google/android/libraries/places/internal/zzja$zzd$zzc;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private date:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private day:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private truncated:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd$zzc;->truncated:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd$zzc;->day:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd$zzc;->date:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzd()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzja$zzd$zzc;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
