.class public final synthetic Lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;


# instance fields
.field public final synthetic a:Lh0;


# direct methods
.method public synthetic constructor <init>(Lh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx;->a:Lh0;

    return-void
.end method


# virtual methods
.method public final onPublishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .locals 0

    iget-object p0, p0, Lx;->a:Lh0;

    invoke-static {p0, p1, p2}, Lh0;->e(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V

    return-void
.end method
