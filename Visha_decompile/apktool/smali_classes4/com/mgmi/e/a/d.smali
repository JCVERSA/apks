.class public Lcom/mgmi/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/e/a/c;
.implements Lcom/mgmi/e/a/f;


# instance fields
.field private a:Lcom/mgmi/e/a/c;

.field private b:Lcom/mgmi/e/a/f;

.field private c:Lcom/mgmi/g/a;

.field private d:Lcom/mgmi/net/bean/b;


# direct methods
.method public constructor <init>(Lcom/mgmi/e/a/c;Lcom/mgmi/e/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    iput-object p2, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    return-void
.end method


# virtual methods
.method public a(ILcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p1, p2, p3}, Lcom/mgmi/e/a/c;->a(ILcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/mgmi/model/i;Lcom/mgmi/e/g;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0, p1, p2, p3}, Lcom/mgmi/e/a/c;->a(ILcom/mgmi/model/i;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 22
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/model/VASTAd;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;IIZ)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/model/VASTAd;IIZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;ILjava/lang/String;JLcom/mgmi/e/g;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 12
    invoke-interface/range {v0 .. v6}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/model/VASTAd;ILjava/lang/String;JLcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;II)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 16
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/e/g;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootDataItem;Lcom/mgmi/e/g;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->a(Lcom/mgmi/net/bean/BootDataItem;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/b;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mgmi/e/a/d;->d:Lcom/mgmi/net/bean/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgmi/e/a/d;->c:Lcom/mgmi/g/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/g/a;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgmi/e/a/d;->d:Lcom/mgmi/net/bean/b;

    invoke-interface {p1, p0}, Lcom/mgmi/e/a/f;->a(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 14
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/mgmi/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/c;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/net/bean/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/e/a/d;->c:Lcom/mgmi/g/a;

    .line 2
    iget-object p0, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/f;->b(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->c(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/mgmi/net/bean/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/mgmi/e/a/d;->d:Lcom/mgmi/net/bean/b;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/f;->c(Lcom/mgmi/net/bean/b;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->d(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/mgmi/net/bean/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/mgmi/e/a/d;->d:Lcom/mgmi/net/bean/b;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/f;->d(Lcom/mgmi/net/bean/b;)V

    :cond_1
    return-void
.end method

.method public e(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->e(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/mgmi/net/bean/b;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/f;->e(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->f(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/mgmi/net/bean/b;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgmi/e/a/d;->b:Lcom/mgmi/e/a/f;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/mgmi/e/a/f;->f(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public h(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->h(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a/d;->a:Lcom/mgmi/e/a/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/mgmi/e/a/c;->i(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method
