.class public final synthetic Lcom/google/android/gms/internal/ads/zzebk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lpuh;

.field public final synthetic zzb:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lpuh;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebk;->zza:Lpuh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebk;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnuh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebk;->zzb:Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzebk;->zza:Lpuh;

    invoke-virtual {p0, v0}, Lpuh;->d(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
