.class public final Lsw/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lsw/a;

.field private static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsw/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lsw/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsw/a;->a:Lsw/a;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lsw/a;->b:Ljava/util/Set;

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


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/wrapperad/install/b;->a:Lcom/transsion/wrapperad/install/b;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/install/b;->b(Landroid/app/Application;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
