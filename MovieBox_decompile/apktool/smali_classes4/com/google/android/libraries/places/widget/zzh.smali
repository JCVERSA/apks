.class public final synthetic Lcom/google/android/libraries/places/widget/zzh;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

.field public final synthetic zzb:Landroid/widget/EditText;

.field public final synthetic zzc:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/zzh;->zza:Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/widget/zzh;->zzb:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/widget/zzh;->zzc:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/zzh;->zza:Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/zzh;->zzb:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/widget/zzh;->zzc:Landroid/view/View;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
