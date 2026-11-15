.class public final synthetic Lsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsx;->b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsx;->b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    check-cast p1, Landroid/text/Editable;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->c(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Landroid/text/Editable;)V

    return-void
.end method
