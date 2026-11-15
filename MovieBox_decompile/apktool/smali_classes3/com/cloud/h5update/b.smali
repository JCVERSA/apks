.class public final Lcom/cloud/h5update/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/b$b;,
        Lcom/cloud/h5update/b$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/cloud/h5update/b$b;

.field private static h:Lcom/cloud/h5update/bean/UpdateEntity;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Lv6/a;

.field private f:Lv6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/h5update/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/h5update/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/h5update/b;-><init>()V

    return-void
.end method

.method public static final synthetic b()Lcom/cloud/h5update/bean/UpdateEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lcom/cloud/h5update/b;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d(Lcom/cloud/h5update/b;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/b;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lcom/cloud/h5update/b;Lv6/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/b;->e:Lv6/a;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lcom/cloud/h5update/b;Lv6/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/b;->f:Lv6/d;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/cloud/h5update/b;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/b;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/cloud/h5update/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/h5update/utils/l;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/h5update/b;->i()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/h5update/b;->e:Lv6/a;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v1, v0, p0}, Lv6/a;->noNetWork(Ljava/lang/String;Lv6/c;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/cloud/h5update/bean/UpdateEntity;
    .locals 2

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/h5update/b;->f:Lv6/d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Lv6/d;->a(Ljava/lang/String;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sput-object p1, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 20
    .line 21
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lv6/b;->onGetEntity(Lcom/cloud/h5update/bean/UpdateEntity;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_1
    sget-object p1, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 46
    .line 47
    return-object p1
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/h5update/b;->e:Lv6/a;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/cloud/h5update/b;->c:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/cloud/h5update/b;->d:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3, p0}, Lv6/a;->checkVersion(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lv6/c;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 31
    .line 32
    const-string v1, "[UpdateManager] : mUpdateUrl \u4e0d\u80fd\u4e3a\u7a7a"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/h5update/b;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
