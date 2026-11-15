.class public final synthetic Lic0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic0;->b:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lic0;->b:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->B0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
