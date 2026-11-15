.class public Lcom/cloud/tupdate/net/network/HttpRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;,
        Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 .2\u00020\u0001:\u0002/0B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JS\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\t2\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00142\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u000c8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010 R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010 R\u0016\u0010\"\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010 R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010$R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001cR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010$R\u0016\u0010)\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010$R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00061"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/network/HttpRequestor;",
        "",
        "<init>",
        "()V",
        "",
        "ifTestMode",
        "Lzfb;",
        "c",
        "(Z)V",
        "",
        "appName",
        "appVersion",
        "",
        "versionCode",
        "b",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "language",
        "d",
        "(Ljava/lang/String;)V",
        "url",
        "",
        "headers",
        "params",
        "json",
        "Lcom/transsion/http/impl/StringCallback;",
        "callback",
        "a",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V",
        "I",
        "getUNKNOWN_ERROR_CODE",
        "()I",
        "UNKNOWN_ERROR_CODE",
        "Z",
        "ifCommonHeader",
        "loggable",
        "e",
        "Ljava/lang/String;",
        "f",
        "g",
        "h",
        "i",
        "country",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "j",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactory",
        "k",
        "Companion",
        "HttpRequestorHolder",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;


# instance fields
.field public final a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    const-string v0, "Accept-Timezone"

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->l:Ljava/lang/String;

    const-string v0, "Accept-Language"

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->m:Ljava/lang/String;

    const-string v0, "Accept-Country"

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->n:Ljava/lang/String;

    const-string v0, "appName"

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->o:Ljava/lang/String;

    const-string v0, "appVersion"

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->p:Ljava/lang/String;

    const-string/jumbo v0, "versionCode"

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->b:Z

    iput-boolean v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V
    .locals 10

    const-string v0, ""

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "update"

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/cloud/tupdate/net/utils/CollectionUtil;->a:Lcom/cloud/tupdate/net/utils/CollectionUtil;

    invoke-virtual {v1, p3}, Lcom/cloud/tupdate/net/utils/CollectionUtil;->d(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "params -> "

    invoke-static {v4, p3}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Lcom/cloud/tupdate/net/utils/CollectionUtil;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object v1, p1

    :goto_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->c:Z

    invoke-static {v4}, Lcom/cloud/tupdate/net/sign/HttpSigner;->g(Z)V

    const-string v4, "post"

    const-string v5, "application/json"

    invoke-static {v4, v0, v5, v1, v3}, Lcom/cloud/tupdate/net/sign/HttpSigner;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Les4;->b()Lnd8;

    move-result-object v5

    iget-boolean v6, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->d:Z

    invoke-virtual {v5, v6}, Lbt8;->c(Z)Lbt8;

    move-result-object v5

    check-cast v5, Lnd8;

    iget-object v6, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->j:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v5, v6}, Lbt8;->e(Ljavax/net/ssl/SSLSocketFactory;)Lbt8;

    move-result-object v5

    check-cast v5, Lnd8;

    invoke-virtual {v5, v3}, Lnd8;->h(Ljava/lang/String;)Lnd8;

    move-result-object v3

    const/16 v5, 0x3a98

    invoke-virtual {v3, v5}, Lbt8;->b(I)Lbt8;

    move-result-object v3

    check-cast v3, Lnd8;

    invoke-virtual {v3, v5}, Lbt8;->d(I)Lbt8;

    move-result-object v3

    check-cast v3, Lnd8;

    const-string/jumbo v5, "x-tr-signature"

    invoke-virtual {v3, v5, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    move-result-object v3

    check-cast v3, Lnd8;

    invoke-virtual {v3, v1}, Lbt8;->f(Ljava/lang/String;)Lbt8;

    move-result-object v1

    check-cast v1, Lnd8;

    sget-object v3, Lcom/cloud/tupdate/net/utils/CollectionUtil;->a:Lcom/cloud/tupdate/net/utils/CollectionUtil;

    invoke-virtual {v3, p2}, Lcom/cloud/tupdate/net/utils/CollectionUtil;->d(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "header -> "

    invoke-static {v4, p2}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->b:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/cloud/tupdate/net/network/HttpRequestor;->l:Ljava/lang/String;

    sget-object v4, Lcom/cloud/tupdate/net/utils/CollectionUtil;->a:Lcom/cloud/tupdate/net/utils/CollectionUtil;

    invoke-virtual {v4}, Lcom/cloud/tupdate/net/utils/CollectionUtil;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    iget-object v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "header -> appName = "

    iget-object v5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tupdate/net/network/HttpRequestor;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    :cond_2
    iget-object v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "header -> appVersion = "

    iget-object v5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->f:Ljava/lang/String;

    invoke-static {v4, v5}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tupdate/net/network/HttpRequestor;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    :cond_3
    iget v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->g:I

    if-lez v3, :cond_4

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "header -> versionCode = "

    iget v5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tupdate/net/network/HttpRequestor;->q:Ljava/lang/String;

    iget v4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    :cond_4
    iget-object v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "header -> language = "

    iget-object v5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tupdate/net/network/HttpRequestor;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->h:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    :cond_5
    iget-object v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v3

    const-string v4, "header -> country = "

    iget-object v5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->i:Ljava/lang/String;

    invoke-static {v4, v5}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tupdate/net/network/HttpRequestor;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lbt8;->a(Ljava/lang/String;Ljava/lang/String;)Lbt8;

    :cond_6
    invoke-virtual {v1}, Lnd8;->g()Lct8;

    move-result-object v1

    new-instance v9, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;

    move-object v2, v9

    move-object v3, p5

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;-><init>(Lcom/transsion/http/impl/StringCallback;Ljava/lang/String;Lcom/cloud/tupdate/net/network/HttpRequestor;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lct8;->a(Ldv4;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p2, p1}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    iget p0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->a:I

    invoke-virtual {p5, p0, v0, p1}, Lcom/transsion/http/impl/StringCallback;->D(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->f:Ljava/lang/String;

    iput p3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->g:I

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->c:Z

    invoke-static {p1}, Lcom/cloud/tupdate/net/sign/HttpSigner;->g(Z)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tupdate/net/network/HttpRequestor;->h:Ljava/lang/String;

    return-void
.end method
