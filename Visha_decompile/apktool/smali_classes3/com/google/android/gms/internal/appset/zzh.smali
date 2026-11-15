.class public final synthetic Lcom/google/android/gms/internal/appset/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/appset/a;

.field public final synthetic zzb:Lzda;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/appset/a;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/zzh;->zza:Lcom/google/android/gms/internal/appset/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/appset/zzh;->zzb:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/appset/zzh;->zza:Lcom/google/android/gms/internal/appset/a;

    iget-object p0, p0, Lcom/google/android/gms/internal/appset/zzh;->zzb:Lzda;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/appset/a;->e(Lzda;)V

    return-void
.end method
