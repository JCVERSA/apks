.class public final Ltp3$e;
.super Ltp3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ltp3;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Ltp3$e;->d:Ljava/lang/Object;

    return-void
.end method
