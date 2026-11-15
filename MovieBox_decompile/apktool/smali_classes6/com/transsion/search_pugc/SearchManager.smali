.class public final Lcom/transsion/search_pugc/SearchManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/SearchManager$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/search_pugc/SearchManager$a;

.field private static final g:Lkotlin/Lazy;


# instance fields
.field private a:Lcom/tencent/mmkv/MMKV;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/SearchManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/SearchManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search_pugc/SearchManager;->f:Lcom/transsion/search_pugc/SearchManager$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/search_pugc/d;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/search_pugc/d;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsion/search_pugc/SearchManager;->g:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "kv_search_group"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "kv_search_work"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->c:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 18
    .line 19
    const-string v0, "kv_search_list"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/SearchManager;->q(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Lcom/transsion/search_pugc/SearchManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/SearchManager;->e()Lcom/transsion/search_pugc/SearchManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/search_pugc/SearchManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/SearchManager;->k(Lcom/transsion/search_pugc/SearchManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/search_pugc/SearchManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/SearchManager;->h(Lcom/transsion/search_pugc/SearchManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e()Lcom/transsion/search_pugc/SearchManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/SearchManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/search_pugc/SearchManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/SearchManager;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final h(Lcom/transsion/search_pugc/SearchManager;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "add"

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    const-string v3, "VS_SM"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/transsion/search_pugc/SearchManager;->d:I

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-eq v1, v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eq v1, v2, :cond_0

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    if-eq v1, v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->n()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, p0, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->o()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, p0, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method private final i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/j;->b:Lcom/transsion/search_pugc/j$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search_pugc/j$a;->a()Lcom/transsion/search_pugc/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/search_pugc/j;->d(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final k(Lcom/transsion/search_pugc/SearchManager;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/search_pugc/SearchManager;->d:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->n()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->o()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method private final m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lij/o;->a:Lij/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/o;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->b:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "kv_kids_search_group"

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method private final o()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->c:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "kv_kids_search_work"

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method private static final q(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search_pugc/SearchManager;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1, p0}, Lcom/transsion/search_pugc/a;->a(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget v0, p0, Lcom/transsion/search_pugc/SearchManager;->d:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/16 v3, 0x1e

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lt v0, v3, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-lt v0, v3, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-object p1, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    new-instance p1, Lcom/transsion/search_pugc/c;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/transsion/search_pugc/c;-><init>(Lcom/transsion/search_pugc/SearchManager;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/SearchManager;->i(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/search_pugc/e;-><init>(Lcom/transsion/search_pugc/SearchManager;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/search_pugc/SearchManager;->i(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 9

    .line 1
    iget v0, p0, Lcom/transsion/search_pugc/SearchManager;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, ""

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->n()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->a:Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/search_pugc/SearchManager;->o()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    :goto_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "findSearch"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v7, 0x4

    .line 54
    const/4 v8, 0x0

    .line 55
    const-string v4, "VS_SM"

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    const-string v0, "{}"

    .line 68
    .line 69
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v0, Lcom/transsion/search_pugc/SearchManager$findSearch$list$type$1;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/transsion/search_pugc/SearchManager$findSearch$list$type$1;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/util/List;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_2
    move-object v1, v0

    .line 101
    check-cast v1, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/transsion/search_pugc/SearchManager;->e:Ljava/util/List;

    .line 107
    .line 108
    return-object v0
.end method

.method public final p(ILcom/transsion/search_pugc/a;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lcom/transsion/search_pugc/SearchManager;->d:I

    .line 7
    .line 8
    new-instance p1, Lcom/transsion/search_pugc/b;

    .line 9
    .line 10
    invoke-direct {p1, p0, p2}, Lcom/transsion/search_pugc/b;-><init>(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/SearchManager;->i(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
