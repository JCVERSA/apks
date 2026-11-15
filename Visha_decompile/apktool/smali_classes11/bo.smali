.class public final synthetic Lbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/audiomodel/AudioDataListModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo;->b:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbo;->b:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-static {p0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->b(Lcom/transsion/playercommon/audiomodel/AudioDataListModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
