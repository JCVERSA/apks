.class Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;
.super Landroid/database/DataSetObserver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;->a:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;->a:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Luy/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;->a:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 8
    .line 9
    invoke-static {v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lxy/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lxy/a;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Luy/b;->m(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;->a:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 21
    .line 22
    invoke-static {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    return-void
.end method
