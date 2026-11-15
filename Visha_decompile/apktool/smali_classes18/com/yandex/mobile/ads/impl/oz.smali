.class public final Lcom/yandex/mobile/ads/impl/oz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/oz$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/yandex/mobile/ads/impl/tv;

.field private d:Lcom/yandex/mobile/ads/impl/hb0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/yandex/mobile/ads/impl/sg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/ds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/yandex/mobile/ads/impl/tv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/yandex/mobile/ads/impl/z72;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/yandex/mobile/ads/impl/rv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/yandex/mobile/ads/impl/sn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/yandex/mobile/ads/impl/tv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oz;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/tv;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oz;->c:Lcom/yandex/mobile/ads/impl/tv;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oz;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/tv;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/d72;

    invoke-interface {p1, v1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    if-nez v0, :cond_12

    .line 21
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 25
    :cond_0
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/yandex/mobile/ads/impl/sg;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/sg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    .line 28
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    .line 30
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto/16 :goto_3

    .line 31
    :cond_2
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->f:Lcom/yandex/mobile/ads/impl/ds;

    if-nez v0, :cond_3

    .line 33
    new-instance v0, Lcom/yandex/mobile/ads/impl/ds;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ds;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->f:Lcom/yandex/mobile/ads/impl/ds;

    .line 34
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->f:Lcom/yandex/mobile/ads/impl/ds;

    .line 36
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto/16 :goto_3

    .line 37
    :cond_4
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->g:Lcom/yandex/mobile/ads/impl/tv;

    if-nez v0, :cond_5

    .line 39
    :try_start_0
    const-string v0, "com.monetization.ads.exo.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/tv;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->g:Lcom/yandex/mobile/ads/impl/tv;

    .line 41
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error instantiating RTMP extension"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 43
    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->g:Lcom/yandex/mobile/ads/impl/tv;

    if-nez v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->c:Lcom/yandex/mobile/ads/impl/tv;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->g:Lcom/yandex/mobile/ads/impl/tv;

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->g:Lcom/yandex/mobile/ads/impl/tv;

    .line 47
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto/16 :goto_3

    .line 48
    :cond_6
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 49
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->h:Lcom/yandex/mobile/ads/impl/z72;

    if-nez v0, :cond_7

    .line 50
    new-instance v0, Lcom/yandex/mobile/ads/impl/z72;

    const/4 v1, 0x0

    .line 51
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/z72;-><init>(I)V

    .line 52
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->h:Lcom/yandex/mobile/ads/impl/z72;

    .line 53
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->h:Lcom/yandex/mobile/ads/impl/z72;

    .line 55
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto/16 :goto_3

    .line 56
    :cond_8
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 57
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->i:Lcom/yandex/mobile/ads/impl/rv;

    if-nez v0, :cond_9

    .line 58
    new-instance v0, Lcom/yandex/mobile/ads/impl/rv;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rv;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->i:Lcom/yandex/mobile/ads/impl/rv;

    .line 59
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 60
    :cond_9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->i:Lcom/yandex/mobile/ads/impl/rv;

    .line 61
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto :goto_3

    .line 62
    :cond_a
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 63
    :cond_b
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->c:Lcom/yandex/mobile/ads/impl/tv;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto :goto_3

    .line 64
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->j:Lcom/yandex/mobile/ads/impl/sn1;

    if-nez v0, :cond_d

    .line 65
    new-instance v0, Lcom/yandex/mobile/ads/impl/sn1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/sn1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->j:Lcom/yandex/mobile/ads/impl/sn1;

    .line 66
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 67
    :cond_d
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->j:Lcom/yandex/mobile/ads/impl/sn1;

    .line 68
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto :goto_3

    .line 69
    :cond_e
    :goto_2
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 70
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    if-nez v0, :cond_f

    .line 72
    new-instance v0, Lcom/yandex/mobile/ads/impl/sg;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/sg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    .line 73
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 74
    :cond_f
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    .line 75
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto :goto_3

    .line 76
    :cond_10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->d:Lcom/yandex/mobile/ads/impl/hb0;

    if-nez v0, :cond_11

    .line 77
    new-instance v0, Lcom/yandex/mobile/ads/impl/hb0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hb0;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->d:Lcom/yandex/mobile/ads/impl/hb0;

    .line 78
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oz;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 79
    :cond_11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->d:Lcom/yandex/mobile/ads/impl/hb0;

    .line 80
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    .line 81
    :goto_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/xv;)J

    move-result-wide p0

    return-wide p0

    .line 82
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d72;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->c:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->d:Lcom/yandex/mobile/ads/impl/hb0;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/jk;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->e:Lcom/yandex/mobile/ads/impl/sg;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/jk;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->f:Lcom/yandex/mobile/ads/impl/ds;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/jk;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->g:Lcom/yandex/mobile/ads/impl/tv;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->h:Lcom/yandex/mobile/ads/impl/z72;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/jk;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->i:Lcom/yandex/mobile/ads/impl/rv;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/jk;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 18
    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz;->j:Lcom/yandex/mobile/ads/impl/sn1;

    if-eqz p0, :cond_6

    .line 19
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    :cond_6
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/tv;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->getUri()Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz;->k:Lcom/yandex/mobile/ads/impl/tv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/qv;->read([BII)I

    move-result p0

    return p0
.end method
