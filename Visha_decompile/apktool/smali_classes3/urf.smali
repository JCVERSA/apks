.class public abstract Lurf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvqf;


# instance fields
.field public b:Lcpf;

.field public c:Lcpf;

.field public d:Lcpf;

.field public e:Lcpf;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lurf;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lcpf;->e:Lcpf;

    iput-object v0, p0, Lurf;->d:Lcpf;

    iput-object v0, p0, Lurf;->e:Lcpf;

    iput-object v0, p0, Lurf;->b:Lcpf;

    iput-object v0, p0, Lurf;->c:Lcpf;

    return-void
.end method


# virtual methods
.method public final b(Lcpf;)Lcpf;
    .locals 0

    iput-object p1, p0, Lurf;->d:Lcpf;

    invoke-virtual {p0, p1}, Lurf;->c(Lcpf;)Lcpf;

    move-result-object p1

    iput-object p1, p0, Lurf;->e:Lcpf;

    invoke-virtual {p0}, Lurf;->zzg()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lurf;->e:Lcpf;

    goto :goto_0

    :cond_0
    sget-object p0, Lcpf;->e:Lcpf;

    :goto_0
    return-object p0
.end method

.method public abstract c(Lcpf;)Lcpf;
.end method

.method public final d(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lurf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lurf;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lurf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lurf;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    return p0
.end method

.method public zzb()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lurf;->h:Z

    iget-object v0, p0, Lurf;->d:Lcpf;

    iput-object v0, p0, Lurf;->b:Lcpf;

    iget-object v0, p0, Lurf;->e:Lcpf;

    iput-object v0, p0, Lurf;->c:Lcpf;

    invoke-virtual {p0}, Lurf;->e()V

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lurf;->h:Z

    invoke-virtual {p0}, Lurf;->f()V

    return-void
.end method

.method public final zzf()V
    .locals 1

    invoke-virtual {p0}, Lurf;->zzc()V

    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lurf;->f:Ljava/nio/ByteBuffer;

    sget-object v0, Lcpf;->e:Lcpf;

    iput-object v0, p0, Lurf;->d:Lcpf;

    iput-object v0, p0, Lurf;->e:Lcpf;

    iput-object v0, p0, Lurf;->b:Lcpf;

    iput-object v0, p0, Lurf;->c:Lcpf;

    invoke-virtual {p0}, Lurf;->g()V

    return-void
.end method

.method public zzg()Z
    .locals 1

    iget-object p0, p0, Lurf;->e:Lcpf;

    sget-object v0, Lcpf;->e:Lcpf;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public zzh()Z
    .locals 1

    iget-boolean v0, p0, Lurf;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lurf;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
