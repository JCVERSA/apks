.class public Lcom/transsion/tools/beans/ThemeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/beans/ThemeBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/transsion/tools/beans/ThemeBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/transsion/tools/beans/ThemeBean$DataBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/beans/ThemeBean;->data:Lcom/transsion/tools/beans/ThemeBean$DataBean;

    return-object p0
.end method

.method public setData(Lcom/transsion/tools/beans/ThemeBean$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/beans/ThemeBean;->data:Lcom/transsion/tools/beans/ThemeBean$DataBean;

    return-void
.end method
