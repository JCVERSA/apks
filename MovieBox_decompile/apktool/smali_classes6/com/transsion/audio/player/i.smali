.class public final synthetic Lcom/transsion/audio/player/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/player/l;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/audio/player/i;->a:Lcom/transsion/audio/player/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/i;->a:Lcom/transsion/audio/player/l;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/audio/player/l;->i(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/InfoBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
