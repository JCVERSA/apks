.class public final Ltp3$c;
.super Ltp3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Ltp3$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltp3$c;

    invoke-direct {v0}, Ltp3$c;-><init>()V

    sput-object v0, Ltp3$c;->d:Ltp3$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Ltp3;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
