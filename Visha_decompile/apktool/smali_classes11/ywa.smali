.class public final synthetic Lywa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/convert/TranConvertingTask;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/convert/TranConvertingTask;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lywa;->b:Lcom/transsion/playercommon/convert/TranConvertingTask;

    iput p2, p0, Lywa;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lywa;->b:Lcom/transsion/playercommon/convert/TranConvertingTask;

    iget p0, p0, Lywa;->c:I

    invoke-static {v0, p0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->d(Lcom/transsion/playercommon/convert/TranConvertingTask;I)V

    return-void
.end method
