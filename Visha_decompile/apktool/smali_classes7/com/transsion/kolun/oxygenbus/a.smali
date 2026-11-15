.class public final synthetic Lcom/transsion/kolun/oxygenbus/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/a;->b:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/a;->b:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->a(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V

    return-void
.end method
