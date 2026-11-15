.class public abstract Lcom/yandex/mobile/ads/impl/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/uh;


# instance fields
.field protected b:Lcom/yandex/mobile/ads/impl/uh$a;

.field protected c:Lcom/yandex/mobile/ads/impl/uh$a;

.field private d:Lcom/yandex/mobile/ads/impl/uh$a;

.field private e:Lcom/yandex/mobile/ads/impl/uh$a;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->d:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->b:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->c:Lcom/yandex/mobile/ads/impl/uh$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/uh$a;)Lcom/yandex/mobile/ads/impl/uh$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/uh$b;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ik;->d:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ik;->b(Lcom/yandex/mobile/ads/impl/uh$a;)Lcom/yandex/mobile/ads/impl/uh$a;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ik;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ik;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ik;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    :goto_0
    return-object p0
.end method

.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ik;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ik;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ik;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public a()Z
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ik;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract b(Lcom/yandex/mobile/ads/impl/uh$a;)Lcom/yandex/mobile/ads/impl/uh$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/uh$b;
        }
    .end annotation
.end method

.method public final b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ik;->flush()V

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->f:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->d:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 4
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 5
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->b:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 6
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->c:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ik;->h()V

    return-void
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ik;->h:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ik;->g()V

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    return p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ik;->h:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->d:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->b:Lcom/yandex/mobile/ads/impl/uh$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ik;->c:Lcom/yandex/mobile/ads/impl/uh$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ik;->f()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ik;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
