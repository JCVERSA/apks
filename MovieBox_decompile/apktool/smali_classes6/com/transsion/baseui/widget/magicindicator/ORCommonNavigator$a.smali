.class public final Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;
.super Landroid/database/DataSetObserver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

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
    iget-object v0, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->access$getMNavigatorHelper$p(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)Luy/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->access$getMAdapter$p(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)Lqj/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lxy/a;->a()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Luy/b;->m(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->access$init(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    return-void
.end method
