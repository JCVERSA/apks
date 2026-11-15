.class public final Lj7f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/ads/internal/util/zzbd;

.field public static final c:Lcom/google/android/gms/ads/internal/util/zzbd;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/t3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb7f;

    invoke-direct {v0}, Lb7f;-><init>()V

    sput-object v0, Lj7f;->b:Lcom/google/android/gms/ads/internal/util/zzbd;

    new-instance v0, Lc7f;

    invoke-direct {v0}, Lc7f;-><init>()V

    sput-object v0, Lj7f;->c:Lcom/google/android/gms/ads/internal/util/zzbd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/t3;

    sget-object v4, Lj7f;->b:Lcom/google/android/gms/ads/internal/util/zzbd;

    sget-object v5, Lj7f;->c:Lcom/google/android/gms/ads/internal/util/zzbd;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/t3;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/internal/ads/zzfgq;)V

    iput-object v7, p0, Lj7f;->a:Lcom/google/android/gms/internal/ads/t3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;
    .locals 1

    new-instance v0, Ln7f;

    iget-object p0, p0, Lj7f;->a:Lcom/google/android/gms/internal/ads/t3;

    invoke-direct {v0, p0, p1, p2, p3}, Ln7f;-><init>(Lcom/google/android/gms/internal/ads/t3;Ljava/lang/String;Lw6f;Lv6f;)V

    return-object v0
.end method

.method public final b()Ls7f;
    .locals 1

    new-instance v0, Ls7f;

    iget-object p0, p0, Lj7f;->a:Lcom/google/android/gms/internal/ads/t3;

    invoke-direct {v0, p0}, Ls7f;-><init>(Lcom/google/android/gms/internal/ads/t3;)V

    return-object v0
.end method
