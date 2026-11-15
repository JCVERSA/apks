.class public final synthetic Lv80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lv80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->O(Lcom/transsion/playercommon/activities/BaseActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method
