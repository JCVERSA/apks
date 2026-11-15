.class public final Lkotlin/reflect/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/a;
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
    invoke-direct {p0}, Lkotlin/reflect/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/a;
    .locals 0

    invoke-static {}, Lkotlin/reflect/a;->a()Lkotlin/reflect/a;

    move-result-object p0

    return-object p0
.end method
