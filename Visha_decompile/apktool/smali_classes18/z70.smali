.class public final synthetic Lz70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/zhpan/bannerview/BannerViewPager;


# direct methods
.method public synthetic constructor <init>(Lcom/zhpan/bannerview/BannerViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz70;->b:Lcom/zhpan/bannerview/BannerViewPager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lz70;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {p0}, Lcom/zhpan/bannerview/BannerViewPager;->b(Lcom/zhpan/bannerview/BannerViewPager;)V

    return-void
.end method
