.class public final Lcom/yandex/mobile/ads/impl/hs0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hs0$b;,
        Lcom/yandex/mobile/ads/impl/hs0$c;,
        Lcom/yandex/mobile/ads/impl/hs0$d;,
        Lcom/yandex/mobile/ads/impl/hs0$a;,
        Lcom/yandex/mobile/ads/impl/hs0$e;,
        Lcom/yandex/mobile/ads/impl/hs0$f;,
        Lcom/yandex/mobile/ads/impl/hs0$g;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/mobile/ads/impl/hs0$b;

.field public static final e:Lcom/yandex/mobile/ads/impl/hs0$b;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/yandex/mobile/ads/impl/hs0$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hs0$c<",
            "+",
            "Lcom/yandex/mobile/ads/impl/hs0$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/hs0$b;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/hs0$b;-><init>(IJLaid;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hs0;->d:Lcom/yandex/mobile/ads/impl/hs0$b;

    new-instance v0, Lcom/yandex/mobile/ads/impl/hs0$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/hs0$b;-><init>(IJLaid;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hs0;->e:Lcom/yandex/mobile/ads/impl/hs0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayer:Loader:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/f92;->d(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hs0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(JZ)Lcom/yandex/mobile/ads/impl/hs0$b;
    .locals 2

    .line 16
    new-instance v0, Lcom/yandex/mobile/ads/impl/hs0$b;

    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p2, p0, p1, v1}, Lcom/yandex/mobile/ads/impl/hs0$b;-><init>(IJLaid;)V

    return-object v0
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/hs0;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/hs0;)Lcom/yandex/mobile/ads/impl/hs0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/hs0;Lcom/yandex/mobile/ads/impl/hs0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    return-void
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/hs0;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hs0;->c:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/hs0$d;Lcom/yandex/mobile/ads/impl/hs0$a;I)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/yandex/mobile/ads/impl/hs0$d;",
            ">(TT;",
            "Lcom/yandex/mobile/ads/impl/hs0$a<",
            "TT;>;I)J"
        }
    .end annotation

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v8, 0x0

    .line 19
    iput-object v8, p0, Lcom/yandex/mobile/ads/impl/hs0;->c:Ljava/io/IOException;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 21
    new-instance v11, Lcom/yandex/mobile/ads/impl/hs0$c;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/hs0$c;-><init>(Lcom/yandex/mobile/ads/impl/hs0;Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/hs0$d;Lcom/yandex/mobile/ads/impl/hs0$a;IJ)V

    .line 22
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    if-nez p1, :cond_0

    .line 23
    iput-object v11, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    .line 24
    invoke-static {v11, v8}, Lcom/yandex/mobile/ads/impl/hs0$c;->c(Lcom/yandex/mobile/ads/impl/hs0$c;Ljava/io/IOException;)V

    .line 25
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-wide v9

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/hs0$c;->a(Z)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs0;->c:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    if-eqz p0, :cond_2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 7
    iget p1, p0, Lcom/yandex/mobile/ads/impl/hs0$c;->b:I

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hs0$c;->a(Lcom/yandex/mobile/ads/impl/hs0$c;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hs0$c;->b(Lcom/yandex/mobile/ads/impl/hs0$c;)I

    move-result p0

    if-gt p0, p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    throw v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hs0$e;)V
    .locals 2
    .param p1    # Lcom/yandex/mobile/ads/impl/hs0$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/hs0$c;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/yandex/mobile/ads/impl/hs0$f;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/hs0$f;-><init>(Lcom/yandex/mobile/ads/impl/hs0$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hs0;->c:Ljava/io/IOException;

    return-void
.end method

.method public final c()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->c:Ljava/io/IOException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs0;->b:Lcom/yandex/mobile/ads/impl/hs0$c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
