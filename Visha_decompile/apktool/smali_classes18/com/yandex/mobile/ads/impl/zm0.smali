.class public final Lcom/yandex/mobile/ads/impl/zm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/mg2;

.field private final c:Lcom/yandex/mobile/ads/impl/lo0;

.field private final d:Lcom/yandex/mobile/ads/impl/he2;

.field private final e:Lcom/yandex/mobile/ads/impl/s82;

.field private final f:Lcom/yandex/mobile/ads/impl/ff1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/he2;)V
    .locals 10

    move-object v1, p1

    .line 1
    new-instance v8, Lcom/yandex/mobile/ads/impl/yn0;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct {v8, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/yn0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;)V

    .line 2
    new-instance v9, Lcom/yandex/mobile/ads/impl/s82;

    invoke-direct {v9, p1}, Lcom/yandex/mobile/ads/impl/s82;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/zm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/he2;Lcom/yandex/mobile/ads/impl/yn0;Lcom/yandex/mobile/ads/impl/s82;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/he2;Lcom/yandex/mobile/ads/impl/yn0;Lcom/yandex/mobile/ads/impl/s82;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/gt;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/mg2;",
            "Lcom/yandex/mobile/ads/impl/lo0;",
            "Lcom/yandex/mobile/ads/impl/he2;",
            "Lcom/yandex/mobile/ads/impl/yn0;",
            "Lcom/yandex/mobile/ads/impl/s82;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coreInstreamAdBreak"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdInfo"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoTracker"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackListener"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoClicks"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "openUrlHandlerProvider"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "urlModifier"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zm0;->a:Lcom/yandex/mobile/ads/impl/zb2;

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/zm0;->b:Lcom/yandex/mobile/ads/impl/mg2;

    .line 8
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/zm0;->c:Lcom/yandex/mobile/ads/impl/lo0;

    .line 9
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/zm0;->d:Lcom/yandex/mobile/ads/impl/he2;

    .line 10
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/zm0;->e:Lcom/yandex/mobile/ads/impl/s82;

    .line 11
    invoke-virtual {p8}, Lcom/yandex/mobile/ads/impl/yn0;->a()Lcom/yandex/mobile/ads/impl/ff1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zm0;->f:Lcom/yandex/mobile/ads/impl/ff1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zm0;->b:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/mg2;->m()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zm0;->c:Lcom/yandex/mobile/ads/impl/lo0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zm0;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/lo0;->i(Lcom/yandex/mobile/ads/impl/go0;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zm0;->d:Lcom/yandex/mobile/ads/impl/he2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/he2;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zm0;->e:Lcom/yandex/mobile/ads/impl/s82;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/s82;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zm0;->f:Lcom/yandex/mobile/ads/impl/ff1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ff1;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
