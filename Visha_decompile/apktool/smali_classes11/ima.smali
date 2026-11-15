.class public final synthetic Lima;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lima;->b:I

    iput-object p2, p0, Lima;->c:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lima;->b:I

    iget-object p0, p0, Lima;->c:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s(ILcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;

    move-result-object p0

    return-object p0
.end method
