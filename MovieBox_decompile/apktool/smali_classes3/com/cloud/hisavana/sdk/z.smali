.class public abstract Lcom/cloud/hisavana/sdk/z;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/z$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/z$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/z$a;->a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
