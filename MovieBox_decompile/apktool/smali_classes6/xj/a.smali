.class public final Lxj/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lxj/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxj/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lxj/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxj/a;->a:Lxj/a;

    .line 7
    .line 8
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
.method public final a(Landroid/content/Context;)Lcom/transsion/compressor/image/h$a;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/compressor/image/h;->h(Landroid/content/Context;)Lcom/transsion/compressor/image/h$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "with(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
