.class public final Lcom/transsion/shorttv_pugc/utils/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/shorttv_pugc/utils/h;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static d:I

.field private static e:I

.field private static final f:I

.field private static final g:I

.field private static h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static i:Lvs/b;

.field private static final j:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/utils/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/utils/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->a:Lcom/transsion/shorttv_pugc/utils/h;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/shorttv_pugc/utils/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/utils/f;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/shorttv_pugc/utils/g;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/utils/g;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    const/16 v0, 0x14

    .line 31
    .line 32
    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->f:I

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->g:I

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    .line 44
    new-instance v0, Landroidx/lifecycle/b0;

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->j:Landroidx/lifecycle/b0;

    .line 50
    .line 51
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
    invoke-static {}, Lcom/transsion/shorttv_pugc/utils/h;->j()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv_pugc/utils/h;->i()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final c()Lvs/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->i:Lvs/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcs/a;->a:Lcs/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcs/a;->b()Lws/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lws/a;->h()Lvs/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->i:Lvs/b;

    .line 20
    .line 21
    :cond_1
    return-object v0
.end method

.method private final d()I
    .locals 2

    .line 1
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->d:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/utils/h;->c()Lvs/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lvs/b;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "maxUnlockCount"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->f:I

    .line 33
    .line 34
    :goto_0
    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->d:I

    .line 35
    .line 36
    :cond_1
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->d:I

    .line 37
    .line 38
    return v0
.end method

.method private static final i()Lcom/tencent/mmkv/MMKV;
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

.method private static final j()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    const-string v0, "kv_app"

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
.method public final e(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/utils/h;->f()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/utils/h;->d()I

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

.method public final f()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->b:Lkotlin/Lazy;

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

.method public final g()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->c:Lkotlin/Lazy;

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

.method public final h()I
    .locals 2

    .line 1
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->e:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/utils/h;->c()Lvs/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lvs/b;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "perUnlockCount"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->g:I

    .line 33
    .line 34
    :goto_0
    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->e:I

    .line 35
    .line 36
    :cond_1
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->e:I

    .line 37
    .line 38
    return v0
.end method

.method public final k(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/utils/h;->f()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/transsion/shorttv_pugc/utils/h;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

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
