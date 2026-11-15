.class public final synthetic Llj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/convert/ConvertingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj1;->b:Lcom/transsion/playercommon/convert/ConvertingTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Llj1;->b:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-static {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->c(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    return-void
.end method
