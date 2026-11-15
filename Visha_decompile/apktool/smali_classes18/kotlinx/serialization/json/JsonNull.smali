.class public final Lkotlinx/serialization/json/JsonNull;
.super Lkotlinx/serialization/json/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u000b\u001a\u00020\u00078\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0008\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonNull;",
        "Lkotlinx/serialization/json/c;",
        "<init>",
        "()V",
        "Lef5;",
        "serializer",
        "()Lef5;",
        "",
        "b",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "content",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lld9;
    with = Lcb5;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNull;

.field public static final b:Ljava/lang/String;

.field public static final synthetic c:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/JsonNull;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNull;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    const-string v0, "null"

    sput-object v0, Lkotlinx/serialization/json/JsonNull;->b:Ljava/lang/String;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lkotlinx/serialization/json/JsonNull$1;->INSTANCE:Lkotlinx/serialization/json/JsonNull$1;

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonNull;->c:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic c()Lef5;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef5;

    return-object p0
.end method

.method public final serializer()Lef5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lef5;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonNull;->c()Lef5;

    move-result-object p0

    return-object p0
.end method
