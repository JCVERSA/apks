.class final Lcom/google/android/libraries/places/widget/internal/ui/zzj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;Lcom/google/android/libraries/places/widget/internal/ui/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzj;->zza:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzj;->zza:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;->zzb(Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;)Lcom/google/android/libraries/places/internal/zzln;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzj;->zza:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;->zza(Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;)Landroid/widget/EditText;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzln;->zzm(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
