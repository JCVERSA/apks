.class public Lcom/transsion/audio/service/MusicService$ServiceBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/service/MusicService;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/service/MusicService$ServiceBinder;->this$0:Lcom/transsion/audio/service/MusicService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/transsion/audio/service/MusicService;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$ServiceBinder;->this$0:Lcom/transsion/audio/service/MusicService;

    return-object p0
.end method
