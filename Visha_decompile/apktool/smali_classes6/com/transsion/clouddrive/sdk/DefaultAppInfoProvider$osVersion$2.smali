.class final Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;

    invoke-direct {v0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;-><init>()V

    sput-object v0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;->INSTANCE:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 0

    .line 2
    sget-object p0, Lxs7;->a:Lxs7;

    invoke-virtual {p0}, Lxs7;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
