.class public final Lcom/transsion/ad/MBAd$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/MBAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lrh/a;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/transsion/ad/MBAd$b;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/MBAd$a;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/transsion/ad/MBAd$a;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v3, p0, Lcom/transsion/ad/MBAd$b;->b:Z

    .line 22
    .line 23
    iget-boolean v4, p0, Lcom/transsion/ad/MBAd$b;->c:Z

    .line 24
    .line 25
    iget-object v5, p0, Lcom/transsion/ad/MBAd$b;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/transsion/ad/MBAd$b;->e:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v8, p0, Lcom/transsion/ad/MBAd$b;->g:Z

    .line 32
    .line 33
    iget-object v9, p0, Lcom/transsion/ad/MBAd$b;->h:Lrh/a;

    .line 34
    .line 35
    iget-boolean v10, p0, Lcom/transsion/ad/MBAd$b;->i:Z

    .line 36
    .line 37
    iget-boolean v11, p0, Lcom/transsion/ad/MBAd$b;->j:Z

    .line 38
    .line 39
    iget-boolean v12, p0, Lcom/transsion/ad/MBAd$b;->k:Z

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v12}, Lcom/transsion/ad/MBAd$a;-><init>(Ljava/lang/String;ZZLcom/transsion/ad/strategy/AppManager$AppEnum;Ljava/lang/String;Ljava/lang/String;ZLrh/a;ZZZ)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v1, "AdConfigUrl must not be empty"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v1, "HiSavana App ID must not be empty"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    .line 1
    const-string v0, "adConfigUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lcom/transsion/ad/strategy/AppManager$AppEnum;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    .line 1
    const-string v0, "appEnum"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 7
    .line 8
    return-object p0
.end method

.method public final e(Lrh/a;)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->h:Lrh/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    .line 1
    const-string v0, "hisavanaAppId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;
    .locals 1

    .line 1
    const-string v0, "hotSceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/MBAd$b;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final h(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->g:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->i:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final k(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->k:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(Z)Lcom/transsion/ad/MBAd$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/MBAd$b;->j:Z

    .line 2
    .line 3
    return-object p0
.end method
