.class public final Ltp3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp3;
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
    invoke-direct {p0}, Ltp3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Ltp3;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Ltp3$c;->d:Ltp3$c;

    goto :goto_0

    :cond_0
    sget-object p0, Ltp3$b;->d:Ltp3$b;

    :goto_0
    const-string p1, "null cannot be cast to non-null type com.yandex.div.internal.template.Field<T of com.yandex.div.internal.template.Field.Companion.nullField>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
