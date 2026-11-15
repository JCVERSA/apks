.class public final Lcom/yandex/mobile/ads/impl/n11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/n11$a;
    }
.end annotation


# static fields
.field private static b:Lcom/yandex/mobile/ads/impl/n11;

.field private static final c:Ljava/lang/Object;

.field public static final synthetic d:I


# instance fields
.field private final a:Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhg;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/n11;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lhg;

    invoke-direct {v0}, Lhg;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n11;->a:Lhg;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/n11;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/n11;
    .locals 1

    .line 14
    sget-object v0, Lcom/yandex/mobile/ads/impl/n11;->b:Lcom/yandex/mobile/ads/impl/n11;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/n11;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/n11;->b:Lcom/yandex/mobile/ads/impl/n11;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/n11;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    const-string v1, "requestMethod"

    move-object v5, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestUrl"

    move-object v6, p4

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 5
    new-instance v1, Lcom/yandex/mobile/ads/impl/o11;

    move-object v2, v1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/o11;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    if-eqz p9, :cond_1

    .line 6
    new-instance v2, Lcom/yandex/mobile/ads/impl/p11;

    move-object p1, v2

    move-wide p2, v9

    move-object/from16 p4, p7

    move-object/from16 p5, p8

    move-object/from16 p6, p9

    invoke-direct/range {p1 .. p6}, Lcom/yandex/mobile/ads/impl/p11;-><init>(JLjava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_0
    new-instance v3, Lcom/yandex/mobile/ads/impl/m11;

    invoke-direct {v3, v1, v2}, Lcom/yandex/mobile/ads/impl/m11;-><init>(Lcom/yandex/mobile/ads/impl/o11;Lcom/yandex/mobile/ads/impl/p11;)V

    .line 8
    sget-object v1, Lcom/yandex/mobile/ads/impl/n11;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/n11;->a:Lhg;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_2

    .line 10
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/n11;->a:Lhg;

    invoke-virtual {v2}, Lhg;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/n11;->a:Lhg;

    invoke-virtual {v0, v3}, Lhg;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v1

    return-void

    .line 13
    :goto_2
    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/n11;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n11;->a:Lhg;

    invoke-virtual {p0}, Lhg;->clear()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/m11;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/yandex/mobile/ads/impl/n11;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n11;->a:Lhg;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
