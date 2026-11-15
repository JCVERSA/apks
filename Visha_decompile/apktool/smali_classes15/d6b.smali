.class public final synthetic Ld6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld6b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method
