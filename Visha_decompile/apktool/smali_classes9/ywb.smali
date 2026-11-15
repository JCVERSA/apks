.class public final synthetic Lywb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lywb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lywb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    return-void
.end method
