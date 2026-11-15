.class public final synthetic Lv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8;->a:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lv8;->a:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->g(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
