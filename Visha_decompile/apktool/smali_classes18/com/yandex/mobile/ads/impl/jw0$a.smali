.class public final Lcom/yandex/mobile/ads/impl/jw0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/jw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/jw0$b$a;

.field private d:Lcom/yandex/mobile/ads/impl/jw0$d$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/w22;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/yandex/mobile/ads/impl/kk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/jw0$j;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/yandex/mobile/ads/impl/jw0$e$a;

.field private i:Lcom/yandex/mobile/ads/impl/jw0$h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw0$b$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jw0$b$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->c:Lcom/yandex/mobile/ads/impl/jw0$b$a;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw0$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/jw0$d$a;-><init>(Lskd;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->d:Lcom/yandex/mobile/ads/impl/jw0$d$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->e:Ljava/util/List;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->g:Lcom/yandex/mobile/ads/impl/kk0;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw0$e$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jw0$e$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->h:Lcom/yandex/mobile/ads/impl/jw0$e$a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/jw0$h;->d:Lcom/yandex/mobile/ads/impl/jw0$h;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->i:Lcom/yandex/mobile/ads/impl/jw0$h;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/jw0$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jw0$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jw0$a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/w22;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/jw0$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->e:Ljava/util/List;

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/jw0;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->d:Lcom/yandex/mobile/ads/impl/jw0$d$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    .line 3
    new-instance v11, Lcom/yandex/mobile/ads/impl/jw0$g;

    .line 4
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->e:Ljava/util/List;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->g:Lcom/yandex/mobile/ads/impl/kk0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/yandex/mobile/ads/impl/jw0$g;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$d;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kk0;Ljava/lang/Object;Lskd;)V

    move-object v15, v11

    goto :goto_0

    :cond_0
    move-object v15, v1

    .line 5
    :goto_0
    new-instance v2, Lcom/yandex/mobile/ads/impl/jw0;

    .line 6
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    :goto_1
    move-object v13, v3

    goto :goto_2

    :cond_1
    const-string v3, ""

    goto :goto_1

    :goto_2
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->c:Lcom/yandex/mobile/ads/impl/jw0$b$a;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v14, Lcom/yandex/mobile/ads/impl/jw0$c;

    invoke-direct {v14, v3, v1}, Lcom/yandex/mobile/ads/impl/jw0$c;-><init>(Lcom/yandex/mobile/ads/impl/jw0$b$a;Lskd;)V

    .line 9
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->h:Lcom/yandex/mobile/ads/impl/jw0$e$a;

    .line 10
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jw0$e$a;->a()Lcom/yandex/mobile/ads/impl/jw0$e;

    move-result-object v16

    .line 11
    sget-object v17, Lcom/yandex/mobile/ads/impl/mw0;->H:Lcom/yandex/mobile/ads/impl/mw0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/jw0$a;->i:Lcom/yandex/mobile/ads/impl/jw0$h;

    const/16 v19, 0x0

    move-object v12, v2

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v19}, Lcom/yandex/mobile/ads/impl/jw0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$c;Lcom/yandex/mobile/ads/impl/jw0$g;Lcom/yandex/mobile/ads/impl/jw0$e;Lcom/yandex/mobile/ads/impl/mw0;Lcom/yandex/mobile/ads/impl/jw0$h;Lskd;)V

    return-object v2
.end method

.method public final b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jw0$a;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw0$a;->a:Ljava/lang/String;

    return-object p0
.end method
