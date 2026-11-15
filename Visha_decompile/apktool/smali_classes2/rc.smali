.class public Lrc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Lgc;

.field public final b:Ltc;

.field public final c:Ljc;

.field public final d:Ldc;

.field public final e:Lfc;

.field public final f:Ldc;

.field public final g:Ldc;

.field public final h:Ldc;

.field public final i:Ldc;

.field public j:Z


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
    invoke-direct/range {v0 .. v9}, Lrc;-><init>(Lgc;Ltc;Ljc;Ldc;Lfc;Ldc;Ldc;Ldc;Ldc;)V

    return-void
.end method

.method public constructor <init>(Lgc;Ltc;Ljc;Ldc;Lfc;Ldc;Ldc;Ldc;Ldc;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lrc;->j:Z

    .line 4
    iput-object p1, p0, Lrc;->a:Lgc;

    .line 5
    iput-object p2, p0, Lrc;->b:Ltc;

    .line 6
    iput-object p3, p0, Lrc;->c:Ljc;

    .line 7
    iput-object p4, p0, Lrc;->d:Ldc;

    .line 8
    iput-object p5, p0, Lrc;->e:Lfc;

    .line 9
    iput-object p6, p0, Lrc;->h:Ldc;

    .line 10
    iput-object p7, p0, Lrc;->i:Ldc;

    .line 11
    iput-object p8, p0, Lrc;->f:Ldc;

    .line 12
    iput-object p9, p0, Lrc;->g:Ldc;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Lx6b;
    .locals 1

    new-instance v0, Lx6b;

    invoke-direct {v0, p0}, Lx6b;-><init>(Lrc;)V

    return-object v0
.end method

.method public c()Lgc;
    .locals 0

    iget-object p0, p0, Lrc;->a:Lgc;

    return-object p0
.end method

.method public d()Ldc;
    .locals 0

    iget-object p0, p0, Lrc;->i:Ldc;

    return-object p0
.end method

.method public e()Lfc;
    .locals 0

    iget-object p0, p0, Lrc;->e:Lfc;

    return-object p0
.end method

.method public f()Ltc;
    .locals 0

    iget-object p0, p0, Lrc;->b:Ltc;

    return-object p0
.end method

.method public g()Ldc;
    .locals 0

    iget-object p0, p0, Lrc;->d:Ldc;

    return-object p0
.end method

.method public h()Ljc;
    .locals 0

    iget-object p0, p0, Lrc;->c:Ljc;

    return-object p0
.end method

.method public i()Ldc;
    .locals 0

    iget-object p0, p0, Lrc;->f:Ldc;

    return-object p0
.end method

.method public j()Ldc;
    .locals 0

    iget-object p0, p0, Lrc;->g:Ldc;

    return-object p0
.end method

.method public k()Ldc;
    .locals 0

    iget-object p0, p0, Lrc;->h:Ldc;

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lrc;->j:Z

    return p0
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lrc;->j:Z

    return-void
.end method
