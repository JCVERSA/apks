.class public final Lcom/cloud/h5update/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/h5update/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Lv6/d;

.field private f:Lv6/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/h5update/b$a;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Lcom/cloud/h5update/impl/UpdateParser;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/cloud/h5update/impl/UpdateParser;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/cloud/h5update/b$a;->e:Lv6/d;

    .line 17
    .line 18
    new-instance p1, Lcom/cloud/h5update/impl/UpdateChecker;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/cloud/h5update/impl/UpdateChecker;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/cloud/h5update/b$a;->f:Lv6/a;

    .line 24
    .line 25
    return-void
.end method

.method private final a()Lcom/cloud/h5update/b;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/h5update/b$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "[UpdateManager.Builder] : context == null"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/cloud/h5update/utils/l;->q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/cloud/h5update/b;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lcom/cloud/h5update/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/cloud/h5update/b$a;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->c(Lcom/cloud/h5update/b;Ljava/lang/ref/WeakReference;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/cloud/h5update/b$a;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->h(Lcom/cloud/h5update/b;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/h5update/b$a;->c:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->d(Lcom/cloud/h5update/b;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/h5update/b$a;->d:Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->g(Lcom/cloud/h5update/b;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/h5update/b$a;->f:Lv6/a;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->e(Lcom/cloud/h5update/b;Lv6/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloud/h5update/b$a;->e:Lv6/d;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->f(Lcom/cloud/h5update/b;Lv6/d;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/h5update/b$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/cloud/h5update/a;->a:Lcom/cloud/h5update/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/h5update/a;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x3

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    const-string v0, "https://api-test.byte-app.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/h5update/a;->a()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    const-string v0, "https://app-manage-api-static-pre.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "https://app-manage-api-static.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN"

    .line 34
    .line 35
    :goto_0
    iput-object v0, p0, Lcom/cloud/h5update/b$a;->b:Ljava/lang/String;

    .line 36
    .line 37
    :cond_3
    invoke-direct {p0}, Lcom/cloud/h5update/b$a;->a()Lcom/cloud/h5update/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/cloud/h5update/b;->k()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final c(Lv6/a;)Lcom/cloud/h5update/b$a;
    .locals 1

    .line 1
    const-string v0, "updateChecker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/h5update/b$a;->f:Lv6/a;

    .line 7
    .line 8
    return-object p0
.end method
