.class public final synthetic Lcom/transsion/cloud/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->g(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method
