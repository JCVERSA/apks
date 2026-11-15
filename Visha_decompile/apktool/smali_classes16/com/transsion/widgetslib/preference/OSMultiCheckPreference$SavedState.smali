.class public Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field values:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState$a;

    invoke-direct {v0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState$a;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;->values:[Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
