.class public Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;
.super Lchc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lchc;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/net/Uri;I)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;->d(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Landroid/net/Uri;I)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;->e(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Z)V

    return-void
.end method

.method public d(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Landroid/net/Uri;I)V
    .locals 0

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ldw6;->h(Landroid/net/Uri;I)V

    return-void
.end method

.method public e(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Z)V
    .locals 0

    return-void
.end method
