.class public final synthetic Liu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/AudioPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liu;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Liu;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    check-cast p1, Lwoc;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->J0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lwoc;)V

    return-void
.end method
