.class public final synthetic Lhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx;->a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-void
.end method


# virtual methods
.method public final onPlayClick(Lcom/transsion/audio/widgets/LrcViewNew;J)Z
    .locals 0

    iget-object p0, p0, Lhx;->a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->h(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/audio/widgets/LrcViewNew;J)Z

    move-result p0

    return p0
.end method
