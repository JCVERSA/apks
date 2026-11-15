.class public Lcom/mgadplus/media/BinderPlayer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnErrorListener;


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

    iput-object p1, p0, Lcom/mgadplus/media/BinderPlayer$c;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 5

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer$c;->a:Lcom/mgadplus/media/BinderPlayer;

    iget-object v1, v0, Lcom/mgadplus/media/BinderPlayer;->G:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mgadplus/media/BinderPlayer;->q(Lcom/mgadplus/media/BinderPlayer;)Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/media/BinderPlayer$c;->a:Lcom/mgadplus/media/BinderPlayer;

    iget-object v1, v1, Lcom/mgadplus/media/BinderPlayer;->G:Lcom/mgmi/model/VASTAd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "errormsg="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;II)V

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer$c;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2
.end method
