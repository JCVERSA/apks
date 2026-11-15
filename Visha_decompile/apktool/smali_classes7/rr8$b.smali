.class public Lrr8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$GslbInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrr8;->n(Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/CountryInfoBean;

.field public final synthetic b:Lrr8;


# direct methods
.method public constructor <init>(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;)V
    .locals 0

    iput-object p1, p0, Lrr8$b;->b:Lrr8;

    iput-object p2, p0, Lrr8$b;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lrr8$b;->b:Lrr8;

    iget-object p0, p0, Lrr8$b;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-static {p1, p0}, Lrr8;->k(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    return-void
.end method
