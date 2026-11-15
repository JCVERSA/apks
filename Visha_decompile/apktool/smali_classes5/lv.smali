.class public final synthetic Llv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Llv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    return-void
.end method
