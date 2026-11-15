.class public final Lr7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7h;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lp7h;
    .locals 2

    iget-object p0, p0, Lr7h;->a:Lqyi;

    check-cast p0, Lklf;

    invoke-virtual {p0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    new-instance v1, Lp7h;

    invoke-direct {v1, p0, v0}, Lp7h;-><init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lg8i;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lr7h;->a()Lp7h;

    move-result-object p0

    return-object p0
.end method
