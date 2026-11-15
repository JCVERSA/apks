.class public final Lcom/google/android/libraries/places/internal/zzll;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/v0$c;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzla;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzlq;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzlr;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzla;Lcom/google/android/libraries/places/internal/zzlq;Lcom/google/android/libraries/places/internal/zzlr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzll;->zza:Lcom/google/android/libraries/places/internal/zzla;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzll;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzll;->zzc:Lcom/google/android/libraries/places/internal/zzlr;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 4

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/zzln;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "This factory can only be used to instantiate its enclosing class."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    .line 3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzln;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzll;->zza:Lcom/google/android/libraries/places/internal/zzla;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzll;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzll;->zzc:Lcom/google/android/libraries/places/internal/zzlr;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzln;-><init>(Lcom/google/android/libraries/places/internal/zzla;Lcom/google/android/libraries/places/internal/zzlq;Lcom/google/android/libraries/places/internal/zzlr;Lcom/google/android/libraries/places/internal/zzlm;)V

    return-object p1
.end method

.method public final create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzll;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/w0;->c(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
