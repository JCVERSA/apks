.class public final Lxxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxxf;->a:Lqyi;

    iput-object p2, p0, Lxxf;->b:Lqyi;

    iput-object p3, p0, Lxxf;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lxxf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lxxf;->b:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object p0, p0, Lxxf;->c:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    new-instance v2, Lwxf;

    invoke-direct {v2, v0, v1, p0}, Lwxf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lenh;)V

    return-object v2
.end method
