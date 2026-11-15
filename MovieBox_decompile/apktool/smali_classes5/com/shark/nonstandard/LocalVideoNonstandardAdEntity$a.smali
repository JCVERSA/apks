.class public final Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;
    .locals 1

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;-><init>(Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b(I)[Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity$a;->a(Landroid/os/Parcel;)Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity$a;->b(I)[Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
