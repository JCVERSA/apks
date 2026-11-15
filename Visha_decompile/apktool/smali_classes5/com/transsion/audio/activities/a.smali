.class public final synthetic Lcom/transsion/audio/activities/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity$4;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity$4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/activities/a;->b:Lcom/transsion/audio/activities/AudioPlayerActivity$4;

    iput-object p2, p0, Lcom/transsion/audio/activities/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/a;->b:Lcom/transsion/audio/activities/AudioPlayerActivity$4;

    iget-object p0, p0, Lcom/transsion/audio/activities/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->b(Lcom/transsion/audio/activities/AudioPlayerActivity$4;Ljava/lang/String;)V

    return-void
.end method
