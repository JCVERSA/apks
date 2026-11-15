.class public final synthetic Lmg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;ZLcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg5;->a:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    iput-boolean p2, p0, Lmg5;->b:Z

    iput-object p3, p0, Lmg5;->c:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    return-void
.end method


# virtual methods
.method public final response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 2

    iget-object v0, p0, Lmg5;->a:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    iget-boolean v1, p0, Lmg5;->b:Z

    iget-object p0, p0, Lmg5;->c:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->a(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;ZLcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method
