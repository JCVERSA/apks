.class public Lcom/transsion/apiinvoke/invoke/ApiMethodException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final API_CLASS_NOT_FOUND:I = 0x2

.field public static final API_INSTANCE_API_OBJ_ERROR:I = 0x4

.field public static final API_INVOKE_METHOD_ERROR:I = 0x5

.field public static final API_NOT_REGISTER:I = 0x3

.field public static final METHOD_ERROR_UNKNOW:I = -0x1

.field public static final METHOD_INVOKE_TYPE_ERROR:I = 0x1

.field public static final METHOD_NOT_FOUND:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvokeException code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorMsg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static apiNotRegister(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " api not register error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static instanceApiObjectError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " api not register error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " className "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static invokeMethodError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " api invoke api error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " method "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onApiClassNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " invoke api class not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onErrorUnKnow(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " invoke error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onMethodInvokeTypeError(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " invoke method type error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onMethodNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " invoke method not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
