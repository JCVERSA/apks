.class public final Lkzh;
.super Lazh;
.source "SourceFile"


# instance fields
.field public b:Lk3i;

.field public c:Lk3i;

.field public d:Lgzh;

.field public e:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Lczh;

    invoke-direct {v0}, Lczh;-><init>()V

    new-instance v1, Ldzh;

    invoke-direct {v1}, Ldzh;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lkzh;-><init>(Lk3i;Lk3i;Lgzh;)V

    return-void
.end method

.method public constructor <init>(Lk3i;Lk3i;Lgzh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lazh;-><init>()V

    iput-object p1, p0, Lkzh;->b:Lk3i;

    iput-object p2, p0, Lkzh;->c:Lk3i;

    iput-object p3, p0, Lkzh;->d:Lgzh;

    return-void
.end method

.method public static synthetic d()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {}, Lbzh;->a()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lkzh;->e:Ljava/net/HttpURLConnection;

    invoke-static {p0}, Lkzh;->o(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public k()Ljava/net/HttpURLConnection;
    .locals 2

    iget-object v0, p0, Lkzh;->b:Lk3i;

    invoke-interface {v0}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lkzh;->c:Lk3i;

    invoke-interface {v1}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lbzh;->b(II)V

    iget-object v0, p0, Lkzh;->d:Lgzh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lgzh;->zza()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lkzh;->e:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public n(Lgzh;II)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Lezh;

    invoke-direct {v0, p2}, Lezh;-><init>(I)V

    iput-object v0, p0, Lkzh;->b:Lk3i;

    new-instance p2, Lfzh;

    invoke-direct {p2, p3}, Lfzh;-><init>(I)V

    iput-object p2, p0, Lkzh;->c:Lk3i;

    iput-object p1, p0, Lkzh;->d:Lgzh;

    invoke-virtual {p0}, Lkzh;->k()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method
