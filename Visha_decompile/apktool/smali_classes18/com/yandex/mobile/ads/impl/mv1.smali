.class public final Lcom/yandex/mobile/ads/impl/mv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/ov1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lnk1;

.field private final d:Lcom/yandex/mobile/ads/impl/ov1$a;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/mv1;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lnk1;Lcom/yandex/mobile/ads/impl/ov1$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInitializationListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mv1;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mv1;->c:Lnk1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/mv1;->d:Lcom/yandex/mobile/ads/impl/ov1$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mv1;->e:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/mv1;)Lcom/yandex/mobile/ads/impl/ov1$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mv1;->d:Lcom/yandex/mobile/ads/impl/ov1$a;

    return-object p0
.end method

.method public static final synthetic a()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/mv1;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    new-instance v4, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/ov1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mv1;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mv1;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mv1;->c:Lnk1;

    const/4 v6, 0x0

    const v7, 0x1ffff0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ov1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;I)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/mv1;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/yandex/mobile/ads/impl/gl0;->c:Lcom/yandex/mobile/ads/impl/gl0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/mv1$a;

    invoke-direct {v1, v8, p0}, Lcom/yandex/mobile/ads/impl/mv1$a;-><init>(Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/mv1;)V

    invoke-virtual {v8, v0, v1}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;)V

    return-void
.end method
