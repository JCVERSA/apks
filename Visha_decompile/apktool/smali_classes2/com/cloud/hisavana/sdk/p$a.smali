.class public final Lcom/cloud/hisavana/sdk/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/hisavana/sdk/p;
    .locals 7

    new-instance p0, Lcom/cloud/hisavana/sdk/p;

    sget-object v3, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p$b;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v1, 0x178d

    const-string v2, "ExoPlayer is not available, video ad skipped"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/p;-><init>(ILjava/lang/String;Lcom/cloud/hisavana/sdk/p$b;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
