.class public Lcom/mgtv/thirdsdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgtv/thirdsdk/a/a/a;

.field private b:Lcom/mgtv/thirdsdk/a/b/a;

.field private c:Lcom/mgtv/thirdsdk/a/b/b;

.field private d:Lcom/mgtv/thirdsdk/a/b;

.field private e:Lcom/mgtv/thirdsdk/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgtv/thirdsdk/a/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/a/a$1;-><init>(Lcom/mgtv/thirdsdk/a/a;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->e:Lcom/mgtv/thirdsdk/a/a/b;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a;->a:Lcom/mgtv/thirdsdk/a/a/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a;->c:Lcom/mgtv/thirdsdk/a/b/b;

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/a/b/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/mgtv/thirdsdk/a/b;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/a/b;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    .line 3
    new-instance v0, Lcom/mgtv/thirdsdk/a/b/a;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    invoke-direct {v0, v1, p1}, Lcom/mgtv/thirdsdk/a/b/a;-><init>(Lcom/mgtv/thirdsdk/a/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->b:Lcom/mgtv/thirdsdk/a/b/a;

    .line 4
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/a;->e:Lcom/mgtv/thirdsdk/a/a/b;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/a/b/a;->a(Lcom/mgtv/thirdsdk/a/a/b;)V

    .line 5
    new-instance v0, Lcom/mgtv/thirdsdk/a/b/b;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    invoke-direct {v0, v1, p1}, Lcom/mgtv/thirdsdk/a/b/b;-><init>(Lcom/mgtv/thirdsdk/a/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->c:Lcom/mgtv/thirdsdk/a/b/b;

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a;->e:Lcom/mgtv/thirdsdk/a/a/b;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/a/b;)V

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/a/a/a;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/a;->a:Lcom/mgtv/thirdsdk/a/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a;->a:Lcom/mgtv/thirdsdk/a/a/a;

    if-eqz p0, :cond_0

    .line 9
    const-string p1, "110000"

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/a;->onDlnaError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    iput p2, v0, Lcom/mgtv/thirdsdk/a/b;->d:I

    .line 11
    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    iget p2, p1, Lcom/mgtv/thirdsdk/a/b;->d:I

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/a/b;->a(I)V

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/a/a;->a()V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    iput-object p1, v0, Lcom/mgtv/thirdsdk/a/b;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/a/a;->b(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a;->d:Lcom/mgtv/thirdsdk/a/b;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/a/b;->c()V

    .line 3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a;->b:Lcom/mgtv/thirdsdk/a/b/a;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/a/b/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
