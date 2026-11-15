.class public final Lcom/yandex/mobile/ads/impl/do1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zn1;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mp0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lcom/yandex/mobile/ads/impl/b60;

.field private final e:Lcom/yandex/mobile/ads/impl/vp1;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;ILcom/yandex/mobile/ads/impl/b60;Lcom/yandex/mobile/ads/impl/vp1;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zn1;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/mp0;",
            ">;I",
            "Lcom/yandex/mobile/ads/impl/b60;",
            "Lcom/yandex/mobile/ads/impl/vp1;",
            "III)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/do1;->a:Lcom/yandex/mobile/ads/impl/zn1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    iput p3, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/do1;->d:Lcom/yandex/mobile/ads/impl/b60;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/do1;->e:Lcom/yandex/mobile/ads/impl/vp1;

    iput p6, p0, Lcom/yandex/mobile/ads/impl/do1;->f:I

    iput p7, p0, Lcom/yandex/mobile/ads/impl/do1;->g:I

    iput p8, p0, Lcom/yandex/mobile/ads/impl/do1;->h:I

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/do1;ILcom/yandex/mobile/ads/impl/b60;Lcom/yandex/mobile/ads/impl/vp1;I)Lcom/yandex/mobile/ads/impl/do1;
    .locals 9

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget p1, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    :cond_0
    move v3, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/do1;->d:Lcom/yandex/mobile/ads/impl/b60;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    .line 4
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/do1;->e:Lcom/yandex/mobile/ads/impl/vp1;

    :cond_2
    move-object v5, p3

    .line 5
    iget v6, p0, Lcom/yandex/mobile/ads/impl/do1;->f:I

    .line 6
    iget v7, p0, Lcom/yandex/mobile/ads/impl/do1;->g:I

    .line 7
    iget v8, p0, Lcom/yandex/mobile/ads/impl/do1;->h:I

    .line 8
    const-string p1, "request"

    invoke-static {v5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/do1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/do1;->a:Lcom/yandex/mobile/ads/impl/zn1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/do1;-><init>(Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;ILcom/yandex/mobile/ads/impl/b60;Lcom/yandex/mobile/ads/impl/vp1;III)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 12
    iget v0, p0, Lcom/yandex/mobile/ads/impl/do1;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/do1;->i:I

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/do1;->d:Lcom/yandex/mobile/ads/impl/b60;

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->h()Lcom/yandex/mobile/ads/impl/d60;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/impl/d60;->a(Lcom/yandex/mobile/ads/impl/gi0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget v0, p0, Lcom/yandex/mobile/ads/impl/do1;->i:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    sub-int/2addr p0, v1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    sub-int/2addr p0, v1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " must retain the same host and port"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    :goto_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    add-int/2addr v0, v1

    const/4 v4, 0x0

    const/16 v5, 0x3a

    invoke-static {p0, v0, v4, p1, v5}, Lcom/yandex/mobile/ads/impl/do1;->a(Lcom/yandex/mobile/ads/impl/do1;ILcom/yandex/mobile/ads/impl/b60;Lcom/yandex/mobile/ads/impl/vp1;I)Lcom/yandex/mobile/ads/impl/do1;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    iget v4, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/mp0;

    .line 22
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/mp0;->a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v4

    const-string v5, "interceptor "

    if-eqz v4, :cond_6

    .line 23
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/do1;->d:Lcom/yandex/mobile/ads/impl/b60;

    if-eqz v6, :cond_4

    .line 24
    iget v6, p0, Lcom/yandex/mobile/ads/impl/do1;->c:I

    add-int/2addr v6, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/do1;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v6, p0, :cond_4

    iget p0, p1, Lcom/yandex/mobile/ads/impl/do1;->i:I

    if-ne p0, v1, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object v4

    .line 28
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned a response with no body"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/zn1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/do1;->a:Lcom/yandex/mobile/ads/impl/zn1;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/zn1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/do1;->a:Lcom/yandex/mobile/ads/impl/zn1;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/do1;->f:I

    return p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/b60;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/do1;->d:Lcom/yandex/mobile/ads/impl/b60;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/do1;->g:I

    return p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/vp1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/do1;->e:Lcom/yandex/mobile/ads/impl/vp1;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/do1;->h:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/do1;->g:I

    return p0
.end method

.method public final i()Lcom/yandex/mobile/ads/impl/vp1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/do1;->e:Lcom/yandex/mobile/ads/impl/vp1;

    return-object p0
.end method
