.class public final Lcom/yandex/mobile/ads/impl/hv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/iv1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hv1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/iv1<",
        "Lcom/yandex/mobile/ads/impl/gv1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/o3;

.field private d:Lcom/yandex/mobile/ads/impl/gv1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hv1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hv1;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hv1;->c:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/hv1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gv1;->a(Lcom/yandex/mobile/ads/impl/fs;)V

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/hv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gv1;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gv1;->a(Lcom/yandex/mobile/ads/impl/fs;)V

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/hv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gz1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kv1;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/gz1;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/kv1<",
            "Lcom/yandex/mobile/ads/impl/gv1;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/tj2;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v13, p4

    .line 7
    const-string v1, "adResponse"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sizeInfo"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "htmlResponse"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "creationListener"

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v14, Lcom/yandex/mobile/ads/impl/gv1;

    .line 9
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/hv1;->a:Landroid/content/Context;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/hv1;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/hv1;->c:Lcom/yandex/mobile/ads/impl/o3;

    .line 10
    new-instance v12, Lcom/yandex/mobile/ads/impl/t8;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/t8;-><init>()V

    .line 11
    new-instance v15, Lcom/yandex/mobile/ads/impl/hd0;

    .line 12
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "getApplicationContext(...)"

    invoke-static {v2, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v15

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p1

    move-object v8, v6

    move-object v6, v12

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/hd0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;)V

    .line 14
    new-instance v6, Lcom/yandex/mobile/ads/impl/ld0;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v1, v11, v7, v12}, Lcom/yandex/mobile/ads/impl/ld0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;)V

    .line 15
    new-instance v16, Lcom/yandex/mobile/ads/impl/xc0;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/xc0;-><init>()V

    .line 16
    new-instance v17, Lcom/yandex/mobile/ads/impl/zg0;

    invoke-direct/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/zg0;-><init>()V

    .line 17
    new-instance v8, Lcom/yandex/mobile/ads/impl/sd0;

    invoke-direct {v8, v10}, Lcom/yandex/mobile/ads/impl/sd0;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    move-object v1, v14

    move-object v2, v9

    move-object v9, v6

    move-object/from16 v6, p3

    move-object v7, v12

    move-object v12, v8

    move-object v8, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    .line 18
    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/gv1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/hd0;Lcom/yandex/mobile/ads/impl/ld0;Lcom/yandex/mobile/ads/impl/xc0;Lcom/yandex/mobile/ads/impl/zg0;Lcom/yandex/mobile/ads/impl/sd0;)V

    .line 19
    iput-object v14, v0, Lcom/yandex/mobile/ads/impl/hv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    .line 20
    new-instance v1, Lcom/yandex/mobile/ads/impl/hv1$a;

    invoke-direct {v1, v0, v14, v13}, Lcom/yandex/mobile/ads/impl/hv1$a;-><init>(Lcom/yandex/mobile/ads/impl/hv1;Lcom/yandex/mobile/ads/impl/gv1;Lcom/yandex/mobile/ads/impl/kv1;)V

    .line 21
    invoke-virtual {v14, v1}, Lcom/yandex/mobile/ads/impl/gv1;->a(Lcom/yandex/mobile/ads/impl/fs;)V

    .line 22
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/gv1;->h()V

    return-void
.end method
