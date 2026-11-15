.class final Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud_drive/base/internal/ServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lgu9;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Lgu9;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;->INSTANCE:Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lgu9;
    .locals 1

    .line 2
    sget-object p0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->a:Lcom/transsion/cloud_drive/base/network/RetrofitInstance;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->h()Lru8;

    move-result-object p0

    const-class v0, Lgu9;

    invoke-virtual {p0, v0}, Lru8;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgu9;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;->invoke()Lgu9;

    move-result-object p0

    return-object p0
.end method
