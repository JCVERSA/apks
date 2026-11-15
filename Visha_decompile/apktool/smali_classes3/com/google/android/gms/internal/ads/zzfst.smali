.class public final synthetic Lcom/google/android/gms/internal/ads/zzfst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lu1i;


# direct methods
.method public synthetic constructor <init>(Lu1i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lu1i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lu1i;

    iget-object p0, p0, Lu1i;->b:Lw1i;

    invoke-static {p0}, Lw1i;->d(Lw1i;)Lx1i;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unlinkToDeath"

    invoke-virtual {v0, v3, v2}, Lx1i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p0}, Lw1i;->b(Lw1i;)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0}, Lw1i;->a(Lw1i;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lw1i;->k(Lw1i;Landroid/os/IInterface;)V

    invoke-static {p0, v1}, Lw1i;->j(Lw1i;Z)V

    return-void
.end method
