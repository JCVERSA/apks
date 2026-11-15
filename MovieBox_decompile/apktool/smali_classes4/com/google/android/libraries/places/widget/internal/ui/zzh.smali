.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzh;
.super Landroidx/fragment/app/h;
.source "source.java"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzkt;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzlr;

.field private final zze:Lcom/google/android/libraries/places/internal/zzdv;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/google/android/libraries/places/internal/zzkt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zza:I

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkb;->zzd(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/zzka;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzka;->zzd(I)Lcom/google/android/libraries/places/internal/zzka;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzka;->zze()Lcom/google/android/libraries/places/internal/zzkb;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Lcom/google/android/libraries/places/internal/zzkf;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzkf;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/api/Places;->zza(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzkb;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzc:Lcom/google/android/libraries/places/internal/zzkt;

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/libraries/places/internal/zzls;

    .line 36
    .line 37
    invoke-direct {p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzls;-><init>(Lcom/google/android/libraries/places/internal/zzkg;Lcom/google/android/libraries/places/internal/zzkb;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzd:Lcom/google/android/libraries/places/internal/zzlr;

    .line 41
    .line 42
    new-instance p1, Lcom/google/android/libraries/places/internal/zzdy;

    .line 43
    .line 44
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzdy;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 9

    .line 1
    invoke-static {p1, p2}, Landroidx/fragment/app/h;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget v3, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zza:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzc:Lcom/google/android/libraries/places/internal/zzkt;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzd:Lcom/google/android/libraries/places/internal/zzlr;

    .line 16
    .line 17
    iget-object v7, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    move-object v2, p1

    .line 23
    invoke-direct/range {v2 .. v8}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;-><init>(ILcom/google/android/libraries/places/api/net/PlacesClient;Lcom/google/android/libraries/places/internal/zzkt;Lcom/google/android/libraries/places/internal/zzlr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/widget/internal/ui/zzm;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/h;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
