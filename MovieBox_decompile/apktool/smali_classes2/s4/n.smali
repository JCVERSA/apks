.class public Ls4/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lt4/c;


# instance fields
.field private final a:Ls4/e;

.field private final b:Ls4/o;

.field private final c:Ls4/g;

.field private final d:Ls4/b;

.field private final e:Ls4/d;

.field private final f:Ls4/b;

.field private final g:Ls4/b;

.field private final h:Ls4/b;

.field private final i:Ls4/b;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Ls4/n;-><init>(Ls4/e;Ls4/o;Ls4/g;Ls4/b;Ls4/d;Ls4/b;Ls4/b;Ls4/b;Ls4/b;)V

    return-void
.end method

.method public constructor <init>(Ls4/e;Ls4/o;Ls4/g;Ls4/b;Ls4/d;Ls4/b;Ls4/b;Ls4/b;Ls4/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls4/n;->j:Z

    .line 4
    iput-object p1, p0, Ls4/n;->a:Ls4/e;

    .line 5
    iput-object p2, p0, Ls4/n;->b:Ls4/o;

    .line 6
    iput-object p3, p0, Ls4/n;->c:Ls4/g;

    .line 7
    iput-object p4, p0, Ls4/n;->d:Ls4/b;

    .line 8
    iput-object p5, p0, Ls4/n;->e:Ls4/d;

    .line 9
    iput-object p6, p0, Ls4/n;->h:Ls4/b;

    .line 10
    iput-object p7, p0, Ls4/n;->i:Ls4/b;

    .line 11
    iput-object p8, p0, Ls4/n;->f:Ls4/b;

    .line 12
    iput-object p9, p0, Ls4/n;->g:Ls4/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lo4/c;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public b()Lp4/p;
    .locals 1

    .line 1
    new-instance v0, Lp4/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lp4/p;-><init>(Ls4/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c()Ls4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->a:Ls4/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ls4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->i:Ls4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ls4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->e:Ls4/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ls4/o;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->b:Ls4/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ls4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->d:Ls4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ls4/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->c:Ls4/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ls4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->f:Ls4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ls4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->g:Ls4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ls4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/n;->h:Ls4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls4/n;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ls4/n;->j:Z

    .line 2
    .line 3
    return-void
.end method
