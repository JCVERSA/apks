.class public Lcom/google/android/libraries/places/widget/AutocompleteActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;


# static fields
.field public static final RESULT_ERROR:I = 0x2


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_activity:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc:Z

    .line 8
    .line 9
    return-void
.end method

.method private final zzc(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p2    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string v1, "places/selected_place"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :catch_1
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const-string p2, "places/status"

    .line 19
    .line 20
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Places must be initialized."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    const-string v3, "Cannot find caller. startActivityForResult should be used."

    .line 22
    .line 23
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "places/AutocompleteOptions"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/google/android/libraries/places/internal/zzkt;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    sget-object v4, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->FULLSCREEN:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzkt;->zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    if-eq v4, v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sget v4, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_impl_fragment_overlay:I

    .line 57
    .line 58
    iput v4, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zza:I

    .line 59
    .line 60
    sget v4, Lcom/google/android/libraries/places/R$style;->PlacesAutocompleteOverlay:I

    .line 61
    .line 62
    iput v4, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzb:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :catch_1
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    sget v4, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_impl_fragment_fullscreen:I

    .line 70
    .line 71
    iput v4, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zza:I

    .line 72
    .line 73
    sget v4, Lcom/google/android/libraries/places/R$style;->PlacesAutocompleteFullscreen:I

    .line 74
    .line 75
    iput v4, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzb:I

    .line 76
    .line 77
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget v5, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zza:I

    .line 82
    .line 83
    new-instance v6, Lcom/google/android/libraries/places/widget/internal/ui/zzh;

    .line 84
    .line 85
    invoke-direct {v6, v5, p0, v0}, Lcom/google/android/libraries/places/widget/internal/ui/zzh;-><init>(ILandroid/content/Context;Lcom/google/android/libraries/places/internal/zzkt;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentManager;->E1(Landroidx/fragment/app/h;)V

    .line 89
    .line 90
    .line 91
    iget v4, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzb:I

    .line 92
    .line 93
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 94
    .line 95
    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget v4, Lcom/google/android/libraries/places/R$id;->places_autocomplete_content:I

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentManager;->j0(I)Landroidx/fragment/app/Fragment;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    move v1, v2

    .line 114
    :cond_3
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzo(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;->zzh(Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;)V

    .line 118
    .line 119
    .line 120
    const v1, 0x1020002

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v2, Lcom/google/android/libraries/places/widget/zza;

    .line 128
    .line 129
    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/libraries/places/widget/zza;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteActivity;Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lcom/google/android/libraries/places/widget/zzb;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/widget/zzb;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteActivity;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzkt;->zzj()Lcom/google/android/libraries/places/internal/zznx;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 154
    .line 155
    const-string v0, "Place Fields must not be empty."

    .line 156
    .line 157
    const/16 v1, 0x2334

    .line 158
    .line 159
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x2

    .line 163
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    return-void

    .line 167
    :cond_5
    throw v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    throw p1
.end method

.method public onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V
    .locals 2
    .param p1    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 3
    .line 4
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method final synthetic zza(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method final synthetic zzb(Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    cmpl-float p1, p4, p1

    .line 21
    .line 22
    if-lez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzc:Z

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    :goto_0
    return p3
.end method
