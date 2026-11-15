.class public final Lxrf;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxrf;->a:Lqyi;

    iput-object p2, p0, Lxrf;->b:Lqyi;

    iput-object p3, p0, Lxrf;->c:Lqyi;

    iput-object p4, p0, Lxrf;->d:Lqyi;

    iput-object p5, p0, Lxrf;->e:Lqyi;

    iput-object p6, p0, Lxrf;->f:Lqyi;

    iput-object p7, p0, Lxrf;->g:Lqyi;

    iput-object p8, p0, Lxrf;->h:Lqyi;

    iput-object p9, p0, Lxrf;->i:Lqyi;

    iput-object p10, p0, Lxrf;->j:Lqyi;

    return-void
.end method

.method public static b(Lauf;Landroid/content/Context;Limh;Landroid/view/View;Lejf;Lztf;Lsdg;Lv8g;Lzxi;Ljava/util/concurrent/Executor;)Lwrf;
    .locals 12

    new-instance v11, Lwrf;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lwrf;-><init>(Lauf;Landroid/content/Context;Limh;Landroid/view/View;Lejf;Lztf;Lsdg;Lv8g;Lzxi;Ljava/util/concurrent/Executor;)V

    return-object v11
.end method


# virtual methods
.method public final a()Lwrf;
    .locals 12

    iget-object v0, p0, Lxrf;->a:Lqyi;

    check-cast v0, Lnwf;

    invoke-virtual {v0}, Lnwf;->a()Lauf;

    move-result-object v2

    iget-object v0, p0, Lxrf;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Lxrf;->c:Lqyi;

    check-cast v0, Ldsf;

    invoke-virtual {v0}, Ldsf;->a()Limh;

    move-result-object v4

    iget-object v0, p0, Lxrf;->d:Lqyi;

    check-cast v0, Lcsf;

    invoke-virtual {v0}, Lcsf;->a()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lxrf;->e:Lqyi;

    check-cast v0, Lqsf;

    invoke-virtual {v0}, Lqsf;->a()Lejf;

    move-result-object v6

    iget-object v0, p0, Lxrf;->f:Lqyi;

    check-cast v0, Lesf;

    invoke-virtual {v0}, Lesf;->a()Lztf;

    move-result-object v7

    iget-object v0, p0, Lxrf;->g:Lqyi;

    check-cast v0, Lobg;

    invoke-virtual {v0}, Lobg;->a()Lsdg;

    move-result-object v8

    iget-object v0, p0, Lxrf;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lv8g;

    iget-object v0, p0, Lxrf;->i:Lqyi;

    invoke-static {v0}, Leyi;->a(Lqyi;)Lzxi;

    move-result-object v10

    iget-object p0, p0, Lxrf;->j:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Ljava/util/concurrent/Executor;

    new-instance p0, Lwrf;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lwrf;-><init>(Lauf;Landroid/content/Context;Limh;Landroid/view/View;Lejf;Lztf;Lsdg;Lv8g;Lzxi;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lxrf;->a()Lwrf;

    move-result-object p0

    return-object p0
.end method
