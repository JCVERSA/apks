.class public final Liig;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liig;->a:Lqyi;

    iput-object p2, p0, Liig;->b:Lqyi;

    iput-object p3, p0, Liig;->c:Lqyi;

    iput-object p4, p0, Liig;->d:Lqyi;

    iput-object p5, p0, Liig;->e:Lqyi;

    iput-object p6, p0, Liig;->f:Lqyi;

    iput-object p7, p0, Liig;->g:Lqyi;

    iput-object p8, p0, Liig;->h:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Liig;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lizf;

    iget-object v0, p0, Liig;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lu0g;

    iget-object v0, p0, Liig;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lh1g;

    iget-object v0, p0, Liig;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lw1g;

    iget-object v0, p0, Liig;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4g;

    iget-object v0, p0, Liig;->f:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v7

    iget-object v0, p0, Liig;->g:Lqyi;

    check-cast v0, Lsuf;

    invoke-virtual {v0}, Lsuf;->a()Lkmh;

    move-result-object v8

    iget-object p0, p0, Liig;->h:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lwpf;

    new-instance p0, Ldig;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Ldig;-><init>(Lizf;Lu0g;Lh1g;Lw1g;Lr4g;Lhmh;Lkmh;Lwpf;)V

    return-object p0
.end method
