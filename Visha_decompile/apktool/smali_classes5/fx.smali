.class public final synthetic Lfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx;->a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lfx;->a:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    check-cast p1, Lcom/transsion/dbdata/beans/LyricData;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->o(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/dbdata/beans/LyricData;)V

    return-void
.end method
