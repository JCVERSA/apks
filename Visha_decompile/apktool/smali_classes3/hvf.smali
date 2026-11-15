.class public final Lhvf;
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

.field public final j:Lqyi;

.field public final k:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhvf;->a:Lqyi;

    iput-object p2, p0, Lhvf;->b:Lqyi;

    iput-object p3, p0, Lhvf;->c:Lqyi;

    iput-object p4, p0, Lhvf;->d:Lqyi;

    iput-object p5, p0, Lhvf;->e:Lqyi;

    iput-object p6, p0, Lhvf;->f:Lqyi;

    iput-object p7, p0, Lhvf;->g:Lqyi;

    iput-object p8, p0, Lhvf;->h:Lqyi;

    iput-object p9, p0, Lhvf;->i:Lqyi;

    iput-object p11, p0, Lhvf;->j:Lqyi;

    iput-object p12, p0, Lhvf;->k:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lhvf;->a:Lqyi;

    check-cast v0, Ltrg;

    invoke-virtual {v0}, Ltrg;->a()Lsrg;

    move-result-object v2

    iget-object v0, p0, Lhvf;->b:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v3

    iget-object v0, p0, Lhvf;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llrh;

    iget-object v0, p0, Lhvf;->d:Lqyi;

    check-cast v0, Lnof;

    invoke-virtual {v0}, Lnof;->a()Lmof;

    move-result-object v5

    iget-object v0, p0, Lhvf;->e:Lqyi;

    check-cast v0, La1h;

    invoke-virtual {v0}, La1h;->a()Lz0h;

    move-result-object v6

    iget-object v0, p0, Lhvf;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ls5g;

    iget-object v0, p0, Lhvf;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lvmh;

    iget-object v0, p0, Lhvf;->h:Lqyi;

    check-cast v0, Lbtg;

    invoke-virtual {v0}, Lbtg;->a()Latg;

    move-result-object v9

    iget-object v0, p0, Lhvf;->i:Lqyi;

    check-cast v0, Lmyf;

    invoke-virtual {v0}, Lmyf;->a()Llyf;

    move-result-object v10

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v11

    iget-object v0, p0, Lhvf;->j:Lqyi;

    check-cast v0, Lksg;

    invoke-virtual {v0}, Lksg;->a()Ljsg;

    move-result-object v12

    iget-object p0, p0, Lhvf;->k:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Loxg;

    new-instance p0, Lgvf;

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lgvf;-><init>(Lsrg;Lenh;Llrh;Lmof;Lz0h;Ls5g;Lvmh;Latg;Llyf;Ljava/util/concurrent/Executor;Ljsg;Loxg;)V

    return-object p0
.end method
