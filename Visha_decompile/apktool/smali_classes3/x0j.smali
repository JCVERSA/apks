.class public final Lx0j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk3i;

.field public final b:Landroid/os/Handler;

.field public c:Lu0j;

.field public d:Lhvg;

.field public e:I

.field public f:I

.field public g:F

.field public h:Lalf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lu0j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lx0j;->g:F

    new-instance v0, Lr0j;

    invoke-direct {v0, p1}, Lr0j;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m6;->a(Lk3i;)Lk3i;

    move-result-object p1

    iput-object p1, p0, Lx0j;->a:Lk3i;

    iput-object p3, p0, Lx0j;->c:Lu0j;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lx0j;->b:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lx0j;->e:I

    return-void
.end method

.method public static synthetic c(Lx0j;I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lx0j;->h(I)V

    invoke-virtual {p0, v1}, Lx0j;->g(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lx0j;->g(I)V

    invoke-virtual {p0}, Lx0j;->f()V

    invoke-virtual {p0, v1}, Lx0j;->h(I)V

    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lx0j;->h(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lx0j;->g(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lx0j;->h(I)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lx0j;->g:F

    return p0
.end method

.method public final b(ZI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    iget p2, p0, Lx0j;->f:I

    if-ne p2, v1, :cond_6

    const/4 p2, -0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lx0j;->e:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lx0j;->h:Lalf;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ltif;

    invoke-direct {p1, v1}, Ltif;-><init>(I)V

    iget-object v2, p0, Lx0j;->d:Lhvg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ltif;->a(Lhvg;)Ltif;

    new-instance v2, Lo0j;

    invoke-direct {v2, p0}, Lo0j;-><init>(Lx0j;)V

    iget-object v3, p0, Lx0j;->b:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Ltif;->b(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Ltif;

    invoke-virtual {p1}, Ltif;->c()Lalf;

    move-result-object p1

    iput-object p1, p0, Lx0j;->h:Lalf;

    :goto_0
    iget-object p1, p0, Lx0j;->a:Lk3i;

    invoke-interface {p1}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object v2, p0, Lx0j;->h:Lalf;

    invoke-static {p1, v2}, Lfnf;->b(Landroid/media/AudioManager;Lalf;)I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lx0j;->h(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lx0j;->h(I)V

    move v1, p2

    :goto_1
    return v1

    :cond_3
    iget p0, p0, Lx0j;->e:I

    if-eq p0, v1, :cond_5

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    return p2

    :cond_6
    invoke-virtual {p0}, Lx0j;->f()V

    invoke-virtual {p0, v0}, Lx0j;->h(I)V

    return v1
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lx0j;->c:Lu0j;

    invoke-virtual {p0}, Lx0j;->f()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx0j;->h(I)V

    return-void
.end method

.method public final e(Lhvg;)V
    .locals 1

    iget-object v0, p0, Lx0j;->d:Lhvg;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lx0j;->d:Lhvg;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lx0j;->f:I

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lx0j;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx0j;->h:Lalf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx0j;->a:Lk3i;

    invoke-interface {v0}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object p0, p0, Lx0j;->h:Lalf;

    invoke-static {v0, p0}, Lfnf;->a(Landroid/media/AudioManager;Lalf;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 0

    iget-object p0, p0, Lx0j;->c:Lu0j;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lu0j;->zza(I)V

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 1

    iget v0, p0, Lx0j;->e:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lx0j;->e:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lx0j;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iput p1, p0, Lx0j;->g:F

    iget-object p0, p0, Lx0j;->c:Lu0j;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lu0j;->a(F)V

    :cond_2
    :goto_1
    return-void
.end method
