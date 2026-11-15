.class public final synthetic Lod0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod0;->b:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lod0;->b:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
