.class public final Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010 \n\u0002\u0008\t\u0018\u0000  2\u00020\u0001:\u0001!B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0019\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0002\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "",
        "id",
        "",
        "name",
        "(ILjava/lang/String;)V",
        "selectedIndex",
        "Ljava/lang/Integer;",
        "getSelectedIndex",
        "()Ljava/lang/Integer;",
        "setSelectedIndex",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/String;",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "I",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "",
        "options",
        "Ljava/util/List;",
        "getOptions",
        "()Ljava/util/List;",
        "setOptions",
        "(Ljava/util/List;)V",
        "Companion",
        "a",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;

.field private static final mmkv$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/tencent/mmkv/MMKV;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "labelId"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "labelName"
    .end annotation
.end field

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;",
            ">;"
        }
    .end annotation
.end field

.field private selectedIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->Companion:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;

    .line 8
    .line 9
    new-instance v0, Lov/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lov/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->mmkv$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->name:Ljava/lang/String;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->options:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->name:Ljava/lang/String;

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->options:Ljava/util/List;

    .line 7
    iput p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->id:I

    .line 8
    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->mmkv_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getMmkv$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->mmkv$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final mmkv_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    const-string v0, "feedback_mmkv"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mmkvWithID(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->options:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectedIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->selectedIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->name:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->options:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setSelectedIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->selectedIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
