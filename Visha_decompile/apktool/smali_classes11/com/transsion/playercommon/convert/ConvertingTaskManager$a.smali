.class public Lcom/transsion/playercommon/convert/ConvertingTaskManager$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/convert/ConvertingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/convert/ConvertingTaskManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTaskManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager$a;->a:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager$a;->a:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->A()V

    return-void
.end method
