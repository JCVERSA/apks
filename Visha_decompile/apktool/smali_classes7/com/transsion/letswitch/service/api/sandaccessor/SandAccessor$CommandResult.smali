.class public Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public message:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onCommandFinished(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->result:I

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->message:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
