.class public final synthetic Ltm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/MediaVolumeManager$b;

.field public final synthetic c:F

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/MediaVolumeManager$b;FLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltm6;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager$b;

    iput p2, p0, Ltm6;->c:F

    iput-object p3, p0, Ltm6;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltm6;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager$b;

    iget v1, p0, Ltm6;->c:F

    iget-object p0, p0, Ltm6;->d:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->a(Lcom/transsion/playercommon/utils/MediaVolumeManager$b;FLandroid/content/Context;)V

    return-void
.end method
