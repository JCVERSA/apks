.class public final synthetic Lsm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/MediaVolumeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsm6;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lsm6;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V

    return-void
.end method
