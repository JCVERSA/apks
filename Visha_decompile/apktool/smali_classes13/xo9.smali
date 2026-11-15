.class public final synthetic Lxo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    check-cast p1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
