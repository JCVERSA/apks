.class public final synthetic Llma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->d(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;

    move-result-object p0

    return-object p0
.end method
