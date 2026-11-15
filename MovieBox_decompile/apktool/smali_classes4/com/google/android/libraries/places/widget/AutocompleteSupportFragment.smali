.class public Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "source.java"


# instance fields
.field private final zza:Landroidx/lifecycle/b0;

.field private final zzb:Landroidx/lifecycle/b0;

.field private zzc:Lcom/google/android/libraries/places/internal/zzks;

.field private zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_fragment:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/b0;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/google/android/libraries/places/internal/zzkr;->zza:Lcom/google/android/libraries/places/internal/zzkr;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzkt;->zzo(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzkr;)Lcom/google/android/libraries/places/internal/zzks;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 33
    .line 34
    return-void
.end method

.method public static newInstance()Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic zzd(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception p0

    .line 11
    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method private final zze()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzks;->zzn()Lcom/google/android/libraries/places/internal/zzkt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/internal/zzkt;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x76d5

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private final zzf(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v1, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x8

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x76d5

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    const-string v0, "Places"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x5

    .line 12
    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    const-string p1, "No PlaceSelectionListener is set. No result will be delivered."

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-nez p3, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x6

    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const-string p1, "Intent data was null."

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const/4 v0, -0x1

    .line 44
    if-ne p2, v0, :cond_2

    .line 45
    .line 46
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getPlaceFromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->setText(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    :try_start_0
    const-string v0, "options"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/libraries/places/internal/zzkt;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzm()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzg()Lcom/google/android/libraries/places/internal/zzks;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzks;->zzn()Lcom/google/android/libraries/places/internal/zzkt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "options"

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_button:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_clear_button:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_input:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget v2, Lcom/google/android/libraries/places/R$string;->places_autocomplete_search_hint:I

    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzkw;->zzc(Landroid/content/Context;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/google/android/libraries/places/widget/zze;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zze;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/android/libraries/places/widget/zzf;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zzf;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/google/android/libraries/places/widget/zzg;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zzg;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzf(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Lcom/google/android/libraries/places/widget/zzh;

    .line 66
    .line 67
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/widget/zzh;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;Landroid/widget/EditText;Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/google/android/libraries/places/widget/zzi;

    .line 80
    .line 81
    invoke-direct {v1, p1, p2}, Lcom/google/android/libraries/places/widget/zzi;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public setActivityMode(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCountries(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public varargs setCountries([Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget p1, Lcom/google/android/libraries/places/R$string;->places_autocomplete_search_hint:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :catch_1
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzks;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Landroidx/lifecycle/b0;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object p0

    .line 39
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzd(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zze(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOnPlaceSelectedListener(Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzk(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzks;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Landroidx/lifecycle/b0;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_1
    move-exception p1

    .line 27
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzl(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTypesFilter(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzks;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzm(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method final synthetic zza(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zze()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final synthetic zzb(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zze()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final synthetic zzc(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzf(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception p1

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
