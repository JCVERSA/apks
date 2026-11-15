.class public final Lru/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final d:Lkotlin/Lazy;


# instance fields
.field public final a:Lru/i;

.field public final b:Lru/h;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/upgradesdk/net/b;->a:Lcom/transsion/upgradesdk/net/b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lru/d;->d:Lkotlin/Lazy;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lru/g;->b()Lretrofit2/k0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-class v1, Lru/i;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lru/i;

    .line 15
    .line 16
    iput-object v0, p0, Lru/d;->a:Lru/i;

    .line 17
    .line 18
    invoke-static {}, Lru/g;->a()Lretrofit2/k0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lru/h;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lru/h;

    .line 29
    .line 30
    iput-object v0, p0, Lru/d;->b:Lru/h;

    .line 31
    .line 32
    return-void
.end method
