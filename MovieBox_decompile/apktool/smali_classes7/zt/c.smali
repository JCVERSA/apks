.class public final Lzt/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzt/c$a;,
        Lzt/c$b;
    }
.end annotation


# static fields
.field public static final d:Lzt/c$a;

.field private static final e:Ljava/lang/String;

.field private static final f:Lkotlin/Lazy;


# instance fields
.field private final a:Lcom/transsion/transfer/impl/g;

.field private b:Lcom/transsion/transfer/impl/i;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzt/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzt/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzt/c;->d:Lzt/c$a;

    .line 8
    .line 9
    const-class v0, Lzt/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lzt/c;->e:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lzt/a;

    .line 18
    .line 19
    invoke-direct {v0}, Lzt/a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lzt/c;->f:Lkotlin/Lazy;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V
    .locals 1

    .line 1
    const-string v0, "fileHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 15
    .line 16
    iput-object p2, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 17
    .line 18
    new-instance p1, Lzt/b;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lzt/b;-><init>(Lzt/c;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lzt/c;->c:Lkotlin/Lazy;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lzt/c;->f()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lzt/c;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lzt/c;->g(Lzt/c;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lzt/c;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final d()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lzt/c;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final f()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final g(Lzt/c;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lzt/c$b;

    .line 7
    .line 8
    new-instance v2, Lcom/transsion/transfer/impl/server/service/b;

    .line 9
    .line 10
    iget-object v3, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 11
    .line 12
    iget-object v4, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Lcom/transsion/transfer/impl/server/service/b;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "get"

    .line 18
    .line 19
    const-string v4, "/client/getTransferFilesList"

    .line 20
    .line 21
    invoke-direct {v1, v3, v4, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v1, Lzt/c$b;

    .line 28
    .line 29
    new-instance v2, Lcom/transsion/transfer/impl/server/service/a;

    .line 30
    .line 31
    iget-object v4, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 32
    .line 33
    iget-object v5, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 34
    .line 35
    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/a;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 36
    .line 37
    .line 38
    const-string v4, "/client/fetchFile*"

    .line 39
    .line 40
    invoke-direct {v1, v3, v4, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lzt/c$b;

    .line 47
    .line 48
    new-instance v2, Lcom/transsion/transfer/impl/server/service/d;

    .line 49
    .line 50
    iget-object v4, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 51
    .line 52
    iget-object v5, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 53
    .line 54
    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/d;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "/client/notifyServerCreate"

    .line 58
    .line 59
    invoke-direct {v1, v3, v4, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Lzt/c$b;

    .line 66
    .line 67
    new-instance v2, Lcom/transsion/transfer/impl/server/service/c;

    .line 68
    .line 69
    iget-object v4, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 70
    .line 71
    iget-object v5, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 72
    .line 73
    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/c;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 74
    .line 75
    .line 76
    const-string v4, "/client/notifyClientClose"

    .line 77
    .line 78
    invoke-direct {v1, v3, v4, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance v1, Lzt/c$b;

    .line 85
    .line 86
    new-instance v2, Lcom/transsion/transfer/impl/server/service/g;

    .line 87
    .line 88
    iget-object v4, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 89
    .line 90
    iget-object v5, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 91
    .line 92
    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/g;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 93
    .line 94
    .line 95
    const-string v4, "/client/notifyServerSendComplete"

    .line 96
    .line 97
    invoke-direct {v1, v3, v4, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    new-instance v1, Lzt/c$b;

    .line 104
    .line 105
    new-instance v2, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;

    .line 106
    .line 107
    iget-object v3, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 108
    .line 109
    iget-object v4, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 110
    .line 111
    invoke-direct {v2, v3, v4}, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 112
    .line 113
    .line 114
    const-string v3, "post"

    .line 115
    .line 116
    const-string v4, "/client/notifyFileTaskFinish"

    .line 117
    .line 118
    invoke-direct {v1, v3, v4, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v1, Lzt/c$b;

    .line 125
    .line 126
    new-instance v2, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;

    .line 127
    .line 128
    iget-object v4, p0, Lzt/c;->a:Lcom/transsion/transfer/impl/g;

    .line 129
    .line 130
    iget-object p0, p0, Lzt/c;->b:Lcom/transsion/transfer/impl/i;

    .line 131
    .line 132
    invoke-direct {v2, v4, p0}, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 133
    .line 134
    .line 135
    const-string p0, "/client/notifyFileTaskError"

    .line 136
    .line 137
    invoke-direct {v1, v3, p0, v2}, Lzt/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    return-object v0
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 1

    .line 1
    invoke-direct {p0}, Lzt/c;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
