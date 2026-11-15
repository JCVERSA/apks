.class public final synthetic Lcom/google/android/gms/internal/auth-api-phone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las8;


# instance fields
.field public final synthetic a:Ly6e;


# direct methods
.method public synthetic constructor <init>(Ly6e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/a;->a:Ly6e;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api-phone/a;->a:Ly6e;

    check-cast p1, Ldoj;

    check-cast p2, Lzda;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzz;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzz;-><init>(Ly6e;Lzda;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zzg(Lcom/google/android/gms/internal/auth-api-phone/zzj;)V

    return-void
.end method
