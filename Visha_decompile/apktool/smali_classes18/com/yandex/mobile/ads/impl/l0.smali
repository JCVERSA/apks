.class public final Lcom/yandex/mobile/ads/impl/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/l0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/o0;

.field private final c:Lcom/yandex/mobile/ads/impl/g0;

.field private final d:Lcom/yandex/mobile/ads/impl/j32;

.field private final e:Lcom/yandex/mobile/ads/impl/l0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/n0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o0;Lcom/yandex/mobile/ads/impl/g0;Lcom/yandex/mobile/ads/impl/j32;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "interactionEventListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationContext"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityInteractionTracker"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityBackgroundListener"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "strongReferenceKeepingManager"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    .line 4
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    .line 5
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    .line 6
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/l0;->d:Lcom/yandex/mobile/ads/impl/j32;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/l0$a;-><init>(Lcom/yandex/mobile/ads/impl/l0;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/n0;Lcom/yandex/mobile/ads/impl/m80;)V
    .locals 12

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "getApplicationContext(...)"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v11, Lcom/yandex/mobile/ads/impl/o0;

    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/o0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/n0;Lcom/yandex/mobile/ads/impl/m80;)V

    .line 10
    invoke-static {}, Lcom/yandex/mobile/ads/impl/h0;->a()Lcom/yandex/mobile/ads/impl/i0;

    move-result-object v6

    .line 11
    sget v0, Lcom/yandex/mobile/ads/impl/j32;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j32$a;->a()Lcom/yandex/mobile/ads/impl/j32;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/l0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/n0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o0;Lcom/yandex/mobile/ads/impl/g0;Lcom/yandex/mobile/ads/impl/j32;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-interface {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/g0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l0$a;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    .line 3
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/o0;->a(Lcom/yandex/mobile/ads/impl/x71;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0$a;->e:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/o0;->a(Lcom/yandex/mobile/ads/impl/o0$a;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0$a;->e:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/o0;->b(Lcom/yandex/mobile/ads/impl/o0$a;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/o0$a;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/o0;->a(Lcom/yandex/mobile/ads/impl/o0$a;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l0$a;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->d:Lcom/yandex/mobile/ads/impl/j32;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xq0;->d:Lcom/yandex/mobile/ads/impl/xq0;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/j32;->a(Lcom/yandex/mobile/ads/impl/xq0;Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->d:Lcom/yandex/mobile/ads/impl/j32;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xq0;->d:Lcom/yandex/mobile/ads/impl/xq0;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/j32;->b(Lcom/yandex/mobile/ads/impl/xq0;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l0;->c:Lcom/yandex/mobile/ads/impl/g0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l0;->e:Lcom/yandex/mobile/ads/impl/l0$a;

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l0$a;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0$a;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/o0;->b(Lcom/yandex/mobile/ads/impl/o0$a;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0$a;->d:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/o0;->a(Lcom/yandex/mobile/ads/impl/o0$a;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l0;->b:Lcom/yandex/mobile/ads/impl/o0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0$a;->d:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/o0;->b(Lcom/yandex/mobile/ads/impl/o0$a;)V

    return-void
.end method
