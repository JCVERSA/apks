.class public final synthetic Lgkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->b(Landroid/content/Context;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    move-result-object p0

    return-object p0
.end method
