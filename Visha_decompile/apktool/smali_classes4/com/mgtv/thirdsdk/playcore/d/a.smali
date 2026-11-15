.class public Lcom/mgtv/thirdsdk/playcore/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/playcore/d/a$b;,
        Lcom/mgtv/thirdsdk/playcore/d/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mgtv/task/m;

.field private c:Lokhttp3/OkHttpClient;

.field private d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

.field private e:Lcom/mgtv/thirdsdk/playcore/d/a$a;

.field private f:I

.field private g:Lcom/mgtv/thirdsdk/playcore/e;

.field private h:Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

.field private i:I

.field private j:[I


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/d/a$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->i:I

    new-instance v0, Lcom/mgtv/task/m;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->b:Lcom/mgtv/task/m;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->c:Lokhttp3/OkHttpClient;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/d/a$a;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/d/a$a;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->e:Lcom/mgtv/thirdsdk/playcore/d/a$a;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    const/4 p1, 0x7

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->j:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x9
        0x11
    .end array-data
.end method

.method private a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;",
            ">;I)",
            "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    .line 68
    invoke-virtual {p1}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    return-object p0
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;->info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;->info:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    .line 34
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/d/a$3;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/d/a$3;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/d/a;Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/d/a;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a([B)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/d/a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->j:[I

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/d/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->f:I

    return v0
.end method

.method private c()Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->g:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->e:Lcom/mgtv/thirdsdk/playcore/d/a$a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
    .locals 2

    .line 64
    new-instance p0, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;-><init>()V

    const/4 v0, -0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/bean/SubTitleData;->setLanguage(I)V

    .line 66
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$string;->subtitle_none:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/bean/SubTitleData;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    .line 71
    invoke-virtual {v1}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 72
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->i:I

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;",
            ">;)",
            "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 37
    const-string v2, "in"

    const-string v3, "th"

    const-string v4, "ms"

    const-string v5, "vi"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 38
    :cond_0
    iget v8, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->i:I

    const/16 v9, -0x3e7

    if-eq v8, v9, :cond_1

    .line 39
    invoke-direct {p0, p1, v8}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v8

    if-eqz v8, :cond_1

    return-object v8

    .line 40
    :cond_1
    invoke-static {}, Lcom/mgtv/ssp/utils/language/c;->a()Lcom/mgtv/ssp/utils/language/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mgtv/ssp/utils/language/c;->b()Ljava/util/Locale;

    move-result-object v8

    .line 41
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v9

    .line 43
    invoke-static {v8}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 44
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    return-object p0

    .line 45
    :cond_2
    const-string v10, "en"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 46
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    .line 47
    :cond_3
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "zh"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "ZH_HK"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    .line 48
    :cond_4
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    return-object p0

    :cond_5
    :goto_0
    const/4 v10, -0x1

    .line 49
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v10, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v10, v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v10, v6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    move v10, v7

    :goto_1
    packed-switch v10, :pswitch_data_0

    if-ne v9, v6, :cond_b

    const/4 v0, 0x5

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    .line 51
    :cond_a
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez v9, :cond_d

    const/4 v0, 0x4

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 53
    :cond_c
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    .line 54
    :cond_d
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    return-object p0

    .line 55
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    .line 56
    :cond_e
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    .line 57
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 58
    :cond_f
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 v0, 0x9

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    .line 60
    :cond_10
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 v0, 0x11

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 62
    :cond_11
    invoke-direct {p0, p1, v6}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    .line 63
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a()Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xd25 -> :sswitch_3
        0xda6 -> :sswitch_2
        0xe74 -> :sswitch_1
        0xeb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;Z)V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;Z)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->f:I

    :cond_0
    if-eqz p1, :cond_8

    .line 13
    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;->url:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->c()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p2

    .line 15
    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-nez p2, :cond_3

    .line 16
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a()V

    :cond_2
    return-void

    .line 18
    :cond_3
    iget-object v0, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->f:I

    if-gt v0, v1, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    iget-object p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 23
    :cond_5
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->h:Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    .line 24
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v0, Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->b:Lcom/mgtv/task/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v1

    new-instance v2, Lcom/mgtv/thirdsdk/playcore/d/a$2;

    invoke-direct {v2, p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$2;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a;Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void

    .line 27
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    if-eqz p0, :cond_7

    .line 28
    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a()V

    :cond_7
    return-void

    .line 29
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->d:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    if-eqz p0, :cond_9

    .line 30
    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a()V

    :cond_9
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/e;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->g:Lcom/mgtv/thirdsdk/playcore/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 7
    const-string v1, "videoId"

    invoke-virtual {v0, v1, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "abroad"

    invoke-virtual {v0, v1, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 9
    const-string p1, "src"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 10
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->b:Lcom/mgtv/task/m;

    invoke-static {}, Lcom/hunantv/imgo/net/b;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mgtv/thirdsdk/playcore/d/a$1;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/d/a$1;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public b()Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a;->h:Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    return-object p0
.end method
