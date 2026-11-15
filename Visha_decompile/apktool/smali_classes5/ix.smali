.class public final synthetic Lix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix;->a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-void
.end method


# virtual methods
.method public final onLayoutChange()V
    .locals 0

    iget-object p0, p0, Lix;->a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->t(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    return-void
.end method
