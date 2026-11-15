.class public final Lcom/google/android/exoplayer2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/b$a;,
        Lcom/google/android/exoplayer2/b$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lcom/google/android/exoplayer2/b$a;

.field public c:Lcom/google/android/exoplayer2/b$b;

.field public d:Lcom/google/android/exoplayer2/audio/a;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroid/media/AudioFocusRequest;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/b$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/b;->g:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->a:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/google/android/exoplayer2/b;->c:Lcom/google/android/exoplayer2/b$b;

    new-instance p1, Lcom/google/android/exoplayer2/b$a;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/b$a;-><init>(Lcom/google/android/exoplayer2/b;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/b$a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/b;->e:I

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b;->h(I)V

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/audio/a;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/audio/a;->d:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/a;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    sget p0, Lblb;->a:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v5

    :pswitch_2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/a;->b:I

    if-ne p0, v4, :cond_2

    return v5

    :cond_2
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v5

    :pswitch_6
    return v4

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v3, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/b$a;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/b;->e:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lblb;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->a()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->n(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->c:Lcom/google/android/exoplayer2/b$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/b$b;->executePlayerCommand(I)V

    :cond_0
    return-void
.end method

.method public g()F
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/b;->g:F

    return p0
.end method

.method public final h(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->n(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->f(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->f(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->b()V

    return-void

    :cond_2
    if-eq p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b;->n(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b;->f(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b;->n(I)V

    :goto_1
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->c:Lcom/google/android/exoplayer2/b$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->b()V

    return-void
.end method

.method public final j()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    sget v0, Lblb;->a:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->l()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->k()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/b;->n(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b;->n(I)V

    const/4 p0, -0x1

    return p0
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/b$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->d:Lcom/google/android/exoplayer2/audio/a;

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/a;->d:I

    invoke-static {v2}, Lblb;->Z(I)I

    move-result v2

    iget p0, p0, Lcom/google/android/exoplayer2/b;->f:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/b;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/b;->f:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->q()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b;->d:Lcom/google/android/exoplayer2/audio/a;

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/a;->b()Lcom/google/android/exoplayer2/audio/a$d;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/a$d;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/b;->b:Lcom/google/android/exoplayer2/b$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/b;->i:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->a:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public m(Lcom/google/android/exoplayer2/audio/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b;->d:Lcom/google/android/exoplayer2/audio/a;

    invoke-static {v0, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/android/exoplayer2/b;->d:Lcom/google/android/exoplayer2/audio/a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/b;->e(Lcom/google/android/exoplayer2/audio/a;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/b;->f:I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {p0, p1}, Lzi;->b(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final n(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/b;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/b;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/b;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/google/android/exoplayer2/b;->g:F

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->c:Lcom/google/android/exoplayer2/b$b;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/b$b;->setVolumeMultiplier(F)V

    :cond_3
    return-void
.end method

.method public final o(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/b;->f:I

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public p(ZI)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/b;->o(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->b()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b;->j()I

    move-result v0

    :cond_2
    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/b;->d:Lcom/google/android/exoplayer2/audio/a;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
