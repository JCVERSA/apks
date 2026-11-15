.class public Lcom/mgadplus/media/BinderPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/media/BinderPlayer;->p(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/media/BinderPlayer;


# direct methods
.method public constructor <init>(Lcom/mgadplus/media/BinderPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/media/BinderPlayer$b;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)Z
    .locals 2

    const/16 p2, 0x384

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer$b;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer$b;->a:Lcom/mgadplus/media/BinderPlayer;

    iget-object p2, p1, Lcom/mgadplus/media/BinderPlayer;->G:Lcom/mgmi/model/VASTAd;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/mgadplus/media/BinderPlayer;->q(Lcom/mgadplus/media/BinderPlayer;)Lcom/mgmi/e/a/d;

    move-result-object p1

    iget-object p2, p0, Lcom/mgadplus/media/BinderPlayer$b;->a:Lcom/mgadplus/media/BinderPlayer;

    iget-object v1, p2, Lcom/mgadplus/media/BinderPlayer;->G:Lcom/mgmi/model/VASTAd;

    invoke-static {p2}, Lcom/mgadplus/media/BinderPlayer;->n(Lcom/mgadplus/media/BinderPlayer;)Lcom/mgmi/e/g;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/mgmi/e/a/d;->e(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer$b;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-static {p1}, Lcom/mgadplus/media/BinderPlayer;->q(Lcom/mgadplus/media/BinderPlayer;)Lcom/mgmi/e/a/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer$b;->a:Lcom/mgadplus/media/BinderPlayer;

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->G:Lcom/mgmi/model/VASTAd;

    const/4 p2, 0x4

    invoke-virtual {p1, p0, p2, v0, v0}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;IIZ)V

    :cond_0
    return v0
.end method
