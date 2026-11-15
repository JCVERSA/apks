.class public final Lqcg;
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

    iput-object p1, p0, Lqcg;->a:Lqyi;

    iput-object p2, p0, Lqcg;->b:Lqyi;

    iput-object p3, p0, Lqcg;->c:Lqyi;

    iput-object p4, p0, Lqcg;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lqcg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfue;

    iget-object v1, p0, Lqcg;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lqcg;->c:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object p0, p0, Lqcg;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfy0;

    new-instance v3, Lzqf;

    new-instance v4, Llqf;

    invoke-direct {v4, v2, v0}, Llqf;-><init>(Landroid/content/Context;Lfue;)V

    invoke-direct {v3, v1, v4, p0}, Lzqf;-><init>(Ljava/util/concurrent/Executor;Llqf;Lfy0;)V

    return-object v3
.end method
