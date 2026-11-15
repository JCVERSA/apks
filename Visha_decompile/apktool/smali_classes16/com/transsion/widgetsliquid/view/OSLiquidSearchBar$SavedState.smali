.class final Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;
.super Landroid/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;",
        "Landroid/view/AbsSavedState;",
        "Landroid/os/Parcelable;",
        "superState",
        "<init>",
        "(Landroid/os/Parcelable;)V",
        "Landroid/os/Parcel;",
        "parcel",
        "(Landroid/os/Parcel;)V",
        "out",
        "",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "searchState",
        "I",
        "getSearchState",
        "()I",
        "setSearchState",
        "(I)V",
        "CREATOR",
        "a",
        "widgetsliquid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState$a;


# instance fields
.field private searchState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->CREATOR:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState$a;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->searchState:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final getSearchState()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->searchState:I

    return p0
.end method

.method public final setSearchState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->searchState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->searchState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
