.class public final synthetic Ldj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/BottomAudioBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ldj0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->E(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    return-void
.end method
