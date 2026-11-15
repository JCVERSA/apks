.class public final synthetic Lng5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng5;->b:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lng5;->b:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->c(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)V

    return-void
.end method
