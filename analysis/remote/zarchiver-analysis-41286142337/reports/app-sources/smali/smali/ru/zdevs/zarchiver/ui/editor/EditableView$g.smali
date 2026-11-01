.class public final Lru/zdevs/zarchiver/ui/editor/EditableView$g;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/EditableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/zdevs/zarchiver/ui/editor/EditableView$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lru/zdevs/zarchiver/ui/editor/b;

.field public final b:Lru/zdevs/zarchiver/ui/editor/b$a;

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/zdevs/zarchiver/ui/editor/EditableView$g$a;

    invoke-direct {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$g$a;-><init>()V

    sput-object v0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 14

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->d:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/b$a;

    invoke-direct {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b$a;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 8
    rem-int/lit8 v7, v6, 0x2

    sub-int v8, v6, v7

    .line 9
    new-instance v9, Lru/zdevs/zarchiver/ui/editor/b$d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-direct {v9, v6, v10}, Lru/zdevs/zarchiver/ui/editor/b$d;-><init>(II)V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11
    iget-object v12, v9, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    int-to-char v13, v11

    aput-char v13, v12, v10

    add-int/lit8 v13, v10, 0x1

    shr-int/lit8 v11, v11, 0x10

    int-to-char v11, v11

    .line 12
    aput-char v11, v12, v13

    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_0
    if-ne v7, v5, :cond_1

    .line 13
    iget-object v5, v9, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 14
    :cond_1
    iput v6, v9, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 15
    iget-object v5, v1, Lru/zdevs/zarchiver/ui/editor/b$a;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iput v4, v1, Lru/zdevs/zarchiver/ui/editor/b$a;->c:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v3, v1, Lru/zdevs/zarchiver/ui/editor/b$a;->b:[I

    aput v0, v3, v2

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aput p1, v3, v5

    .line 20
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->b:Lru/zdevs/zarchiver/ui/editor/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SavedState"

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->c:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->d:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->a:Lru/zdevs/zarchiver/ui/editor/b;

    .line 15
    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    iget-object v0, p2, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p2, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 45
    .line 46
    iget v4, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 47
    .line 48
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget v4, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget v4, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 57
    .line 58
    rem-int/lit8 v5, v4, 0x2

    .line 59
    .line 60
    sub-int/2addr v4, v5

    .line 61
    :goto_1
    if-ge v3, v4, :cond_1

    .line 62
    .line 63
    iget-object v6, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 64
    .line 65
    aget-char v7, v6, v3

    .line 66
    .line 67
    add-int/lit8 v8, v3, 0x1

    .line 68
    .line 69
    aget-char v6, v6, v8

    .line 70
    .line 71
    shl-int/lit8 v6, v6, 0x10

    .line 72
    .line 73
    or-int/2addr v6, v7

    .line 74
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    if-ne v5, v2, :cond_0

    .line 81
    .line 82
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 83
    .line 84
    aget-char v1, v1, v4

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p2, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 91
    .line 92
    aget v0, v0, v3

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p2, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 98
    .line 99
    aget v0, v0, v2

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    monitor-exit p2

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p2

    .line 108
    goto :goto_3

    .line 109
    :goto_2
    throw p1

    .line 110
    :goto_3
    goto :goto_2
.end method
