.class public final synthetic Ll31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;->b(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
