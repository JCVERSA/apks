.class public final Lkotlin/uuid/Uuid$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/uuid/Uuid;
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
    invoke-direct {p0}, Lkotlin/uuid/Uuid$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lkotlin/uuid/Uuid;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid$a;->b()Lkotlin/uuid/Uuid;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/uuid/Uuid;

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    :goto_0
    return-object p0
.end method

.method public final b()Lkotlin/uuid/Uuid;
    .locals 0

    invoke-static {}, Lkotlin/uuid/Uuid;->access$getNIL$cp()Lkotlin/uuid/Uuid;

    move-result-object p0

    return-object p0
.end method
