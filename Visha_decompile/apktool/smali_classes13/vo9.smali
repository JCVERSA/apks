.class public final synthetic Lvo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;

    iput-object p2, p0, Lvo9;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;

    iget-object p0, p0, Lvo9;->c:Landroid/net/Uri;

    check-cast p1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->c(Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
