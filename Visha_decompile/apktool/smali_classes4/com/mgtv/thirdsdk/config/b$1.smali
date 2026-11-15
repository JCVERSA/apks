.class Lcom/mgtv/thirdsdk/config/b$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/config/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/MobileConfigEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/config/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/config/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/b$1;->b:Lcom/mgtv/thirdsdk/config/b;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/b$1;->b(Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/config/b$1;->b:Lcom/mgtv/thirdsdk/config/b;

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/config/b;->a(Lcom/mgtv/thirdsdk/config/b;Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V

    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/b$1;->a(Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V

    return-void
.end method
