.class public final Lmq/b;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "ActionViewModel"

    .line 10
    .line 11
    iput-object p1, p0, Lmq/b;->b:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Landroidx/lifecycle/b0;

    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lmq/b;->c:Landroidx/lifecycle/b0;

    .line 19
    .line 20
    new-instance p1, Landroidx/lifecycle/b0;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lmq/b;->d:Landroidx/lifecycle/b0;

    .line 26
    .line 27
    new-instance p1, Lmq/a;

    .line 28
    .line 29
    invoke-direct {p1}, Lmq/a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lmq/b;->e:Lkotlin/Lazy;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic c()Lmq/c;
    .locals 1

    .line 1
    invoke-static {}, Lmq/b;->e()Lmq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lmq/b;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmq/b;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final e()Lmq/c;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lmq/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmq/c;

    .line 14
    .line 15
    return-object v0
.end method

.method private final f()Lmq/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lmq/b;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmq/c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lmq/b;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lcom/transsion/share/bean/ShareType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "shareType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "postType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "subjectId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "uid"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "scene"

    .line 22
    .line 23
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p4, "type"

    .line 42
    .line 43
    invoke-virtual {v2, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "id"

    .line 50
    .line 51
    invoke-virtual {v2, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    const-string p4, "toString(...)"

    .line 61
    .line 62
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object p4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 66
    .line 67
    const-string p5, "application/json"

    .line 68
    .line 69
    invoke-virtual {p4, p5}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p2, p3, p4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p0}, Lmq/b;->f()Lmq/c;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    sget-object p4, Lgg/a;->a:Lgg/a$a;

    .line 82
    .line 83
    invoke-virtual {p4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-interface {p3, p4, p2}, Lmq/c;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    sget-object p3, Ldg/d;->a:Ldg/d;

    .line 92
    .line 93
    invoke-virtual {p3}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    new-instance p3, Lmq/b$a;

    .line 102
    .line 103
    invoke-direct {p3, p0, p1}, Lmq/b$a;-><init>(Lmq/b;Lcom/transsion/share/bean/ShareType;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
