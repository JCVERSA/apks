.class public final Lzih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnph;


# instance fields
.field public final a:Lvjh;

.field public final b:Lxjh;

.field public final c:Lcom/google/android/gms/ads/internal/client/zzm;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/ads/internal/client/zzx;

.field public final g:Lcph;


# direct methods
.method public constructor <init>(Lvjh;Lxjh;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzih;->a:Lvjh;

    iput-object p2, p0, Lzih;->b:Lxjh;

    iput-object p3, p0, Lzih;->c:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object p4, p0, Lzih;->d:Ljava/lang/String;

    iput-object p5, p0, Lzih;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lzih;->f:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object p7, p0, Lzih;->g:Lcph;

    return-void
.end method


# virtual methods
.method public final zza()Lcph;
    .locals 0

    iget-object p0, p0, Lzih;->g:Lcph;

    return-object p0
.end method

.method public final zzb()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lzih;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method
