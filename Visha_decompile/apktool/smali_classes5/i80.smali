.class public final synthetic Li80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li80;->b:Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Li80;->b:Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;->a(Lcom/transsion/apiinvoke/invoke/connect/BaseAPIConnection;)V

    return-void
.end method
