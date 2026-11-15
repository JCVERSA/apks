.class public final Lmeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmeh;->a:I

    iput p2, p0, Lmeh;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    iget v0, p0, Lmeh;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lmeh;->b:I

    if-eq p0, v1, :cond_0

    const-string v1, "sessions_without_flags"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "crashes_without_flags"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p0

    invoke-virtual {p0}, Laye;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "did_reset"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
