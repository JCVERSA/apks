.class public final Lrzg;
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

    iput-object p1, p0, Lrzg;->a:Lqyi;

    iput-object p3, p0, Lrzg;->b:Lqyi;

    iput-object p4, p0, Lrzg;->c:Lqyi;

    iput-object p5, p0, Lrzg;->d:Lqyi;

    iput-object p6, p0, Lrzg;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lrzg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lubg;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v3

    iget-object v0, p0, Lrzg;->b:Lqyi;

    check-cast v0, Lagg;

    invoke-virtual {v0}, Lagg;->a()Lzfg;

    move-result-object v4

    iget-object v0, p0, Lrzg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfoh;

    iget-object v0, p0, Lrzg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnig;

    iget-object p0, p0, Lrzg;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Llmg;

    new-instance p0, Lqzg;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lqzg;-><init>(Lubg;Lg8i;Lzfg;Lfoh;Lnig;Llmg;)V

    return-object p0
.end method
