.class public final Las/a;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Las/a;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/b0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Las/a;->b:Landroidx/lifecycle/b0;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/b0;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Las/a;->c:Landroidx/lifecycle/b0;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/b0;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Las/a;->d:Landroidx/lifecycle/b0;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/b0;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Las/a;->e:Landroidx/lifecycle/b0;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Las/a;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Las/a;->e:Landroidx/lifecycle/b0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "k_subtitle_language"

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Las/a;->c:Landroidx/lifecycle/b0;

    .line 27
    .line 28
    const-string v3, "off"

    .line 29
    .line 30
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Las/a;->f:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Las/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Las/a;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Las/a;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Las/a;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Las/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
