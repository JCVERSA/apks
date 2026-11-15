.class public final Lela$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lela;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lela$b;

.field public static final b:Lela;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lela$b;

    invoke-direct {v0}, Lela$b;-><init>()V

    sput-object v0, Lela$b;->a:Lela$b;

    new-instance v0, Lela;

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Llw4;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llw4;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lela;-><init>(Llw4;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lela$b;->b:Lela;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lela;
    .locals 0

    sget-object p0, Lela$b;->b:Lela;

    return-object p0
.end method
