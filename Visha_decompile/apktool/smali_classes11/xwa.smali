.class public final synthetic Lxwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/convert/TranConvertingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxwa;->b:Lcom/transsion/playercommon/convert/TranConvertingTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lxwa;->b:Lcom/transsion/playercommon/convert/TranConvertingTask;

    invoke-static {p0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->e(Lcom/transsion/playercommon/convert/TranConvertingTask;)V

    return-void
.end method
