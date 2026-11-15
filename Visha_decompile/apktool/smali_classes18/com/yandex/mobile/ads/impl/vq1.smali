.class public final Lcom/yandex/mobile/ads/impl/vq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/vq1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vp1;

.field private final b:Lcom/yandex/mobile/ads/impl/mm1;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/yandex/mobile/ads/impl/if0;

.field private final f:Lcom/yandex/mobile/ads/impl/qf0;

.field private final g:Lcom/yandex/mobile/ads/impl/zq1;

.field private final h:Lcom/yandex/mobile/ads/impl/vq1;

.field private final i:Lcom/yandex/mobile/ads/impl/vq1;

.field private final j:Lcom/yandex/mobile/ads/impl/vq1;

.field private final k:J

.field private final l:J

.field private final m:Lcom/yandex/mobile/ads/impl/b60;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/mm1;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/if0;Lcom/yandex/mobile/ads/impl/qf0;Lcom/yandex/mobile/ads/impl/zq1;Lcom/yandex/mobile/ads/impl/vq1;Lcom/yandex/mobile/ads/impl/vq1;Lcom/yandex/mobile/ads/impl/vq1;JJLcom/yandex/mobile/ads/impl/b60;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->a:Lcom/yandex/mobile/ads/impl/vp1;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/vq1;->b:Lcom/yandex/mobile/ads/impl/mm1;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/vq1;->c:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->d:I

    move-object v1, p5

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->e:Lcom/yandex/mobile/ads/impl/if0;

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/vq1;->f:Lcom/yandex/mobile/ads/impl/qf0;

    move-object v1, p7

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->g:Lcom/yandex/mobile/ads/impl/zq1;

    move-object v1, p8

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->h:Lcom/yandex/mobile/ads/impl/vq1;

    move-object v1, p9

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->i:Lcom/yandex/mobile/ads/impl/vq1;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->j:Lcom/yandex/mobile/ads/impl/vq1;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->k:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->l:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1;->m:Lcom/yandex/mobile/ads/impl/b60;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->f:Lcom/yandex/mobile/ads/impl/qf0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/qf0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/zq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->g:Lcom/yandex/mobile/ads/impl/zq1;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->i:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/go;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1;->f:Lcom/yandex/mobile/ads/impl/qf0;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->d:I

    const/16 v1, 0x191

    if-eq p0, v1, :cond_1

    const/16 v1, 0x197

    if-eq p0, v1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string p0, "WWW-Authenticate"

    :goto_0
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/qf0;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->g:Lcom/yandex/mobile/ads/impl/zq1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "response is not eligible for a body and must not be closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->d:I

    return p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/b60;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->m:Lcom/yandex/mobile/ads/impl/b60;

    return-object p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/if0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->e:Lcom/yandex/mobile/ads/impl/if0;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/qf0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->f:Lcom/yandex/mobile/ads/impl/qf0;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->d:I

    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->h:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0
.end method

.method public final k()Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>(Lcom/yandex/mobile/ads/impl/vq1;)V

    return-object v0
.end method

.method public final l()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->j:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0
.end method

.method public final m()Lcom/yandex/mobile/ads/impl/mm1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->b:Lcom/yandex/mobile/ads/impl/mm1;

    return-object p0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/vq1;->l:J

    return-wide v0
.end method

.method public final o()Lcom/yandex/mobile/ads/impl/vp1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->a:Lcom/yandex/mobile/ads/impl/vp1;

    return-object p0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/vq1;->k:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1;->b:Lcom/yandex/mobile/ads/impl/mm1;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/vq1;->d:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/vq1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vq1;->a:Lcom/yandex/mobile/ads/impl/vp1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response{protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", code="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
