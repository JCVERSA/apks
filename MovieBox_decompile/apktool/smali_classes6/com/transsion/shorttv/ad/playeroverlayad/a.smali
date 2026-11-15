.class public final Lcom/transsion/shorttv/ad/playeroverlayad/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/shorttv/ad/AdLoadState;

.field private b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->DESTROYED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c:Z

    .line 17
    .line 18
    return-void
.end method

.method public final b()Lcom/transsion/shorttv/ad/playeroverlayad/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/transsion/shorttv/ad/AdLoadState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Lcom/transsion/shorttv/ad/AdLoadState;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 7
    .line 8
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c:Z

    .line 2
    .line 3
    return-void
.end method
