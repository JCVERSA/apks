.class public Lzs7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Landroid/media/AudioAttributes;

.field public final c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzs7;->d:Ljava/util/Map;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lzs7;->a:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lzs7;->b:Landroid/media/AudioAttributes;

    iput-object p2, p0, Lzs7;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not get AudioManager system service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lzs7;Ljava/lang/Integer;)Landroid/media/AudioFocusRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Integer;)Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 4

    iget-object v0, p0, Lzs7;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x0

    const-string v2, "OtherAudioManagerUtil"

    if-nez v0, :cond_0

    const-string p0, "abandonAudioFocus: listener is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lzs7;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lzs7;->d()I

    move-result v3

    invoke-virtual {p0, v3}, Lzs7;->c(I)Landroid/media/AudioFocusRequest;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "abandonAudioFocus failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lzs7;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "abandonAudioFocus: result=%d, listener=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final c(I)Landroid/media/AudioFocusRequest;
    .locals 2

    iget-object v0, p0, Lzs7;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lys7;

    invoke-direct {v1, p0}, Lys7;-><init>(Lzs7;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioFocusRequest;

    return-object p0
.end method

.method public final d()I
    .locals 2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "audio_focus_allow_may_duck"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final synthetic e(Ljava/lang/Integer;)Landroid/media/AudioFocusRequest;
    .locals 1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object p1, p0, Lzs7;->b:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lzs7;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public f()I
    .locals 5

    iget-object v0, p0, Lzs7;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x0

    const-string v2, "OtherAudioManagerUtil"

    if-nez v0, :cond_0

    const-string p0, "requestAudioFocus: listener is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lzs7;->d()I

    move-result v0

    :try_start_0
    iget-object v3, p0, Lzs7;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Lzs7;->c(I)Landroid/media/AudioFocusRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "requestAudioFocus failed"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lzs7;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    filled-new-array {v0, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "requestAudioFocus: type=%d, result=%d, listener=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
