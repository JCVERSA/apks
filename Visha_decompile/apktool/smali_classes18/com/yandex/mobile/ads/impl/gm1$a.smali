.class public final Lcom/yandex/mobile/ads/impl/gm1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/vw0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/gm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tv$a;

.field private b:Lcom/yandex/mobile/ads/impl/dm1$a;

.field private c:Lcom/yandex/mobile/ads/impl/j40;

.field private d:Lcom/yandex/mobile/ads/impl/ds0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/d80;)V
    .locals 1

    .line 1
    new-instance v0, Llgd;

    invoke-direct {v0, p2}, Llgd;-><init>(Lcom/yandex/mobile/ads/impl/d80;)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/gm1$a;-><init>(Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/tz;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/tz;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/d00;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/d00;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/gm1$a;-><init>(Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;Lcom/yandex/mobile/ads/impl/tz;Lcom/yandex/mobile/ads/impl/d00;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;Lcom/yandex/mobile/ads/impl/tz;Lcom/yandex/mobile/ads/impl/d00;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->a:Lcom/yandex/mobile/ads/impl/tv$a;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->b:Lcom/yandex/mobile/ads/impl/dm1$a;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->c:Lcom/yandex/mobile/ads/impl/j40;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->d:Lcom/yandex/mobile/ads/impl/ds0;

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/d80;Lcom/yandex/mobile/ads/impl/mi1;)Lcom/yandex/mobile/ads/impl/dm1;
    .locals 0

    .line 6
    new-instance p1, Lcom/yandex/mobile/ads/impl/nm;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nm;-><init>(Lcom/yandex/mobile/ads/impl/d80;)V

    return-object p1
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/d80;Lcom/yandex/mobile/ads/impl/mi1;)Lcom/yandex/mobile/ads/impl/dm1;
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/gm1$a;->a(Lcom/yandex/mobile/ads/impl/d80;Lcom/yandex/mobile/ads/impl/mi1;)Lcom/yandex/mobile/ads/impl/dm1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jw0;)Lcom/yandex/mobile/ads/impl/gm1;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/jw0$f;->g:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/gm1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->a:Lcom/yandex/mobile/ads/impl/tv$a;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->b:Lcom/yandex/mobile/ads/impl/dm1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->c:Lcom/yandex/mobile/ads/impl/j40;

    .line 5
    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/j40;->a(Lcom/yandex/mobile/ads/impl/jw0;)Lcom/yandex/mobile/ads/impl/i40;

    move-result-object v5

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/gm1$a;->d:Lcom/yandex/mobile/ads/impl/ds0;

    const/high16 v7, 0x100000

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/gm1;-><init>(Lcom/yandex/mobile/ads/impl/jw0;Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;Lcom/yandex/mobile/ads/impl/i40;Lcom/yandex/mobile/ads/impl/ds0;ILmgd;)V

    return-object v0
.end method
