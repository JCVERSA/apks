.class public final synthetic Lc6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lc6b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->b(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    return-void
.end method
