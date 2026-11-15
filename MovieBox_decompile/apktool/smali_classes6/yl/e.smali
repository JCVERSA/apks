.class public final Lyl/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lyl/e;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyl/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lyl/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyl/e;->a:Lyl/e;

    .line 7
    .line 8
    new-instance v0, Lyl/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lyl/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lyl/e;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lyl/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lyl/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lyl/e;->c:Lkotlin/Lazy;

    .line 29
    .line 30
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

.method public static synthetic a()Lyl/a;
    .locals 1

    .line 1
    invoke-static {}, Lyl/e;->c()Lyl/a;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lyl/e;->e()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c()Lyl/a;
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
    const-class v1, Lyl/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private static final e()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    const-string v0, "mb_web_res"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    sget-object v0, Lyl/b;->a:Lyl/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyl/b;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
