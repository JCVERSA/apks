.class public final Luch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luch;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lvch;

    iget-object p0, p0, Luch;->a:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Lvch;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
