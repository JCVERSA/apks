.class public final synthetic Lcma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iput p2, p0, Lcma;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iget p0, p0, Lcma;->c:I

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->I(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;

    move-result-object p0

    return-object p0
.end method
