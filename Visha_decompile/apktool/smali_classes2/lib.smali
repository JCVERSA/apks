.class public final Llib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;

.field public final c:Loj8;

.field public final d:Loj8;

.field public final e:Loj8;

.field public final f:Loj8;

.field public final g:Loj8;

.field public final h:Loj8;

.field public final i:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llib;->a:Loj8;

    iput-object p2, p0, Llib;->b:Loj8;

    iput-object p3, p0, Llib;->c:Loj8;

    iput-object p4, p0, Llib;->d:Loj8;

    iput-object p5, p0, Llib;->e:Loj8;

    iput-object p6, p0, Llib;->f:Loj8;

    iput-object p7, p0, Llib;->g:Loj8;

    iput-object p8, p0, Llib;->h:Loj8;

    iput-object p9, p0, Llib;->i:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;)Llib;
    .locals 11

    new-instance v10, Llib;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Llib;-><init>(Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;)V

    return-object v10
.end method

.method public static c(Landroid/content/Context;Lb50;Lge3;Lfpc;Ljava/util/concurrent/Executor;Le8a;Lhy0;Lhy0;Lxx0;)Lkib;
    .locals 11

    new-instance v10, Lkib;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lkib;-><init>(Landroid/content/Context;Lb50;Lge3;Lfpc;Ljava/util/concurrent/Executor;Le8a;Lhy0;Lhy0;Lxx0;)V

    return-object v10
.end method


# virtual methods
.method public b()Lkib;
    .locals 10

    iget-object v0, p0, Llib;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Llib;->b:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb50;

    iget-object v0, p0, Llib;->c:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lge3;

    iget-object v0, p0, Llib;->d:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfpc;

    iget-object v0, p0, Llib;->e:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Llib;->f:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le8a;

    iget-object v0, p0, Llib;->g:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lhy0;

    iget-object v0, p0, Llib;->h:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lhy0;

    iget-object p0, p0, Llib;->i:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lxx0;

    invoke-static/range {v1 .. v9}, Llib;->c(Landroid/content/Context;Lb50;Lge3;Lfpc;Ljava/util/concurrent/Executor;Le8a;Lhy0;Lhy0;Lxx0;)Lkib;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Llib;->b()Lkib;

    move-result-object p0

    return-object p0
.end method
