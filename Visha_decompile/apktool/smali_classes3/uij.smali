.class public final Luij;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lvij;


# direct methods
.method public constructor <init>(Lvij;)V
    .locals 0

    iput-object p1, p0, Luij;->a:Lvij;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p0, p0, Luij;->a:Lvij;

    iget-object p0, p0, Lvij;->c:Lxij;

    invoke-static {p0}, Lxij;->t(Lxij;)Landroid/media/AudioTrack;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object p0, p0, Luij;->a:Lvij;

    iget-object p0, p0, Lvij;->c:Lxij;

    invoke-static {p0}, Lxij;->t(Lxij;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lxij;->w(Lxij;Z)V

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 0

    iget-object p0, p0, Luij;->a:Lvij;

    iget-object p0, p0, Lvij;->c:Lxij;

    invoke-static {p0}, Lxij;->t(Lxij;)Landroid/media/AudioTrack;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method
