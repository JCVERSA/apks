.class public final Lcs/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcs/a;

.field private static b:Lws/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcs/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcs/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcs/a;->a:Lcs/a;

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
.method public final a(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    const-string v0, "createFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcs/a;->b:Lws/a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    const-string v1, "checkCreateFactory, null create"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const-string v3, "ShortTv"

    .line 16
    .line 17
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lws/a;

    .line 25
    .line 26
    sput-object p1, Lcs/a;->b:Lws/a;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final b()Lws/a;
    .locals 1

    .line 1
    sget-object v0, Lcs/a;->b:Lws/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroid/app/Application;Lws/a;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "factory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p2, Lcs/a;->b:Lws/a;

    .line 12
    .line 13
    sget-object p2, Lds/b;->a:Lds/b;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 16
    .line 17
    .line 18
    sget-object p2, Lns/b;->a:Lns/b$a;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lns/b$a;->c(Landroid/app/Application;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lzs/b;->a:Lzs/b$a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lzs/b$a;->b()Lzs/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Lzs/b;->init()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
