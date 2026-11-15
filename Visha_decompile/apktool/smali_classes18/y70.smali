.class public final synthetic Ly70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/zhpan/bannerview/BannerViewPager;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/zhpan/bannerview/BannerViewPager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly70;->b:Lcom/zhpan/bannerview/BannerViewPager;

    iput-object p2, p0, Ly70;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly70;->b:Lcom/zhpan/bannerview/BannerViewPager;

    iget-object p0, p0, Ly70;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/zhpan/bannerview/BannerViewPager;->a(Lcom/zhpan/bannerview/BannerViewPager;Ljava/util/List;)V

    return-void
.end method
