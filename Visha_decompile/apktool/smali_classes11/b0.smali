.class public final synthetic Lb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# instance fields
.field public final synthetic a:Ls74;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls74;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0;->a:Ls74;

    iput-object p2, p0, Lb0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    iget-object v0, p0, Lb0;->a:Ls74;

    iget-object p0, p0, Lb0;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lh0;->b(Ls74;Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method
