.class public final synthetic Lf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# instance fields
.field public final synthetic a:Lh0;

.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Lh0;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0;->a:Lh0;

    iput-object p2, p0, Lf0;->b:Le74;

    return-void
.end method


# virtual methods
.method public final response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    iget-object v0, p0, Lf0;->a:Lh0;

    iget-object p0, p0, Lf0;->b:Le74;

    invoke-static {v0, p0, p1}, Lh0;->d(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method
