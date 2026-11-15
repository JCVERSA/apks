.class Lpb/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lmb/a$b;


# instance fields
.field private a:Lrb/b;

.field private b:Lrb/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(Lrb/b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p0, p1, p2}, Lrb/b;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "_o"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "clx"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lpb/e;->a:Lrb/b;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lpb/e;->b:Lrb/b;

    .line 19
    .line 20
    :goto_0
    invoke-static {v0, p1, p2}, Lpb/e;->b(Lrb/b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    aput-object p2, v2, p1

    .line 19
    .line 20
    const-string p1, "Analytics listener received message. ID: %d, Extras: %s"

    .line 21
    .line 22
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lqb/g;->i(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p1, "name"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const-string v0, "params"

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    new-instance p2, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-direct {p0, p1, p2}, Lpb/e;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public d(Lrb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpb/e;->b:Lrb/b;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lrb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpb/e;->a:Lrb/b;

    .line 2
    .line 3
    return-void
.end method
