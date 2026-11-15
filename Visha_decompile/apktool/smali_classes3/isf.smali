.class public final Lisf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lasf;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lasf;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lisf;->a:Lasf;

    iput-object p2, p0, Lisf;->b:Lqyi;

    iput-object p3, p0, Lisf;->c:Lqyi;

    iput-object p4, p0, Lisf;->d:Lqyi;

    iput-object p5, p0, Lisf;->e:Lqyi;

    return-void
.end method

.method public static a(Lasf;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lenh;)Li8g;
    .locals 1

    new-instance p0, Li8g;

    new-instance v0, Lyrf;

    invoke-direct {v0, p1, p2, p3, p4}, Lyrf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lenh;)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-direct {p0, v0, p1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lisf;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lisf;->c:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, p0, Lisf;->d:Lqyi;

    check-cast v2, Lquf;

    invoke-virtual {v2}, Lquf;->a()Lhmh;

    move-result-object v2

    iget-object v3, p0, Lisf;->e:Lqyi;

    check-cast v3, Lzyf;

    invoke-virtual {v3}, Lzyf;->a()Lenh;

    move-result-object v3

    iget-object p0, p0, Lisf;->a:Lasf;

    invoke-static {p0, v0, v1, v2, v3}, Lisf;->a(Lasf;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lenh;)Li8g;

    move-result-object p0

    return-object p0
.end method
