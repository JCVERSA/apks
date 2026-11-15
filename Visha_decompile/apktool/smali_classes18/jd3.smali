.class public abstract Ljd3;
.super Lpf1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljd3$a;,
        Ljd3$b;
    }
.end annotation


# static fields
.field public static final b:Ljd3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljd3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljd3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ljd3;->b:Ljd3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lzfb;->a:Lzfb;

    invoke-direct {p0, v0}, Lpf1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljd3;->c()Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public c()Lzfb;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
