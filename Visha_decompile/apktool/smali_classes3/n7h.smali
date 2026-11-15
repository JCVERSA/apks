.class public final Ln7h;
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
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7h;->a:Lqyi;

    iput-object p2, p0, Ln7h;->b:Lqyi;

    iput-object p3, p0, Ln7h;->c:Lqyi;

    iput-object p4, p0, Ln7h;->d:Lqyi;

    iput-object p5, p0, Ln7h;->e:Lqyi;

    iput-object p6, p0, Ln7h;->f:Lqyi;

    iput-object p7, p0, Ln7h;->g:Lqyi;

    iput-object p8, p0, Ln7h;->h:Lqyi;

    iput-object p9, p0, Ln7h;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Ln7h;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Ln7h;->b:Lqyi;

    check-cast v0, Lwyf;

    invoke-virtual {v0}, Lwyf;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ln7h;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Ln7h;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lsvf;

    iget-object v0, p0, Ln7h;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmoh;

    iget-object v0, p0, Ln7h;->f:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v7

    iget-object v0, p0, Ln7h;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Llmg;

    iget-object v0, p0, Ln7h;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkwf;

    iget-object p0, p0, Ln7h;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance p0, Ll7h;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Ll7h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsvf;Lmoh;Lenh;Llmg;Lkwf;J)V

    return-object p0
.end method
