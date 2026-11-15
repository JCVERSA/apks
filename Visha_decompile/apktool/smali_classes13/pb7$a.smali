.class public final Lpb7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpb7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpb7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lpb7;
    .locals 0

    invoke-virtual {p0}, Lpb7$a;->b()Lpb7;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lpb7;
    .locals 0

    invoke-static {}, Lpb7;->b()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb7;

    return-object p0
.end method
