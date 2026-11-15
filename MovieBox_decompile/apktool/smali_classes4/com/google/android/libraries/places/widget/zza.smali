.class public final synthetic Lcom/google/android/libraries/places/widget/zza;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/widget/AutocompleteActivity;

.field public final synthetic zzb:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

.field public final synthetic zzc:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/widget/AutocompleteActivity;Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/zza;->zza:Lcom/google/android/libraries/places/widget/AutocompleteActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/widget/zza;->zzb:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/widget/zza;->zzc:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/zza;->zza:Lcom/google/android/libraries/places/widget/AutocompleteActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/zza;->zzb:Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/widget/zza;->zzc:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->zzb(Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
