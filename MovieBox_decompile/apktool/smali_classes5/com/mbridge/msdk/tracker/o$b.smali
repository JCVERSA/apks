.class final Lcom/mbridge/msdk/tracker/o$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/tracker/network/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/r;

.field private final b:Lcom/mbridge/msdk/tracker/t;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/r;Lcom/mbridge/msdk/tracker/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/o$b;->a:Lcom/mbridge/msdk/tracker/r;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/o$b;->b:Lcom/mbridge/msdk/tracker/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/network/b0;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/o$b;->a:Lcom/mbridge/msdk/tracker/r;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :try_start_0
    const-string v1, ""

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/b0;->a()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/b0;->b()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v2, v0

    .line 30
    move-object p1, v1

    .line 31
    move v1, v2

    .line 32
    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/tracker/o$b;->a:Lcom/mbridge/msdk/tracker/r;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/o$b;->b:Lcom/mbridge/msdk/tracker/t;

    .line 35
    .line 36
    const-string v5, "volleyError:%s,responseCode:%s,errorMessage:%s"

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v6, 0x3

    .line 47
    new-array v6, v6, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v1, v6, v0

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    aput-object v2, v6, v1

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    aput-object p1, v6, v1

    .line 56
    .line 57
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v3, v4, v0, p1}, Lcom/mbridge/msdk/tracker/r;->a(Lcom/mbridge/msdk/tracker/t;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    const-string v0, "TrackManager"

    .line 70
    .line 71
    const-string v1, "onErrorResponse error"

    .line 72
    .line 73
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_2
    return-void
.end method
