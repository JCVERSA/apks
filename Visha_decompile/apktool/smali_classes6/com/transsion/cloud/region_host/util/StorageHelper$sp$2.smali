.class final Lcom/transsion/cloud/region_host/util/StorageHelper$sp$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/region_host/util/StorageHelper;-><init>(Landroid/content/Context;)V
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
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


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud/region_host/util/StorageHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/region_host/util/StorageHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/region_host/util/StorageHelper$sp$2;->this$0:Lcom/transsion/cloud/region_host/util/StorageHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/transsion/cloud/region_host/util/StorageHelper$sp$2;->this$0:Lcom/transsion/cloud/region_host/util/StorageHelper;

    invoke-static {p0}, Lcom/transsion/cloud/region_host/util/StorageHelper;->a(Lcom/transsion/cloud/region_host/util/StorageHelper;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "region-host-config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud/region_host/util/StorageHelper$sp$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
