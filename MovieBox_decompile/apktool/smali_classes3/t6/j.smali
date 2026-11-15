.class public final Lt6/j;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lt6/j;

.field private static b:Ls6/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt6/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lt6/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt6/j;->a:Lt6/j;

    .line 7
    .line 8
    new-instance v0, Ls6/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ls6/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lt6/j;->b:Ls6/a;

    .line 14
    .line 15
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

.method public static final a()Ls6/a;
    .locals 1

    .line 1
    sget-object v0, Lt6/j;->b:Ls6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Ls6/a;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lt6/j;->b:Ls6/a;

    .line 7
    .line 8
    return-void
.end method
