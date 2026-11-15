.class Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager$InterceptorManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptorManagerHolder"
.end annotation


# static fields
.field private static final holder:Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager$InterceptorManagerHolder;->holder:Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager$InterceptorManagerHolder;->holder:Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;

    return-object v0
.end method
