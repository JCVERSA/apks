.class public final synthetic Lqbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/services/VideosService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/services/VideosService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqbc;->b:Lcom/transsion/magicvideo/services/VideosService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lqbc;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/services/VideosService;->f(Lcom/transsion/magicvideo/services/VideosService;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
