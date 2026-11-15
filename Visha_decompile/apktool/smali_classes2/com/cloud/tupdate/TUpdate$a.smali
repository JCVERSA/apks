.class public final Lcom/cloud/tupdate/TUpdate$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/TUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tupdate/TUpdate$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tupdate/TUpdate$a;->b()Lcom/cloud/tupdate/TUpdate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tupdate/TUpdate;->b()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/cloud/tupdate/TUpdate;
    .locals 0

    invoke-static {}, Lcom/cloud/tupdate/TUpdate;->a()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tupdate/TUpdate;

    return-object p0
.end method

.method public final c(Landroid/content/Context;)Lxgb$a;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxgb$a;

    invoke-direct {p0, p1}, Lxgb$a;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
