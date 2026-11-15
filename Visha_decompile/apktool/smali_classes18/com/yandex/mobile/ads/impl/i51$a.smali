.class public final Lcom/yandex/mobile/ads/impl/i51$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/i51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/i51$a$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/y61;

.field private final d:Lcom/yandex/mobile/ads/impl/s51;

.field private final e:Lcom/yandex/mobile/ads/impl/g51;

.field private final f:Lcom/yandex/mobile/ads/impl/ew;

.field final synthetic g:Lcom/yandex/mobile/ads/impl/i51;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i51;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/y61;",
            "Lcom/yandex/mobile/ads/impl/s51;",
            "Lcom/yandex/mobile/ads/impl/g51;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdFactoriesProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCreationListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i51$a;->b:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i51$a;->c:Lcom/yandex/mobile/ads/impl/y61;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i51$a;->d:Lcom/yandex/mobile/ads/impl/s51;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i51$a;->e:Lcom/yandex/mobile/ads/impl/g51;

    new-instance p3, Lcom/yandex/mobile/ads/impl/er1;

    invoke-direct {p3}, Lcom/yandex/mobile/ads/impl/er1;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i51;->a(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lcom/yandex/mobile/ads/impl/er1;->b(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    new-instance p3, Lcom/yandex/mobile/ads/impl/fw;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i51;->c(Lcom/yandex/mobile/ads/impl/i51;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i51;->a(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p1

    invoke-direct {p3, p4, p1, p2}, Lcom/yandex/mobile/ads/impl/fw;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pp1;)V

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/fw;->a()Lcom/yandex/mobile/ads/impl/ew;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i51$a;->f:Lcom/yandex/mobile/ads/impl/ew;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i51$a;)Lcom/yandex/mobile/ads/impl/s51;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->d:Lcom/yandex/mobile/ads/impl/s51;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->c:Lcom/yandex/mobile/ads/impl/y61;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->e:Lcom/yandex/mobile/ads/impl/g51;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->k()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->e:Lcom/yandex/mobile/ads/impl/g51;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->q()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/yandex/mobile/ads/impl/s41;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->c:Lcom/yandex/mobile/ads/impl/y61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i51$a;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/i51;->a(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v2

    invoke-direct {v5, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/s41;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/i51$a$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->e:Lcom/yandex/mobile/ads/impl/g51;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i51;->b(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v1

    invoke-direct {v6, p0, v0, v1}, Lcom/yandex/mobile/ads/impl/i51$a$a;-><init>(Lcom/yandex/mobile/ads/impl/i51$a;Lcom/yandex/mobile/ads/impl/g51;Lcom/yandex/mobile/ads/impl/g5;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i51;->b(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->p:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "adLoadingPhaseType"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i51;->f(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/v91;

    move-result-object v2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i51;->c(Lcom/yandex/mobile/ads/impl/i51;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i51;->a(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v4

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/i51$a;->f:Lcom/yandex/mobile/ads/impl/ew;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/i51$a;->e:Lcom/yandex/mobile/ads/impl/g51;

    invoke-virtual/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/v91;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/i51$a$a;Lcom/yandex/mobile/ads/impl/ew;Lcom/yandex/mobile/ads/impl/g51;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51$a;->e:Lcom/yandex/mobile/ads/impl/g51;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->k()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_0
    return-void
.end method
