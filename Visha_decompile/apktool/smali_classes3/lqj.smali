.class public final Llqj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/Spatializer;

.field public final b:Z

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrqj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lfnf;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {p1}, Lkfh;->n(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lh62;->a(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Llqj;->a:Landroid/media/Spatializer;

    invoke-static {p1}, Li62;->a(Landroid/media/Spatializer;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Llqj;->b:Z

    new-instance v0, Lkqj;

    invoke-direct {v0, p0, p2}, Lkqj;-><init>(Llqj;Lrqj;)V

    iput-object v0, p0, Llqj;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Llqj;->c:Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljqj;

    invoke-direct {p0, p2}, Ljqj;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, p0, v0}, Lj62;->a(Landroid/media/Spatializer;Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void

    :cond_3
    :goto_1
    iput-object v0, p0, Llqj;->a:Landroid/media/Spatializer;

    iput-boolean v2, p0, Llqj;->b:Z

    iput-object v0, p0, Llqj;->c:Landroid/os/Handler;

    iput-object v0, p0, Llqj;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Llqj;->a:Landroid/media/Spatializer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Llqj;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v1, :cond_1

    iget-object p0, p0, Llqj;->c:Landroid/os/Handler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lm62;->a(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lhvg;Lerj;)Z
    .locals 4

    iget-object v0, p2, Lerj;->o:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v0, p2, Lerj;->E:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const-string v1, "audio/iamf"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p2, Lerj;->E:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const-string v1, "audio/ac4"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lerj;->E:I

    const/16 v1, 0x12

    const/16 v3, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget v0, p2, Lerj;->E:I

    :cond_4
    :goto_0
    invoke-static {v0}, Lkfh;->D(I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget p2, p2, Lerj;->F:I

    if-eq p2, v2, :cond_6

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_6
    iget-object p0, p0, Llqj;->a:Landroid/media/Spatializer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk62;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object p0

    invoke-virtual {p1}, Lhvg;->a()Ljgf;

    move-result-object p1

    iget-object p1, p1, Ljgf;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lo62;->a(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Llqj;->a:Landroid/media/Spatializer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk62;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object p0

    invoke-static {p0}, Ll62;->a(Landroid/media/Spatializer;)Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Llqj;->a:Landroid/media/Spatializer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk62;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object p0

    invoke-static {p0}, Ln62;->a(Landroid/media/Spatializer;)Z

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Llqj;->b:Z

    return p0
.end method
