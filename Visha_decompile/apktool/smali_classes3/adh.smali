.class public final Ladh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladh;->a:Lqyi;

    iput-object p3, p0, Ladh;->b:Lqyi;

    iput-object p4, p0, Ladh;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lych;
    .locals 4

    iget-object v0, p0, Ladh;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object v2, p0, Ladh;->b:Lqyi;

    check-cast v2, Lzyf;

    invoke-virtual {v2}, Lzyf;->a()Lenh;

    move-result-object v2

    iget-object p0, p0, Ladh;->c:Lqyi;

    check-cast p0, Lklf;

    invoke-virtual {p0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    new-instance v3, Lych;

    invoke-direct {v3, v0, v1, v2, p0}, Lych;-><init>(Landroid/content/Context;Lg8i;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ladh;->a()Lych;

    move-result-object p0

    return-object p0
.end method
