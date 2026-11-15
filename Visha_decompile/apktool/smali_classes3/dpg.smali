.class public final Ldpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpg;->a:Lqyi;

    iput-object p2, p0, Ldpg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldpg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Ldpg;->b:Lqyi;

    check-cast p0, Lklf;

    invoke-virtual {p0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    new-instance v1, Ljpg;

    invoke-direct {v1, v0, p0}, Ljpg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v1
.end method
