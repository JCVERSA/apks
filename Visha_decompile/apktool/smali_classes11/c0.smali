.class public final synthetic Lc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/apiinvoke/invoke/ApiResponse;

.field public final synthetic c:Lh0;

.field public final synthetic d:Le74;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lh0;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0;->b:Lcom/transsion/apiinvoke/invoke/ApiResponse;

    iput-object p2, p0, Lc0;->c:Lh0;

    iput-object p3, p0, Lc0;->d:Le74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc0;->b:Lcom/transsion/apiinvoke/invoke/ApiResponse;

    iget-object v1, p0, Lc0;->c:Lh0;

    iget-object p0, p0, Lc0;->d:Le74;

    invoke-static {v0, v1, p0}, Lh0;->f(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lh0;Le74;)V

    return-void
.end method
