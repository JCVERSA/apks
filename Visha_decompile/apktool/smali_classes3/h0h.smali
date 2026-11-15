.class public final Lh0h;
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
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0h;->a:Lqyi;

    iput-object p2, p0, Lh0h;->b:Lqyi;

    iput-object p3, p0, Lh0h;->c:Lqyi;

    iput-object p4, p0, Lh0h;->d:Lqyi;

    iput-object p5, p0, Lh0h;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lh0h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llkf;

    iget-object v0, p0, Lh0h;->b:Lqyi;

    check-cast v0, Lazf;

    invoke-virtual {v0}, Lazf;->a()Lpyf;

    move-result-object v3

    iget-object v0, p0, Lh0h;->c:Lqyi;

    check-cast v0, Lz6g;

    invoke-virtual {v0}, Lz6g;->a()Ld6g;

    move-result-object v4

    iget-object v0, p0, Lh0h;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lq0h;

    iget-object p0, p0, Lh0h;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Loxg;

    new-instance p0, Lg0h;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lg0h;-><init>(Llkf;Lpyf;Ld6g;Lq0h;Loxg;)V

    return-object p0
.end method
