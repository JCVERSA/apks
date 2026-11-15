.class public Lcom/transsion/audio/activities/AudioPlayerActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/activities/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/AudioPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$d;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$d;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->r0:Landroidx/activity/result/ActivityResultCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity$d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
