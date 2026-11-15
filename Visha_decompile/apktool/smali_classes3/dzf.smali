.class public final Ldzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lczf;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldzf;->a:Lqyi;

    iput-object p3, p0, Ldzf;->b:Lqyi;

    iput-object p4, p0, Ldzf;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ldzf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ldzf;->b:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object p0, p0, Ldzf;->c:Lqyi;

    check-cast p0, Lquf;

    invoke-virtual {p0}, Lquf;->a()Lhmh;

    move-result-object p0

    new-instance v6, Ladf;

    invoke-direct {v6}, Ladf;-><init>()V

    iget-object v4, p0, Lhmh;->A:Lcom/google/android/gms/internal/ads/zzbxf;

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    iget-object p0, p0, Lhmh;->s:Llmh;

    if-nez p0, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Llmh;->b:Ljava/lang/String;

    move-object v5, p0

    :goto_0
    new-instance v0, Lzcf;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lzcf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbxf;Ljava/lang/String;Ladf;)V

    :cond_1
    return-object v0
.end method
