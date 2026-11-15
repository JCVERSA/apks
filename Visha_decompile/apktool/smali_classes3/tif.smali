.class public final Ltif;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public b:Landroid/os/Handler;

.field public c:Lhvg;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lhvg;->b:Lhvg;

    iput-object p1, p0, Ltif;->c:Lhvg;

    return-void
.end method


# virtual methods
.method public final a(Lhvg;)Ltif;
    .locals 0

    iput-object p1, p0, Ltif;->c:Lhvg;

    return-object p0
.end method

.method public final b(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Ltif;
    .locals 0

    iput-object p1, p0, Ltif;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Ltif;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public final c()Lalf;
    .locals 7

    iget-object v2, p0, Ltif;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v2, :cond_0

    new-instance v6, Lalf;

    iget-object v3, p0, Ltif;->b:Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Ltif;->c:Lhvg;

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lalf;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lhvg;Z)V

    return-object v6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t build an AudioFocusRequestCompat instance without a listener"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
