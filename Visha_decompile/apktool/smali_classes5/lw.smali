.class public final synthetic Llw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llw;->b:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Llw;->b:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->n(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    return-void
.end method
