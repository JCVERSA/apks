.class public Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;
    .locals 1

    new-instance p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;-><init>(Landroid/os/Parcel;Lsi3;)V

    return-object p0
.end method

.method public b(I)[Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;
    .locals 0

    new-array p0, p1, [Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState$a;->a(Landroid/os/Parcel;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState$a;->b(I)[Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;

    move-result-object p0

    return-object p0
.end method
