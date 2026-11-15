.class public final Lmh/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lmh/d;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmh/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lmh/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmh/d;->a:Lmh/d;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .line 11
    sput-object v1, Lmh/d;->b:[Ljava/lang/String;

    .line 12
    .line 13
    new-array v1, v0, [Ljava/lang/String;

    .line 14
    .line 15
    sput-object v1, Lmh/d;->c:[Ljava/lang/String;

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lmh/d;->d:[Ljava/lang/String;

    .line 20
    .line 21
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

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/d;->d:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->L([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/d;->b:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->L([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/d;->c:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->L([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static final d()Z
    .locals 1

    .line 1
    sget-object v0, Lmh/d;->d:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method


# virtual methods
.method public final e([Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "hosts"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lmh/d;->d:[Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
