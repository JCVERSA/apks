.class public final Lmdh;
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

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmdh;->a:Lqyi;

    iput-object p3, p0, Lmdh;->b:Lqyi;

    iput-object p4, p0, Lmdh;->c:Lqyi;

    iput-object p5, p0, Lmdh;->d:Lqyi;

    iput-object p6, p0, Lmdh;->e:Lqyi;

    iput-object p7, p0, Lmdh;->f:Lqyi;

    iput-object p8, p0, Lmdh;->g:Lqyi;

    iput-object p9, p0, Lmdh;->h:Lqyi;

    iput-object p10, p0, Lmdh;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object v0, p0, Lmdh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lmdh;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lmdh;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lh3h;

    iget-object v0, p0, Lmdh;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    iget-object v0, p0, Lmdh;->e:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v6

    iget-object v0, p0, Lmdh;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lf3h;

    iget-object v0, p0, Lmdh;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljkg;

    iget-object v0, p0, Lmdh;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Llog;

    iget-object p0, p0, Lmdh;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance p0, Lkdh;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lkdh;-><init>(Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lh3h;Landroid/content/Context;Lenh;Lf3h;Ljkg;Llog;I)V

    return-object p0
.end method
