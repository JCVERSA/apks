.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "source.java"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "PolylineOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/PolylineOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getColor"
        id = 0x4
    .end annotation
.end field

.field private width:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWidth"
        id = 0x3
    .end annotation
.end field

.field private zzcs:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getZIndex"
        id = 0x5
    .end annotation
.end field

.field private zzct:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isVisible"
        id = 0x6
    .end annotation
.end field

.field private zzcu:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isClickable"
        id = 0x8
    .end annotation
.end field

.field private final zzdx:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPoints"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private zzdz:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isGeodesic"
        id = 0x7
    .end annotation
.end field

.field private zzec:Lcom/google/android/gms/maps/model/Cap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStartCap"
        id = 0x9
    .end annotation
.end field

.field private zzed:Lcom/google/android/gms/maps/model/Cap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEndCap"
        id = 0xa
    .end annotation
.end field

.field private zzee:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getJointType"
        id = 0xb
    .end annotation
.end field

.field private zzef:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPattern"
        id = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/zzl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->width:F

    const/high16 v0, -0x1000000

    .line 3
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->color:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcs:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzct:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdz:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcu:Z

    .line 8
    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzec:Lcom/google/android/gms/maps/model/Cap;

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzed:Lcom/google/android/gms/maps/model/Cap;

    .line 10
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzee:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzef:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdx:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;FIFZZZLcom/google/android/gms/maps/model/Cap;Lcom/google/android/gms/maps/model/Cap;ILjava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/maps/model/Cap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/maps/model/Cap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "FIFZZZ",
            "Lcom/google/android/gms/maps/model/Cap;",
            "Lcom/google/android/gms/maps/model/Cap;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 14
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->width:F

    const/high16 v0, -0x1000000

    .line 15
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->color:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcs:F

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzct:Z

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdz:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcu:Z

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzec:Lcom/google/android/gms/maps/model/Cap;

    .line 21
    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzed:Lcom/google/android/gms/maps/model/Cap;

    .line 22
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzee:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzef:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdx:Ljava/util/List;

    .line 25
    iput p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->width:F

    .line 26
    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->color:I

    .line 27
    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcs:F

    .line 28
    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzct:Z

    .line 29
    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdz:Z

    .line 30
    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcu:Z

    if-eqz p8, :cond_0

    .line 31
    iput-object p8, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzec:Lcom/google/android/gms/maps/model/Cap;

    :cond_0
    if-eqz p9, :cond_1

    .line 32
    iput-object p9, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzed:Lcom/google/android/gms/maps/model/Cap;

    .line 33
    :cond_1
    iput p10, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzee:I

    .line 34
    iput-object p11, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzef:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdx:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdx:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdx:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p0
.end method

.method public final clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcu:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->color:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final endCap(Lcom/google/android/gms/maps/model/Cap;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1
    .param p1    # Lcom/google/android/gms/maps/model/Cap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "endCap must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzed:Lcom/google/android/gms/maps/model/Cap;

    .line 10
    .line 11
    return-object p0
.end method

.method public final geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdz:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->color:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEndCap()Lcom/google/android/gms/maps/model/Cap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzed:Lcom/google/android/gms/maps/model/Cap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJointType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzee:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPattern()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzef:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdx:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartCap()Lcom/google/android/gms/maps/model/Cap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzec:Lcom/google/android/gms/maps/model/Cap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->width:F

    .line 2
    .line 3
    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcs:F

    .line 2
    .line 3
    return v0
.end method

.method public final isClickable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcu:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzdz:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzct:Z

    .line 2
    .line 3
    return v0
.end method

.method public final jointType(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzee:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzef:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final startCap(Lcom/google/android/gms/maps/model/Cap;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1
    .param p1    # Lcom/google/android/gms/maps/model/Cap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "startCap must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzec:Lcom/google/android/gms/maps/model/Cap;

    .line 10
    .line 11
    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzct:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final width(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->width:F

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getZIndex()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isVisible()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isGeodesic()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isClickable()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x9

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getStartCap()Lcom/google/android/gms/maps/model/Cap;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0xa

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getEndCap()Lcom/google/android/gms/maps/model/Cap;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 79
    .line 80
    .line 81
    const/16 p2, 0xb

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getJointType()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 88
    .line 89
    .line 90
    const/16 p2, 0xc

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getPattern()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzcs:F

    .line 2
    .line 3
    return-object p0
.end method
