.class public Lcom/hunantv/imgo/a/a;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hunantv/imgo/a/a;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    const-string v0, "pref_start_time"

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/util/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    new-instance v0, Lcom/hunantv/imgo/data/BigDataApplistData;

    invoke-direct {v0}, Lcom/hunantv/imgo/data/BigDataApplistData;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hunantv/imgo/data/BigDataApplistData;->getRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
