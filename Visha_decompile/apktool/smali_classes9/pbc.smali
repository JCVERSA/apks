.class public final synthetic Lpbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/services/VideosService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/services/VideosService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpbc;->b:Lcom/transsion/magicvideo/services/VideosService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lpbc;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-static {p0}, Lcom/transsion/magicvideo/services/VideosService;->c(Lcom/transsion/magicvideo/services/VideosService;)V

    return-void
.end method
