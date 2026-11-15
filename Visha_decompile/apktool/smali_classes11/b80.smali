.class public final synthetic Lb80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb80;->b:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    iput-object p2, p0, Lb80;->c:Ljava/util/List;

    iput-object p3, p0, Lb80;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb80;->b:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    iget-object v1, p0, Lb80;->c:Ljava/util/List;

    iget-object p0, p0, Lb80;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
