.class public final synthetic Lcom/google/android/gms/internal/appset/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las8;


# instance fields
.field public final synthetic a:Lagj;


# direct methods
.method public synthetic constructor <init>(Lagj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/b;->a:Lagj;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/appset/b;->a:Lagj;

    check-cast p1, Lb5g;

    check-cast p2, Lzda;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/appset/zzg;

    new-instance v0, Lcom/google/android/gms/appset/zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/appset/zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/appset/zzo;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/appset/zzo;-><init>(Lagj;Lzda;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/appset/zzg;->zzc(Lcom/google/android/gms/appset/zza;Lcom/google/android/gms/internal/appset/zzf;)V

    return-void
.end method
