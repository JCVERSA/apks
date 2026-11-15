.class public final Lmrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmrf;->a:Lqyi;

    iput-object p2, p0, Lmrf;->b:Lqyi;

    iput-object p3, p0, Lmrf;->c:Lqyi;

    iput-object p4, p0, Lmrf;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmrf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llrh;

    iget-object v1, p0, Lmrf;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg8i;

    iget-object v2, p0, Lmrf;->c:Lqyi;

    check-cast v2, Layg;

    invoke-virtual {v2}, Layg;->a()Lcom/google/android/gms/internal/ads/c5;

    move-result-object v2

    iget-object p0, p0, Lmrf;->d:Lqyi;

    check-cast p0, Lb2h;

    invoke-virtual {p0}, Lb2h;->a()La2h;

    move-result-object p0

    new-instance v3, Lf2h;

    invoke-direct {v3, v0, v1, p0, v2}, Lf2h;-><init>(Llrh;Lg8i;Lmxg;Lpxg;)V

    return-object v3
.end method
