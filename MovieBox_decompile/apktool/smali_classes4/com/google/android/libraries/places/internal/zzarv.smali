.class public abstract Lcom/google/android/libraries/places/internal/zzarv;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavn;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzatf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzatf;->zza:Lcom/google/android/libraries/places/internal/zzatf;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/libraries/places/internal/zzarv;->zza:Lcom/google/android/libraries/places/internal/zzatf;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzasq;Lcom/google/android/libraries/places/internal/zzatf;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzauf;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavn;->zzb(Lcom/google/android/libraries/places/internal/zzasq;Lcom/google/android/libraries/places/internal/zzatf;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzavg;->zzaM()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/google/android/libraries/places/internal/zzawm;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzawm;-><init>(Lcom/google/android/libraries/places/internal/zzavf;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzawm;->zza()Lcom/google/android/libraries/places/internal/zzauf;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzauf;->zzh(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzauf;

    .line 24
    .line 25
    .line 26
    throw p2

    .line 27
    :cond_1
    :goto_0
    return-object p1
.end method
