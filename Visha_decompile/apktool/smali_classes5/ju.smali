.class public final synthetic Lju;
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

    iput-object p1, p0, Lju;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lju;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->O1()V

    return-void
.end method
