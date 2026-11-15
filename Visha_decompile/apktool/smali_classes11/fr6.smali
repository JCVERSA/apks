.class public final synthetic Lfr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/MountPointManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/storage/MountPointManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr6;->b:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfr6;->b:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->a(Lcom/transsion/playercommon/utils/storage/MountPointManager;)V

    return-void
.end method
