.class public final synthetic Lku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lku;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->C0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    return-void
.end method
