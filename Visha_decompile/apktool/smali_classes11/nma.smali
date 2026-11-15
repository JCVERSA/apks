.class public final synthetic Lnma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iput p2, p0, Lnma;->c:I

    iput-object p3, p0, Lnma;->d:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iget v1, p0, Lnma;->c:I

    iget-object p0, p0, Lnma;->d:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;

    move-result-object p0

    return-object p0
.end method
