.class public final synthetic Le0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/apiinvoke/invoke/ApiResponse;

.field public final synthetic c:Ls74;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;Ls74;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0;->b:Lcom/transsion/apiinvoke/invoke/ApiResponse;

    iput-object p2, p0, Le0;->c:Ls74;

    iput-object p3, p0, Le0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le0;->b:Lcom/transsion/apiinvoke/invoke/ApiResponse;

    iget-object v1, p0, Le0;->c:Ls74;

    iget-object p0, p0, Le0;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lh0;->j(Lcom/transsion/apiinvoke/invoke/ApiResponse;Ls74;Ljava/lang/String;)V

    return-void
.end method
