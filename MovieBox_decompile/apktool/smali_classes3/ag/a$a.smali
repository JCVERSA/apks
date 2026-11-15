.class public final Lag/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lag/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    invoke-static {}, Lag/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final b()Lag/b;
    .locals 1

    .line 1
    invoke-static {}, Lag/a;->b()Lag/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lag/a$a;->b()Lag/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lag/b;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "net_proxy_tag"

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :cond_1
    const/4 v1, 0x1

    .line 26
    :cond_2
    return v1
.end method

.method public final d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lag/a$a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lag/a$a;->b()Lag/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lag/b;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_1
    return v1
.end method

.method public final e(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lag/a;->c(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Landroid/app/Application;Lag/b;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lag/a$a;->e(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lag/a$a;->i(Lag/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lag/a;->d(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lag/a$a;->g(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(Lag/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lag/a;->e(Lag/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
