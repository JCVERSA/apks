.class public final synthetic Lxo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/LockScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo5;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxo5;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->v0(Lcom/transsion/audio/activities/LockScreenActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
