.class public final Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;
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
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;
    .locals 0

    new-array p0, p1, [Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState$a;->a(Landroid/os/Parcel;)Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState$a;->b(I)[Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;

    move-result-object p0

    return-object p0
.end method
