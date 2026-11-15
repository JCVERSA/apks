.class public final synthetic Lzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzw;->b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lzw;->b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->b(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    return-void
.end method
