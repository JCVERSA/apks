.class public Lcom/transsion/hubsdk/core/content/TranThubBroadcastReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;


# instance fields
.field private mHelper:Lcom/transsion/hubsdk/content/TranBroadcastReceiverHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/content/TranBroadcastReceiverHelper;

    invoke-direct {v0}, Lcom/transsion/hubsdk/content/TranBroadcastReceiverHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/TranThubBroadcastReceiver;->mHelper:Lcom/transsion/hubsdk/content/TranBroadcastReceiverHelper;

    return-void
.end method


# virtual methods
.method public getSendingUserId(Landroid/content/BroadcastReceiver;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/TranThubBroadcastReceiver;->mHelper:Lcom/transsion/hubsdk/content/TranBroadcastReceiverHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/TranBroadcastReceiverHelper;->getSendingUserId(Landroid/content/BroadcastReceiver;)I

    move-result p0

    return p0
.end method
