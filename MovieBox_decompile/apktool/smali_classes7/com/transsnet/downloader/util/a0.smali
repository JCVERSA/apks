.class public final Lcom/transsnet/downloader/util/a0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/util/a0;

.field private static final b:Lkotlin/Lazy;

.field private static c:I

.field private static d:I

.field private static final e:I

.field private static final f:I

.field private static g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final h:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/util/a0;->a:Lcom/transsnet/downloader/util/a0;

    .line 7
    .line 8
    new-instance v0, Lcom/transsnet/downloader/util/z;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsnet/downloader/util/z;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsnet/downloader/util/a0;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    const/16 v0, 0x14

    .line 20
    .line 21
    sput v0, Lcom/transsnet/downloader/util/a0;->e:I

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    sput v0, Lcom/transsnet/downloader/util/a0;->f:I

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/transsnet/downloader/util/a0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    new-instance v0, Landroidx/lifecycle/b0;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/transsnet/downloader/util/a0;->h:Landroidx/lifecycle/b0;

    .line 39
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/util/a0;->f()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b()I
    .locals 3

    .line 1
    sget v0, Lcom/transsnet/downloader/util/a0;->c:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "shorts_unlock_config"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "maxUnlockCount"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget v0, Lcom/transsnet/downloader/util/a0;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    sget v0, Lcom/transsnet/downloader/util/a0;->e:I

    .line 42
    .line 43
    :goto_0
    sput v0, Lcom/transsnet/downloader/util/a0;->c:I

    .line 44
    .line 45
    :cond_1
    sget v0, Lcom/transsnet/downloader/util/a0;->c:I

    .line 46
    .line 47
    return v0
.end method

.method private final d()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/a0;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final f()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    const-string v0, "short_tv"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mmkvWithID(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsnet/downloader/util/a0;->d()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0}, Lcom/transsnet/downloader/util/a0;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final e()I
    .locals 3

    .line 1
    sget v0, Lcom/transsnet/downloader/util/a0;->d:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "shorts_unlock_config"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "perUnlockCount"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget v0, Lcom/transsnet/downloader/util/a0;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    sget v0, Lcom/transsnet/downloader/util/a0;->f:I

    .line 42
    .line 43
    :goto_0
    sput v0, Lcom/transsnet/downloader/util/a0;->d:I

    .line 44
    .line 45
    :cond_1
    sget v0, Lcom/transsnet/downloader/util/a0;->d:I

    .line 46
    .line 47
    return v0
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsnet/downloader/util/a0;->d()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/transsnet/downloader/util/a0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
