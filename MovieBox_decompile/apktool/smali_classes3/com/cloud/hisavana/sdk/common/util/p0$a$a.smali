.class public final Lcom/cloud/hisavana/sdk/common/util/p0$a$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/util/p0$a;->c(Lcom/cloud/hisavana/sdk/common/util/p0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic g:Lcom/cloud/hisavana/sdk/common/util/p0$b;

.field final synthetic h:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/hisavana/sdk/common/util/p0$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->g:Lcom/cloud/hisavana/sdk/common/util/p0$b;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onRequestError "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v4, v3

    .line 36
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " url "

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 p1, 0x29

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v1, "VastMaterialDownloadUtil"

    .line 71
    .line 72
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 79
    .line 80
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/p0;->a:Lcom/cloud/hisavana/sdk/common/util/p0$a;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 83
    .line 84
    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 85
    .line 86
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 87
    .line 88
    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 89
    .line 90
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 91
    .line 92
    iget-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 93
    .line 94
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->g:Lcom/cloud/hisavana/sdk/common/util/p0$b;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 97
    .line 98
    iget-boolean v7, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->a(Lcom/cloud/hisavana/sdk/common/util/p0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/p0$b;Z)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onRequestSuccess "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "VastMaterialDownloadUtil"

    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 p2, 0xfa

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p1, p2, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 39
    .line 40
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 41
    .line 42
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 43
    .line 44
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 45
    .line 46
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 47
    .line 48
    iput-boolean v0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 49
    .line 50
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/p0;->a:Lcom/cloud/hisavana/sdk/common/util/p0$a;

    .line 51
    .line 52
    iget-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 55
    .line 56
    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 59
    .line 60
    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 61
    .line 62
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->g:Lcom/cloud/hisavana/sdk/common/util/p0$b;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 65
    .line 66
    iget-boolean v7, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->a(Lcom/cloud/hisavana/sdk/common/util/p0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/p0$b;Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
