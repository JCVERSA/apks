.class public Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/services/VideosService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/services/VideosService;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/services/VideosService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;->this$0:Lcom/transsion/magicvideo/services/VideosService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/transsion/magicvideo/services/VideosService;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;->this$0:Lcom/transsion/magicvideo/services/VideosService;

    return-object p0
.end method
