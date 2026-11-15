.class Lcom/mgtv/thirdsdk/a/b/a$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/a/b/a;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/a/b/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->tstatus:I

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const-string p1, "070706"

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->playableErrCode:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object p4

    sget-object p5, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    if-ne p4, p5, :cond_6

    .line 10
    iget-object p4, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-virtual {p4, p1}, Lcom/mgtv/thirdsdk/a/b/a;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    const/16 p1, 0x2727

    if-ne p3, p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const-string p1, "070704"

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->a(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(I)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 16
    const-string p1, "100016"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 18
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 20
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const-string p1, "070705"

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/a/b/a$1;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/a/b/a$1;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-virtual {v0, p1}, Lcom/mgtv/thirdsdk/a/b/a;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/a/b/a;->a(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const-string p1, "070705"

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 6
    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->hdcp:I

    if-ne p1, v0, :cond_3

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "resultData.hdcp == 1"

    invoke-static {p1, v1, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 8
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const-string p1, "070707"

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/a$1;->b:Lcom/mgtv/thirdsdk/a/b/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/a;->b(Lcom/mgtv/thirdsdk/a/b/a;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/a/a/b;->a(I)V

    :cond_4
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/a/b/a$1;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method
