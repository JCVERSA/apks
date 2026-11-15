.class public Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioFocusRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioFocusRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioFocusRequests:Ljava/util/Map;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

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

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;ILjava/lang/Integer;)Landroid/media/AudioFocusRequest;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->lambda$getAudioFocusRequest$0(ILjava/lang/Integer;)Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method private getAudioFocusRequest(I)Landroid/media/AudioFocusRequest;
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioFocusRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lzp;

    invoke-direct {v2, p0, p1}, Lzp;-><init>(Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioFocusRequest;

    return-object p0
.end method

.method private synthetic lambda$getAudioFocusRequest$0(ILjava/lang/Integer;)Landroid/media/AudioFocusRequest;
    .locals 0

    new-instance p2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p2, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p2, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public requestAudioFocus()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->getAudioFocusRequest(I)Landroid/media/AudioFocusRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AudioFocusManager"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
