.class public final synthetic Luo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luo;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Luo;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->H1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
