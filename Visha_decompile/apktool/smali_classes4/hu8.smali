.class public final Lhu8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Throwable;

.field public c:Z

.field public d:Lokhttp3/Call;

.field public e:Lokhttp3/Response;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;
    .locals 1

    new-instance v0, Lhu8;

    invoke-direct {v0}, Lhu8;-><init>()V

    invoke-virtual {v0, p0}, Lhu8;->j(Z)V

    invoke-virtual {v0, p1}, Lhu8;->k(Lokhttp3/Call;)V

    invoke-virtual {v0, p2}, Lhu8;->l(Lokhttp3/Response;)V

    invoke-virtual {v0, p3}, Lhu8;->i(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lhu8;
    .locals 1

    new-instance v0, Lhu8;

    invoke-direct {v0}, Lhu8;-><init>()V

    invoke-virtual {v0, p0}, Lhu8;->j(Z)V

    invoke-virtual {v0, p1}, Lhu8;->h(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lhu8;->k(Lokhttp3/Call;)V

    invoke-virtual {v0, p3}, Lhu8;->l(Lokhttp3/Response;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhu8;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lhu8;->e:Lokhttp3/Response;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lhu8;->b:Ljava/lang/Throwable;

    return-object p0
.end method

.method public e()Lokhttp3/Response;
    .locals 0

    iget-object p0, p0, Lhu8;->e:Lokhttp3/Response;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lhu8;->b:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhu8;->e:Lokhttp3/Response;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lhu8;->a:Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lhu8;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lhu8;->c:Z

    return-void
.end method

.method public k(Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lhu8;->d:Lokhttp3/Call;

    return-void
.end method

.method public l(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lhu8;->e:Lokhttp3/Response;

    return-void
.end method
