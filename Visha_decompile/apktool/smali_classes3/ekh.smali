.class public final Lekh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lekh;->a:Lqyi;

    iput-object p2, p0, Lekh;->b:Lqyi;

    iput-object p3, p0, Lekh;->c:Lqyi;

    iput-object p4, p0, Lekh;->d:Lqyi;

    iput-object p5, p0, Lekh;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lekh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lekh;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lekh;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llkf;

    iget-object v0, p0, Lekh;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lk4h;

    iget-object p0, p0, Lekh;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lhlh;

    new-instance v7, Lcnh;

    invoke-direct {v7}, Lcnh;-><init>()V

    new-instance p0, Ldkh;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ldkh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Llkf;Lk4h;Lhlh;Lcnh;)V

    return-object p0
.end method
