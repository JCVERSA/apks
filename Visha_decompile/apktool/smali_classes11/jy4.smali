.class public final synthetic Ljy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy4;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljy4;->b:Landroid/content/Context;

    check-cast p1, Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/gallery/ImageViewModel;->d(Landroid/content/Context;Lcom/transsion/playercommon/gallery/ImageViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
