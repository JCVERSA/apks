.class public final synthetic Lbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/apiinvoke/invoke/ApiRequest;

.field public final synthetic b:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe;->a:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    iput-object p2, p0, Lbe;->b:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    return-void
.end method


# virtual methods
.method public final response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    iget-object v0, p0, Lbe;->a:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    iget-object p0, p0, Lbe;->b:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    invoke-static {v0, p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->a(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method
