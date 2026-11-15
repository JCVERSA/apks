.class public final synthetic Ldo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

.field public final synthetic c:Lcom/transsion/tools/beans/ThemeImage;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/beans/ThemeImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iput-object p2, p0, Ldo9;->c:Lcom/transsion/tools/beans/ThemeImage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget-object p0, p0, Ldo9;->c:Lcom/transsion/tools/beans/ThemeImage;

    check-cast p1, Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/beans/ThemeImage;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
