.class public Lwq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field public a:Lokhttp3/EventListener$Factory;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/EventListener$Factory;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwq6;->d:Z

    iput-boolean v0, p0, Lwq6;->e:Z

    iput-boolean v0, p0, Lwq6;->f:Z

    const-string v0, "All"

    iput-object v0, p0, Lwq6;->h:Ljava/lang/String;

    iput-object p1, p0, Lwq6;->a:Lokhttp3/EventListener$Factory;

    iput p2, p0, Lwq6;->b:I

    iput-boolean p3, p0, Lwq6;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwq6;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lwq6;->f:Z

    return-void
.end method

.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 10

    iget-object v0, p0, Lwq6;->a:Lokhttp3/EventListener$Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lyr4;->d()Z

    move-result v0

    const-string v1, "NetworkMonitor"

    if-nez v0, :cond_3

    invoke-static {p1}, Lyr4;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lwlb;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "==== MonitorFactory host : ${host} does not matche ===="

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_2

    sget-object v2, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    sget-object p1, Lwlb;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "==== MonitorFactory host : ${host} matches ===="

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lvq6;

    iget v3, p0, Lwq6;->b:I

    iget-boolean v4, p0, Lwq6;->c:Z

    iget-object v5, p0, Lwq6;->h:Ljava/lang/String;

    iget-boolean v6, p0, Lwq6;->f:Z

    iget-object v7, p0, Lwq6;->g:Ljava/lang/String;

    iget-boolean v8, p0, Lwq6;->d:Z

    iget-boolean v9, p0, Lwq6;->e:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lvq6;-><init>(Lokhttp3/EventListener;IZLjava/lang/String;ZLjava/lang/String;ZZ)V

    return-object p1
.end method
