.class public final synthetic Lnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity;

.field public final synthetic c:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iput-object p2, p0, Lnu;->c:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p3, p0, Lnu;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object v1, p0, Lnu;->c:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p0, p0, Lnu;->d:Landroid/os/Bundle;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->F0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/util/Pair;)V

    return-void
.end method
