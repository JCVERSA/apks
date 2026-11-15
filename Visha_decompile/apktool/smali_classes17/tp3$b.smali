.class public final Ltp3$b;
.super Ltp3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Ltp3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltp3$b;

    invoke-direct {v0}, Ltp3$b;-><init>()V

    sput-object v0, Ltp3$b;->d:Ltp3$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Ltp3;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
