.class public final Lnug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;
.implements Lnzf;


# static fields
.field public static final d:Ljava/lang/Object;

.field public static e:I


# instance fields
.field public final b:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final c:Lcom/google/android/gms/internal/ads/z4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnug;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/z4;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnug;->c:Lcom/google/android/gms/internal/ads/z4;

    iput-object p2, p0, Lnug;->b:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method private final a(Z)V
    .locals 4

    sget-object v0, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnug;->b:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnug;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lnug;->e:I

    sget-object v2, Lcye;->j6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v1, v2, :cond_1

    iget-object p0, p0, Lnug;->c:Lcom/google/android/gms/internal/ads/z4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/z4;->e(Z)V

    monitor-enter v0

    :try_start_1
    sget p0, Lnug;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lnug;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lnug;->a(Z)V

    return-void
.end method

.method public final zzt()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnug;->a(Z)V

    return-void
.end method
