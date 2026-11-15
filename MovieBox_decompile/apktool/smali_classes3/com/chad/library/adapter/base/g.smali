.class public abstract Lcom/chad/library/adapter/base/g;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lq6/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ/\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JC\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018JC\u0010\u001a\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0015\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u0015\u0010!\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u001d\u0010#\u001a\u00020\u001d2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010(\u001a\u00020\u001d2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0006J\u001f\u0010)\u001a\u00020\u001d2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010,\u001a\u00020\u001d2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008.\u0010/J%\u00101\u001a\u00020\u001d2\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0016\u00a2\u0006\u0004\u00081\u00102J\u001d\u00103\u001a\u00020\u001d2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0016\u00a2\u0006\u0004\u00083\u0010*J\u0017\u00104\u001a\u00020\u001d2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00084\u00105J\u001f\u00107\u001a\u00020\u001d2\u0006\u00106\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u00087\u0010-J)\u0010:\u001a\u00020\u001d2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00032\u0008\u00109\u001a\u0004\u0018\u000108H\u0016\u00a2\u0006\u0004\u0008:\u0010;J%\u0010>\u001a\u00020\u001d2\u0006\u0010=\u001a\u00020<2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008>\u0010?J\u001d\u0010A\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0002\u00a2\u0006\u0004\u0008A\u0010BJ%\u0010D\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002\u00a2\u0006\u0004\u0008D\u0010EJ+\u0010F\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00072\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u00a2\u0006\u0004\u0008F\u0010GJ\u001d\u0010H\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0007\u00a2\u0006\u0004\u0008H\u0010IJ\u001d\u0010K\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010J\u001a\u00020\u0002\u00a2\u0006\u0004\u0008K\u0010BJ%\u0010L\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002\u00a2\u0006\u0004\u0008L\u0010EJ#\u0010M\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u00a2\u0006\u0004\u0008M\u0010NJ9\u0010O\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008O\u0010PJ9\u0010Q\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008Q\u0010PJ9\u0010R\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008R\u0010PJ9\u0010S\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008S\u0010PJ9\u0010T\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008T\u0010PJY\u0010Y\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010U\u001a\u00020\u000e2\u0008\u0008\u0002\u0010V\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\n\u0008\u0002\u0010W\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010X\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0015\u0010\\\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\\\u0010]J\u0017\u0010^\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008^\u0010\nR$\u0010c\u001a\u0012\u0012\u0004\u0012\u00020\u00070_j\u0008\u0012\u0004\u0012\u00020\u0007``8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010b\u00a8\u0006d"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/g;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lq6/b;",
        "",
        "nodeList",
        "<init>",
        "(Ljava/util/List;)V",
        "",
        "position",
        "S2",
        "(I)I",
        "R2",
        "",
        "list",
        "",
        "isExpanded",
        "I2",
        "(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;",
        "isChangeChildCollapse",
        "animate",
        "notify",
        "",
        "parentPayload",
        "Z1",
        "(IZZZLjava/lang/Object;)I",
        "isChangeChildExpand",
        "l2",
        "Lcom/chad/library/adapter/base/provider/a;",
        "provider",
        "",
        "U1",
        "(Lcom/chad/library/adapter/base/provider/a;)V",
        "T1",
        "S1",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "F1",
        "(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V",
        "type",
        "u0",
        "(I)Z",
        "q1",
        "n1",
        "(Ljava/util/Collection;)V",
        "data",
        "Q1",
        "(ILq6/b;)V",
        "R1",
        "(Lq6/b;)V",
        "newData",
        "o",
        "(ILjava/util/Collection;)V",
        "q",
        "G0",
        "(I)V",
        "index",
        "T2",
        "Ljava/lang/Runnable;",
        "commitCallback",
        "V0",
        "(Ljava/util/List;Ljava/lang/Runnable;)V",
        "Landroidx/recyclerview/widget/DiffUtil$d;",
        "diffResult",
        "T0",
        "(Landroidx/recyclerview/widget/DiffUtil$d;Ljava/util/List;)V",
        "parentNode",
        "M2",
        "(Lq6/b;Lq6/b;)V",
        "childIndex",
        "L2",
        "(Lq6/b;ILq6/b;)V",
        "K2",
        "(Lq6/b;ILjava/util/Collection;)V",
        "N2",
        "(Lq6/b;I)V",
        "childNode",
        "O2",
        "Q2",
        "P2",
        "(Lq6/b;Ljava/util/Collection;)V",
        "Y1",
        "(IZZLjava/lang/Object;)I",
        "k2",
        "E2",
        "r2",
        "f2",
        "isExpandedChild",
        "isCollapseChild",
        "expandPayload",
        "collapsePayload",
        "z2",
        "(IZZZZLjava/lang/Object;Ljava/lang/Object;)V",
        "node",
        "H2",
        "(Lq6/b;)I",
        "G2",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "G",
        "Ljava/util/HashSet;",
        "fullSpanNodeTypeSet",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final G:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/g;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/chad/library/adapter/base/g;->G:Ljava/util/HashSet;

    .line 5
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 6
    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/g;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p9, :cond_6

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, p2

    .line 10
    :goto_0
    and-int/lit8 v1, p8, 0x4

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v1, p3

    .line 18
    :goto_1
    and-int/lit8 v3, p8, 0x8

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    move v3, v2

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v3, p4

    .line 25
    :goto_2
    and-int/lit8 v4, p8, 0x10

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_3
    move v2, p5

    .line 31
    :goto_3
    and-int/lit8 v4, p8, 0x20

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    move-object v4, v5

    .line 37
    goto :goto_4

    .line 38
    :cond_4
    move-object v4, p6

    .line 39
    :goto_4
    and-int/lit8 v6, p8, 0x40

    .line 40
    .line 41
    if-eqz v6, :cond_5

    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_5
    move-object v5, p7

    .line 45
    :goto_5
    move-object p2, p0

    .line 46
    move p3, p1

    .line 47
    move p4, v0

    .line 48
    move p5, v1

    .line 49
    move p6, v3

    .line 50
    move p7, v2

    .line 51
    move-object p8, v4

    .line 52
    move-object/from16 p9, v5

    .line 53
    .line 54
    invoke-virtual/range {p2 .. p9}, Lcom/chad/library/adapter/base/g;->z2(IZZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    const-string v1, "Super calls with default arguments not supported in this target, function: expandAndCollapseOther"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public static synthetic F2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move p2, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/g;->E2(IZZLjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: expandOrCollapse"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private final I2(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lq6/b;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Lq6/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lq6/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    instance-of v2, v1, Lq6/a;

    .line 26
    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Lq6/a;

    .line 39
    .line 40
    invoke-virtual {v2}, Lq6/a;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v1}, Lq6/b;->a()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Collection;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/chad/library/adapter/base/g;->I2(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Collection;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    if-eqz p2, :cond_0

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    check-cast v1, Lq6/a;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lq6/a;->c(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v1}, Lq6/b;->a()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/util/Collection;

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/chad/library/adapter/base/g;->I2(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    return-object v0
.end method

.method static synthetic J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/g;->I2(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: flatData"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private final R2(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lq6/b;

    .line 22
    .line 23
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Collection;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of v0, p1, Lq6/a;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    check-cast v0, Lq6/a;

    .line 46
    .line 47
    invoke-virtual {v0}, Lq6/a;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    check-cast p1, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-static {p0, p1, v3, v2, v3}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v1, p1

    .line 71
    check-cast v1, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    check-cast p1, Ljava/util/Collection;

    .line 89
    .line 90
    invoke-static {p0, p1, v3, v2, v3}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move-object v1, p1

    .line 99
    check-cast v1, Ljava/util/Collection;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :cond_3
    :goto_0
    return v1
.end method

.method private final S2(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/g;->R2(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lq6/b;

    .line 35
    .line 36
    return v0
.end method

.method private final Z1(IZZZLjava/lang/Object;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lq6/b;

    .line 10
    .line 11
    instance-of v1, v0, Lq6/a;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Lq6/a;

    .line 18
    .line 19
    invoke-virtual {v1}, Lq6/a;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr p1, v3

    .line 30
    invoke-virtual {v1, v2}, Lq6/a;->c(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lq6/b;->a()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Collection;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {v0}, Lq6/b;->a()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Ljava/util/Collection;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p2, 0x0

    .line 63
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/g;->I2(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast p2, Ljava/util/Collection;

    .line 76
    .line 77
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    if-eqz p4, :cond_3

    .line 81
    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0, p1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 p1, p1, 0x1

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    return v0

    .line 97
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    return v2
.end method

.method public static synthetic a2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move p2, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/g;->Y1(IZZLjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method static synthetic b2(Lcom/chad/library/adapter/base/g;IZZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 6

    .line 1
    if-nez p7, :cond_4

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    move v2, p2

    .line 9
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    const/4 p7, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    move v3, p7

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v3, p3

    .line 17
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    move v4, p7

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v4, p4

    .line 24
    :goto_1
    and-int/lit8 p2, p6, 0x10

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    :cond_3
    move-object v5, p5

    .line 30
    move-object v0, p0

    .line 31
    move v1, p1

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->Z1(IZZZLjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public static synthetic g2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move p2, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/g;->f2(IZZLjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: collapseAndChild"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private final l2(IZZZLjava/lang/Object;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lq6/b;

    .line 10
    .line 11
    instance-of v1, v0, Lq6/a;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Lq6/a;

    .line 18
    .line 19
    invoke-virtual {v1}, Lq6/a;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, p1

    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Lq6/a;->c(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lq6/b;->a()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Collection;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    invoke-virtual {v0}, Lq6/b;->a()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Ljava/util/Collection;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p2, 0x0

    .line 64
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/g;->I2(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    add-int/2addr p1, v4

    .line 77
    check-cast p2, Ljava/util/Collection;

    .line 78
    .line 79
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    if-eqz p4, :cond_3

    .line 83
    .line 84
    if-eqz p3, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v3, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/2addr v3, v4

    .line 90
    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    return v0

    .line 98
    :cond_4
    :goto_2
    invoke-virtual {p0, v3, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    return v2
.end method

.method public static synthetic m2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move p2, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/g;->k2(IZZLjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method static synthetic n2(Lcom/chad/library/adapter/base/g;IZZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 6

    .line 1
    if-nez p7, :cond_4

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    move v2, p2

    .line 9
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    const/4 p7, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    move v3, p7

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v3, p3

    .line 17
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    move v4, p7

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v4, p4

    .line 24
    :goto_1
    and-int/lit8 p2, p6, 0x10

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    :cond_3
    move-object v5, p5

    .line 30
    move-object v0, p0

    .line 31
    move v1, p1

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->l2(IZZZLjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public static synthetic s2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move p2, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/g;->r2(IZZLjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: expandAndChild"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method


# virtual methods
.method public final B2(I)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xe

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->F2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final C2(IZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xc

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->F2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final D2(IZZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->F2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final E2(IZZLjava/lang/Object;)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lq6/b;

    .line 10
    .line 11
    instance-of v1, v0, Lq6/a;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lq6/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lq6/a;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move v2, p1

    .line 26
    move v4, p2

    .line 27
    move v5, p3

    .line 28
    move-object v6, p4

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter/base/g;->Z1(IZZZLjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    move-object v0, p0

    .line 36
    move v1, p1

    .line 37
    move v3, p2

    .line 38
    move v4, p3

    .line 39
    move-object v5, p4

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->l2(IZZZLjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/chad/library/adapter/base/provider/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Please add BaseNodeProvider, no BaseItemProvider!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public G0(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/g;->S2(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->E(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final G2(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lq6/b;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    sub-int/2addr p1, v2

    .line 17
    :goto_0
    if-ge v0, p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lq6/b;

    .line 28
    .line 29
    invoke-virtual {v3}, Lq6/b;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, v2, :cond_1

    .line 40
    .line 41
    return p1

    .line 42
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v0
.end method

.method public final H2(Lq6/b;)I
    .locals 4

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    sub-int/2addr v0, v2

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lq6/b;

    .line 32
    .line 33
    invoke-virtual {v3}, Lq6/b;->a()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, v2, :cond_0

    .line 44
    .line 45
    return v0

    .line 46
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return v1
.end method

.method public final K2(Lq6/b;ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b;",
            "I",
            "Ljava/util/Collection<",
            "+",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newData"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p2, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    instance-of v0, p1, Lq6/a;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Lq6/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lq6/a;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/g;->o(ILjava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final L2(Lq6/b;ILq6/b;)V
    .locals 1

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    instance-of v0, p1, Lq6/a;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Lq6/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lq6/a;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/g;->Q1(ILq6/b;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final M2(Lq6/b;Lq6/b;)V
    .locals 2

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    instance-of v1, p1, Lq6/a;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object v1, p1

    .line 25
    check-cast v1, Lq6/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lq6/a;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr p1, v0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/g;->Q1(ILq6/b;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final N2(Lq6/b;I)V
    .locals 2

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lt p2, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    instance-of v1, p1, Lq6/a;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move-object v1, p1

    .line 24
    check-cast v1, Lq6/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Lq6/a;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    add-int/2addr p1, p2

    .line 47
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->C0(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lq6/b;

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final O2(Lq6/b;Lq6/b;)V
    .locals 2

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "childNode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    instance-of v1, p1, Lq6/a;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast p1, Lq6/a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lq6/a;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->D0(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public bridge synthetic P0(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lq6/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/g;->T2(ILq6/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final P2(Lq6/b;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b;",
            "Ljava/util/Collection<",
            "+",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    instance-of v1, p1, Lq6/a;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    check-cast v1, Lq6/a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lq6/a;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/g;->R2(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {p0, p2, v2, v0, v2}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    move-object v2, p2

    .line 68
    check-cast v2, Ljava/util/Collection;

    .line 69
    .line 70
    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/2addr p1, v0

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v1, v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method public Q1(ILq6/b;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Lq6/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p2, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/g;->o(ILjava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Q2(Lq6/b;ILq6/b;)V
    .locals 2

    .line 1
    const-string v0, "parentNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lq6/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lt p2, v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    instance-of v1, p1, Lq6/a;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Lq6/a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lq6/a;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    add-int/2addr p1, p2

    .line 52
    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/g;->T2(ILq6/b;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public R1(Lq6/b;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Lq6/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->q(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final S1(Lcom/chad/library/adapter/base/provider/a;)V
    .locals 1

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->T1(Lcom/chad/library/adapter/base/provider/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public T0(Landroidx/recyclerview/widget/DiffUtil$d;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$d;",
            "Ljava/util/List<",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "diffResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/g;->q1(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    check-cast p2, Ljava/util/Collection;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p0, p2, v1, v0, v1}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->T0(Landroidx/recyclerview/widget/DiffUtil$d;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final T1(Lcom/chad/library/adapter/base/provider/a;)V
    .locals 2

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/chad/library/adapter/base/g;->G:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->l()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public T2(ILq6/b;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/g;->S2(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Lq6/b;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object p2, v1, v2

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {p0, p2, v1, v2, v1}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v2, p2

    .line 31
    check-cast v2, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-interface {v1, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    add-int/2addr p1, p2

    .line 47
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v1, p1

    .line 56
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr p1, v0

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final U1(Lcom/chad/library/adapter/base/provider/a;)V
    .locals 1

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public V0(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq6/b;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->q1(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, p1, v1, v0, v1}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->V0(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final V1(I)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xe

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->a2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final W1(IZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xc

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->a2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final X1(IZZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->a2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final Y1(IZZLjava/lang/Object;)I
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->Z1(IZZZLjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final c2(I)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xe

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->g2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final d2(IZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xc

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->g2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final e2(IZZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->g2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final f2(IZZLjava/lang/Object;)I
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v2, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->Z1(IZZZLjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final h2(I)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xe

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->m2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final i2(IZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xc

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->m2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final j2(IZZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->m2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final k2(IZZLjava/lang/Object;)I
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->l2(IZZZLjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public bridge synthetic n(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lq6/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/g;->Q1(ILq6/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n1(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, p1, v1, v0, v1}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public o(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "newData"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {p0, p2, v0, v1, v0}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->o(ILjava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o2(I)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xe

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->s2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lq6/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->R1(Lq6/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p2(IZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0xc

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->s2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public q(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "newData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public q1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    check-cast p1, Ljava/util/Collection;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, p1, v1, v0, v1}, Lcom/chad/library/adapter/base/g;->J2(Lcom/chad/library/adapter/base/g;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final q2(IZZ)I
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/g;->s2(Lcom/chad/library/adapter/base/g;IZZLjava/lang/Object;ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final r2(IZZLjava/lang/Object;)I
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v2, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->l2(IZZZLjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final t2(I)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v8, 0x7e

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/g;->A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected u0(I)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->u0(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/chad/library/adapter/base/g;->G:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method public final u2(IZ)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v8, 0x7c

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/g;->A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v2(IZZ)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v8, 0x78

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move v3, p3

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/g;->A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w2(IZZZ)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v8, 0x70

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/g;->A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final x2(IZZZZ)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v8, 0x60

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/g;->A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final y2(IZZZZLjava/lang/Object;)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v8, 0x40

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/g;->A2(Lcom/chad/library/adapter/base/g;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final z2(IZZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move/from16 v3, p4

    .line 5
    .line 6
    move/from16 v4, p5

    .line 7
    .line 8
    move-object/from16 v5, p6

    .line 9
    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/g;->l2(IZZZLjava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/g;->G2(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, -0x1

    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    move v4, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 28
    .line 29
    :goto_0
    sub-int v5, p1, v4

    .line 30
    .line 31
    if-lez v5, :cond_3

    .line 32
    .line 33
    move v11, v4

    .line 34
    move v4, p1

    .line 35
    :cond_2
    move-object v5, p0

    .line 36
    move v6, v11

    .line 37
    move v7, p3

    .line 38
    move/from16 v8, p4

    .line 39
    .line 40
    move/from16 v9, p5

    .line 41
    .line 42
    move-object/from16 v10, p7

    .line 43
    .line 44
    invoke-direct/range {v5 .. v10}, Lcom/chad/library/adapter/base/g;->Z1(IZZZLjava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/lit8 v11, v11, 0x1

    .line 49
    .line 50
    sub-int/2addr v4, v5

    .line 51
    if-lt v11, v4, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v4, p1

    .line 55
    :goto_1
    if-ne v1, v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lq6/b;

    .line 77
    .line 78
    invoke-virtual {v3}, Lq6/b;->a()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    :cond_5
    add-int/2addr v1, v2

    .line 89
    add-int/2addr v1, v0

    .line 90
    :goto_2
    add-int/2addr v4, v0

    .line 91
    if-ge v4, v1, :cond_6

    .line 92
    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    move v0, v4

    .line 96
    :goto_3
    if-gt v0, v1, :cond_6

    .line 97
    .line 98
    move-object v2, p0

    .line 99
    move v3, v0

    .line 100
    move v4, p3

    .line 101
    move/from16 v5, p4

    .line 102
    .line 103
    move/from16 v6, p5

    .line 104
    .line 105
    move-object/from16 v7, p7

    .line 106
    .line 107
    invoke-direct/range {v2 .. v7}, Lcom/chad/library/adapter/base/g;->Z1(IZZZLjava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    .line 113
    sub-int/2addr v1, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    return-void
.end method
