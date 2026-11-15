.class public final synthetic Lgrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgrb;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lgrb;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->D1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
