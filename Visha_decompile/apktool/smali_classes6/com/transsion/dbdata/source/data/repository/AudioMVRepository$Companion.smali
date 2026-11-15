.class public final Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\n\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "getInstance",
        "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "manager$delegate",
        "Lyi5;",
        "getManager",
        "manager",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
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
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;-><init>()V

    return-void
.end method

.method private final getManager()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->access$getManager$delegate$cp()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    return-object p0
.end method


# virtual methods
.method public final getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;->getManager()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    return-object p0
.end method
