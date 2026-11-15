.class public final Lcom/yandex/mobile/ads/impl/hz$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/rh;

.field private b:Lcom/yandex/mobile/ads/impl/hz$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:I

.field f:Lcom/yandex/mobile/ads/impl/iz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/rh;->d:Lcom/yandex/mobile/ads/impl/rh;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->a:Lcom/yandex/mobile/ads/impl/rh;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->e:I

    sget-object v0, Lcom/yandex/mobile/ads/impl/hz$d;->a:Lcom/yandex/mobile/ads/impl/iz;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->f:Lcom/yandex/mobile/ads/impl/iz;

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/hz$e;)Lcom/yandex/mobile/ads/impl/rh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->a:Lcom/yandex/mobile/ads/impl/rh;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/hz$e;)Lcom/yandex/mobile/ads/impl/hz$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->b:Lcom/yandex/mobile/ads/impl/hz$g;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/hz$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->c:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/hz$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->d:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/hz$e;)I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->e:I

    return p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/rh;)Lcom/yandex/mobile/ads/impl/hz$e;
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$e;->a:Lcom/yandex/mobile/ads/impl/rh;

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/hz;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->b:Lcom/yandex/mobile/ads/impl/hz$g;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/hz$g;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/yandex/mobile/ads/impl/uh;

    .line 4
    new-instance v3, Lcom/yandex/mobile/ads/impl/jy1;

    .line 5
    invoke-direct {v3, v1}, Lcom/yandex/mobile/ads/impl/jy1;-><init>(I)V

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/n12;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/n12;-><init>()V

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/hz$g;-><init>([Lcom/yandex/mobile/ads/impl/uh;Lcom/yandex/mobile/ads/impl/jy1;Lcom/yandex/mobile/ads/impl/n12;)V

    .line 7
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->b:Lcom/yandex/mobile/ads/impl/hz$g;

    .line 8
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/hz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/hz;-><init>(Lcom/yandex/mobile/ads/impl/hz$e;Ljid;)V

    return-object v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/hz$e;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->d:Z

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/hz$e;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->c:Z

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/hz$e;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/yandex/mobile/ads/impl/hz$e;->e:I

    return-object p0
.end method
