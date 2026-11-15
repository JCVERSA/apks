.class public final synthetic Lkg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkg0;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iput-object p2, p0, Lkg0;->c:Ljava/lang/String;

    iput-object p3, p0, Lkg0;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkg0;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lkg0;->c:Ljava/lang/String;

    iget-object p0, p0, Lkg0;->d:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
