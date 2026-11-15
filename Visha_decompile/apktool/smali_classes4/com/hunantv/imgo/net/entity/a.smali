.class public Lcom/hunantv/imgo/net/entity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/hunantv/imgo/net/entity/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/net/entity/a;->a:I

    return-object p0
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Lcom/hunantv/imgo/net/entity/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/imgo/net/entity/a;->d:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/net/entity/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/net/entity/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/hunantv/imgo/net/entity/a;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/entity/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthErrorEntity{errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/imgo/net/entity/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/imgo/net/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/net/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/a;->d:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
