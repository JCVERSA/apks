.class public final Lmh/l;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lmh/l;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmh/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lmh/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmh/l;->a:Lmh/l;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .line 11
    sput-object v1, Lmh/l;->b:[Ljava/lang/String;

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    .line 15
    sput-object v0, Lmh/l;->c:[Ljava/lang/String;

    .line 16
    .line 17
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
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/l;->b:[Ljava/lang/String;

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
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/l;->c:[Ljava/lang/String;

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
