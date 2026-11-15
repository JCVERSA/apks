.class public final Lcom/yandex/mobile/ads/impl/vq1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/vq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/vp1;

.field private b:Lcom/yandex/mobile/ads/impl/mm1;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/yandex/mobile/ads/impl/if0;

.field private f:Lcom/yandex/mobile/ads/impl/qf0$a;

.field private g:Lcom/yandex/mobile/ads/impl/zq1;

.field private h:Lcom/yandex/mobile/ads/impl/vq1;

.field private i:Lcom/yandex/mobile/ads/impl/vq1;

.field private j:Lcom/yandex/mobile/ads/impl/vq1;

.field private k:J

.field private l:J

.field private m:Lcom/yandex/mobile/ads/impl/b60;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->c:I

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/qf0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qf0$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->f:Lcom/yandex/mobile/ads/impl/qf0$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vq1;)V
    .locals 2

    .line 4
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->c:I

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->o()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->a:Lcom/yandex/mobile/ads/impl/vp1;

    .line 8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->m()Lcom/yandex/mobile/ads/impl/mm1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->b:Lcom/yandex/mobile/ads/impl/mm1;

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->c:I

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->f()Lcom/yandex/mobile/ads/impl/if0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->e:Lcom/yandex/mobile/ads/impl/if0;

    .line 12
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qf0;->b()Lcom/yandex/mobile/ads/impl/qf0$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->f:Lcom/yandex/mobile/ads/impl/qf0$a;

    .line 13
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->g:Lcom/yandex/mobile/ads/impl/zq1;

    .line 14
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->j()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->h:Lcom/yandex/mobile/ads/impl/vq1;

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->b()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->i:Lcom/yandex/mobile/ads/impl/vq1;

    .line 16
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->l()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->j:Lcom/yandex/mobile/ads/impl/vq1;

    .line 17
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->k:J

    .line 18
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->l:J

    .line 19
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->e()Lcom/yandex/mobile/ads/impl/b60;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->m:Lcom/yandex/mobile/ads/impl/b60;

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v0

    if-nez v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->j()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->b()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->l()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 0

    .line 29
    iput p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->c:I

    return-object p0
.end method

.method public final a(J)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->l:J

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/if0;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->e:Lcom/yandex/mobile/ads/impl/if0;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mm1;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 37
    const-string v0, "protocol"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->b:Lcom/yandex/mobile/ads/impl/mm1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 31
    const-string v0, "headers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qf0;->b()Lcom/yandex/mobile/ads/impl/qf0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->f:Lcom/yandex/mobile/ads/impl/qf0$a;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 40
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->a:Lcom/yandex/mobile/ads/impl/vp1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 20
    const-string v0, "cacheResponse"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->i:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->g:Lcom/yandex/mobile/ads/impl/zq1;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 35
    const-string v0, "message"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget v4, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->c:I

    if-ltz v4, :cond_3

    .line 3
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->a:Lcom/yandex/mobile/ads/impl/vp1;

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->b:Lcom/yandex/mobile/ads/impl/mm1;

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->e:Lcom/yandex/mobile/ads/impl/if0;

    .line 7
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->f:Lcom/yandex/mobile/ads/impl/qf0$a;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/qf0$a;->a()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v6

    .line 8
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->g:Lcom/yandex/mobile/ads/impl/zq1;

    .line 9
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->h:Lcom/yandex/mobile/ads/impl/vq1;

    .line 10
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->i:Lcom/yandex/mobile/ads/impl/vq1;

    .line 11
    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->j:Lcom/yandex/mobile/ads/impl/vq1;

    .line 12
    iget-wide v11, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->k:J

    .line 13
    iget-wide v13, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->l:J

    .line 14
    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/vq1$a;->m:Lcom/yandex/mobile/ads/impl/b60;

    .line 15
    new-instance v16, Lcom/yandex/mobile/ads/impl/vq1;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/yandex/mobile/ads/impl/vq1;-><init>(Lcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/mm1;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/if0;Lcom/yandex/mobile/ads/impl/qf0;Lcom/yandex/mobile/ads/impl/zq1;Lcom/yandex/mobile/ads/impl/vq1;Lcom/yandex/mobile/ads/impl/vq1;Lcom/yandex/mobile/ads/impl/vq1;JJLcom/yandex/mobile/ads/impl/b60;)V

    return-object v16

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b60;)V
    .locals 1

    .line 33
    const-string v0, "deferredTrailers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->m:Lcom/yandex/mobile/ads/impl/b60;

    return-void
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->c:I

    return p0
.end method

.method public final b(J)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->k:J

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 2
    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->h:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 5

    .line 1
    const-string v0, "Proxy-Authenticate"

    const-string v1, "name"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "OkHttp-Preemptive"

    const-string v3, "value"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->f:Lcom/yandex/mobile/ads/impl/qf0$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/qf0$b;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/qf0$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4, v0}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/qf0$a;

    .line 6
    invoke-virtual {v4, v0, v2}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vq1$a;->j:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "priorResponse.body != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
