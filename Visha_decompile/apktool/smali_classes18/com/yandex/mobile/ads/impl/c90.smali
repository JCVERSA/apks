.class public Lcom/yandex/mobile/ads/impl/c90;
.super Lcom/yandex/mobile/ads/impl/ck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ck<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final w:Lcom/yandex/mobile/ads/impl/ka0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ka0;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/su;->a()Lnk1;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/c90;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ka0;Lnk1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ka0;Lnk1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/yandex/mobile/ads/impl/ck;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/o3;Lnk1;)V

    .line 5
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c90;->w:Lcom/yandex/mobile/ads/impl/ka0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ak;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/impl/ak<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/z80;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v3

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/c90;->w:Lcom/yandex/mobile/ads/impl/ka0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/sx1;->a:Lcom/yandex/mobile/ads/impl/sx1$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sx1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sx1;

    move-result-object v9

    new-instance v10, Lcom/yandex/mobile/ads/impl/qg0;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/qg0;-><init>()V

    new-instance v11, Lcom/yandex/mobile/ads/impl/d8;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/d8;-><init>()V

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/z80;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/ka0;Lcom/yandex/mobile/ads/impl/sx1;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/d8;)V

    return-object v0
.end method
