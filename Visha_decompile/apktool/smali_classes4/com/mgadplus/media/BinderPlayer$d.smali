.class public Lcom/mgadplus/media/BinderPlayer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;


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

    iput-object p1, p0, Lcom/mgadplus/media/BinderPlayer$d;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(II)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer$d;->a:Lcom/mgadplus/media/BinderPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
