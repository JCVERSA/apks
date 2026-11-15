.class public final Lrh/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lrh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrh/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lrh/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrh/b;->a:Lrh/b;

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
.method public final a(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "strings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lrh/e;->a:Lrh/e;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lrh/e;->b(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 2
    .line 3
    const-class v1, Lrh/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> setFullSearchModelSkipHotSplashAd() --> \u63a5\u6536\u5230\u4e86deeplink\u4e8b\u4ef6 --> \u5168\u641c\u7684\u65f6\u5019\u70ed\u542f\u52a8\u4e0d\u5c55\u793a\u70ed\u542f\u52a8\u5e7f\u544a"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v5, 0x9

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v3, 0x5

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v0 .. v6}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lrh/c;->a:Lrh/c;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lrh/c;->b(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c(Z)V
    .locals 7

    .line 1
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 2
    .line 3
    const-class v1, Lrh/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> setSkipShowAd() --> isPassed = "

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/16 v5, 0xd

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v0 .. v6}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lrh/e;->a:Lrh/e;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lrh/e;->c(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/v;->a:Lcom/transsion/ad/strategy/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/strategy/v;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
