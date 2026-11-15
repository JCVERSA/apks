.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;
.super Llq0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\u000c\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0096\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;",
        "Llq0$a;",
        "<init>",
        "()V",
        "Ljava/lang/reflect/Type;",
        "returnType",
        "",
        "",
        "annotations",
        "Lru8;",
        "retrofit",
        "Llq0;",
        "get",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;",
        "Companion",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;->Companion:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Llq0$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;-><init>()V

    return-void
.end method

.method public static final create()Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;
    .locals 1

    sget-object v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;->Companion:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;->create()Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lru8;",
            ")",
            "Llq0;"
        }
    .end annotation

    const-string p0, "returnType"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "annotations"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "retrofit"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Llq0$a;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    invoke-static {p0, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of p0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p0, :cond_1

    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;

    const-class p1, Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Llq0$a;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object p1
.end method
