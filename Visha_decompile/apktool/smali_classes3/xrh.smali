.class public final Lxrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxrh;->a:Lqyi;

    iput-object p2, p0, Lxrh;->b:Lqyi;

    iput-object p3, p0, Lxrh;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lxrh;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lxrh;->b:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object p0, p0, Lxrh;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lgkg;

    invoke-static {}, Lrlf;->a()Lvtg;

    move-result-object v5

    invoke-static {}, Lulf;->a()Lccf;

    move-result-object v6

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfgq;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lgkg;Lvtg;Lccf;)V

    return-object p0
.end method
